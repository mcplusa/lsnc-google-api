<html>
  <head>
  	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
  </head>
  <body>	
  	<script type="text/javascript">
  	//Button search click handler
  	$(document).ready(function () {  
    	$("#caseSearchBtn").click(function(){            
        var options = $("#casesListBox");            
        
        var mode = 'all';                                   
        
        options.find('option').remove().end();
        options.append($("<option style='width:290px;' />").val('0').text('Select a case'));
        var search = $("#caseSearchText").val();            
        var url = '/pika/pikaGmailGadgetJsonLib.php?callback=?&mode=' + mode + '&search=' + search;
        
        $.getJSON(url, function(data){
          $.each(data.cases, function(){
            options.append($("<option />").val(this.case_id).text(this.number + '-' + this.client_name));
          });
        })
        .error(
          function(jqXHR, textStatus, errorThrown) {
            alert(textStatus); 
          });
      });

    	//Button attach to case click handler
      $("#attachToCase").click(function(){                                            
        var caseId = getSelectedCaseId();
        if(caseId == 0){
          return;
        }                                              
        /*var summary = $('#summary').val();
        if(summary == '')
        {
          alert('You have to insert a summary');
          return;
        }*/
        <?php        
        $i = 0;
        $param = "msg_".$i;
        $notes = "";        
        while(isset($_REQUEST[$param]))
        {
          $pattern="/<br>On.{40,100}>\swrote:<br>\s<br>.*\z/";
          $replacement="";
          $note=preg_replace($pattern, $replacement, $_REQUEST[$param]).'<br><br>';  
          $notes.=$note;          
          if($i==0)$notes.='<br>';
          $param = "msg_".++$i;
        }                                  
        ?>        
        var notes = '<?php echo $notes;?>';        
        var summary = '<?php echo $_REQUEST['summary'];?>';
        var url = "/pika/createNoteFromGroups.php?case_id=" + caseId + "&notes=" + notes + "&summary=" + summary;
        pika_popup(url);
      });

	    //Button edit and attach to case click handler          
      $("#editAndAttachToCase").click(function(){      	                         
        var caseId = getSelectedCaseId();
        if(caseId == 0){
          return;            
        }               
        /*var summary = $('#summary').val();
        if(summary == '')
        {
          alert('You have to insert a summary');
          return;
        }*/
        <?php        
        $i = 0;
        $param = "msg_".$i;
        $notes = "";
        while(isset($_REQUEST[$param]))
        {
          $pattern="/<br>On.{40,100}>\swrote:<br>\s<br>.*\z/";
          $replacement="";
          $note=preg_replace($pattern, $replacement, $_REQUEST[$param]).'<br><br>';  
          $notes.=$note;          
          if($i==0)$notes.='<br>';
          $param = "msg_".++$i;          
        }                                                        
        ?>
        var notes = '<?php echo $notes;?>';
        var summary = '<?php echo $_REQUEST['summary'];?>';
        var url = "/pika/createTemporaryGoogleDoc.php?case_id=" + caseId + "&doc_data=" + notes + "&summary=" + summary;
        pika_popup(url);
      });
       
    });

  	function pika_popup(url) {
      window.open (url,"LSNCPika","width=880, height=800, status=0, scrollbars=0, toolbar=0, location=0, menubar=0, directories=0, resizable=0");	
    }

    function getSelectedCaseId()
    {                           
      var caseId = $('#casesListBox').val();
      if(caseId == null || caseId == 0){            
        alert("You have to select a case");                           
        return 0;
      }
      return caseId;
    }
  	</script>
  	
    <!-- 
    <label for="summary">Note Summary</label>&nbsp;&nbsp;&nbsp;&nbsp;
    <input style="width:200px;" type="text" id="summary"/>
    <br/><br/>
     -->
    
    <input style="width:200px;" type="text" id="caseSearchText"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" id="caseSearchBtn" value="Search"/>
    <br/><br/>
    
    <select multiple="multiple" id="casesListBox">
    	<option value="0" style="width:290px">Please enter seach</option>
    </select>
    <br/><br/>
        
    <input type="button" id="attachToCase" value="Save"/>
    <input type="button" id="editAndAttachToCase" value="Edit and Save"/>
    <input type="button" id="cancelBtn" value="Cancel"/>
  </body>
</html>