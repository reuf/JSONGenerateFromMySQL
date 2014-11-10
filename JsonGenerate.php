<?php
$servername = "localhost";
$username = "root";
$password = "root";

//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password)
 or die("Unable to connect to MySQL");
echo "Connected to MySQL<br>";
//select a database to work with
$selected = mysql_select_db("test2",$dbhandle)
  or die("Could not select test");
$allMediaItems = array();
$fetchMedia = mysql_query("SELECT * FROM media");
while ($row = mysql_fetch_array($fetchMedia, MYSQL_ASSOC)) {

	$singleMedia['id'] = $row['id'];
	$singleMedia['seriesId'] = $row['seriesId'];
	$singleMedia['title'] = $row['title'];
	$singleMedia['added'] = $row['added'];
	$singleMedia['updated'] = $row['updated'];
	$singleMedia['downloads'] = $row['downloads'];
	$singleMedia['rating'] = $row['rating'];
	$singleMedia['ratings'] = $row['ratings'];
	$singleMedia['isLinkedMedia'] = $row['isLinkedMedia'];
	$singleMedia['link'] = $row['link'];
	$singleMedia['ext'] = $row['ext'];
	$singleMedia['comments'] = $row['comments'];
	$singleMedia['duration'] = $row['duration'];
	$singleMedia['size'] = $row['size'];
	$singleMedia['mimeType'] = $row['mimeType'];
	$singleMedia['hasTranscript'] = $row['hasTranscript'];
	$singleMedia['transcriptExt'] = $row['transcriptExt'];
	$singleMedia['transcriptSize'] = $row['transcriptSize'];
	$singleMedia['transcriptMimeType'] = $row['transcriptMimeType'];
	$singleMedia['additionalFiles'] = $row['additionalFiles'];
	$singleMedia['summary'] = $row['summary'];
	$singleMedia['language'] = $row['language'];
	$singleMedia['hasCaptions'] = $row['hasCaptions'];
	$singleMedia['captionsExt'] = $row['captionsExt'];
	$singleMedia['captionsRating'] = $row['captionsRating'];
	$singleMedia['captionsRatings'] = $row['captionsRatings'];
	$singleMedia['pulseId'] = $row['pulseId'];
	$singleMedia['description'] = $row['description'];

	//-----------------
    $authorID = $row['author'];
    $fetchAuthor = mysql_query("SELECT * FROM author WHERE id='" . mysql_real_escape_string($authorID)."'");
    $author = array();
    while ($row_author = mysql_fetch_array($fetchAuthor, MYSQL_ASSOC)) {
	    $author['name'] = $row_author['name'];
	    $author['email'] = $row_author['email'];
	}
	$singleMedia['author'] = $author;
	//-----------------

	//-----------------
	$mediaID = $row['id'];
    $fetchAdditionalFile = mysql_query("SELECT * FROM additionalfile WHERE mediaid='" . mysql_real_escape_string($mediaID)."'");
    $AdditionalFiles = array();
    while ($row_1 = mysql_fetch_array($fetchAdditionalFile, MYSQL_ASSOC)) {
	    $oneAdditionalFile['title'] = $row_1['title'];
	    $oneAdditionalFile['ext'] = $row_1['ext'];
	    $oneAdditionalFile['size'] = $row_1['size'];
	    $oneAdditionalFile['mimeType'] = $row_1['mimeType'];
	    array_push($AdditionalFiles,$oneAdditionalFile);
	}
	$singleMedia['additionalFiles'] = $AdditionalFiles;
	//-----------------

    //-----------------
    $mediaID = $row['id'];
    $fetchMediaTag = mysql_query("SELECT * FROM tags_media WHERE mediaid='" . mysql_real_escape_string($mediaID)."'");
    $allTags = array();
    while ($row_1_1_2 = mysql_fetch_array($fetchMediaTag, MYSQL_ASSOC)) {
	    $fetchTag = mysql_query("SELECT * FROM tags WHERE id='" . mysql_real_escape_string($row_1_1_2['tagid'])."'");
	    while ($row_1_1 = mysql_fetch_array($fetchTag, MYSQL_ASSOC)) {
		    $singleTag['tag'] = $row_1_1['tag'];
		    $singleTag['usageCount'] = $row_1_1['usageCount'];
	    	array_push($allTags,$singleTag);
		}
	}
	$singleMedia['tags'] = $allTags;
	//-----------------

    array_push($allMediaItems, $singleMedia);

    //-----------------
    $mediaID = $row['id'];
    $fetchComment = mysql_query("SELECT * FROM comment WHERE mediaid='" . mysql_real_escape_string($mediaID)."'");

    $allComments = array();
    while ($row_1_2 = mysql_fetch_array($fetchComment, MYSQL_ASSOC)) {

		$singleComment['title'] = $row_1_2['title'];
		$singleComment['comment'] = $row_1_2['comment'];
		$singleComment['added'] = $row_1_2['added'];
		$singleComment['mediaID'] = $row_1_2['mediaID'];
		//-----------------
	    $authorIDc = $row_1_2['author'];
	    $fetchAuthorC = mysql_query("SELECT * FROM author WHERE id='" . mysql_real_escape_string($authorIDc)."'");
	    $authorC = array();
	    while ($row_authorC = mysql_fetch_array($fetchAuthorC, MYSQL_ASSOC)) {
		    $authorC['name'] = $row_authorC['name'];
		    $authorC['email'] = $row_authorC['email'];
		}
		$singleComment['author'] = $authorC;
		//-----------------
    	array_push($allComments,$singleComment);
	}
	$fp2 = fopen('./JSON/comment_'.$mediaID.'.json', 'w');
	fwrite($fp2, json_encode($allComments,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
	fclose($fp2);
	//echo json_encode($allComments);
	//-----------------

}

$fp = fopen('./JSON/media.json', 'w');
fwrite($fp, json_encode($allMediaItems,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
fclose($fp);
//echo json_encode($allMediaItems);
//$conn->close();
?>