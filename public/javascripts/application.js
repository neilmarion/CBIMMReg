// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(function() {
  $(".form_new td input").keydown(function() {
    this.style.color = '#000000'
  });
  $(".form_new td input").click(function() {
    if(this.value == 'First Name' || this.value == 'Middle Initial' || this.value == 'Last Name' || this.value == 'Course / Section' || this.value == 'Prk-Grp' || this.value == 'Type in school here if not available above' || this.value == 'Type in area here if not available above' || this.value == 'Type in locale here if not available above' || this.value == 'Contact No') { this.value=''; this.style.color='grey'}
  });
  $(".form_new td input").blur(function() {
    if (this.value == '') {
      if(this.id == 'member_first_name') this.value = 'First Name'; 
      else if(this.id == 'member_middle_name') this.value = 'Middle Initial'; 
      else if(this.id == 'member_last_name') this.value = 'Last Name';
      else if(this.id == 'member_course_section') this.value = 'Course / Section';
      else if(this.id == 'member_zone_group') this.value = 'Prk-Grp';
      else if(this.id == 'member_contact_number') this.value = 'Contact No';
      else if(this.id == 'new_school') this.value = "Type in school here if not available above";
      this.style.color='grey';

      // this.style.display='none';
    }
  });
  $(".form_new td select").change(function() {
    //alert($('#new_school').attr('id')) 
    //alert($(this).attr('id'));
    if($(this).attr('id') == "schools_filter"){
      if(this.value == 1000) { $('#new_area').css("display", "block"); }
      else $('#new_area').css("display", "none");
    }else if($(this).attr('id') == "member_school_id"){
      if(this.value == 1000) { $('#new_school').css("display", "block"); }
      else $('#new_school').css("display", "none");
    }else if($(this).attr('id') == "member_area_id"){
      if(this.value == 1000) $('#new_area').css("display", "block");
      else $('#new_area').css("display", "none"); 
    }else if($(this).attr('id') == "member_locale_id"){
      if(this.value == 1000) $('#new_locale').css("display", "block");
      else $('#new_locale').css("display", "none");
    }
    //if(this.value == 1) alert($('#new_school').id)
  });

});


/*
$(document).ready(function() {

  $('#schools_filter').change(function(){
    //alert(JSON.stringify( $(this).attr('value') ));

    $.ajax({type: "post", url: '/encoder/members/filter_schools',
      data: {'id' : $(this).attr('value') },
      success: function(data){

        }
    })
  });

  $('#member_submit').change(function(){

    //alert(JSON.stringify( $(this).attr('value') ));
    $.ajax({type: "post", url: '/encoder/members',
      success: function(data){

        }
    })
  });

});
*/

