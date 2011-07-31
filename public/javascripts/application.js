// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
  $(".form_new td input").keydown(function() {
    this.style.color = '#000000'
  });
  $(".form_new td input").click(function() {
    if(this.value == 'First Name' || this.value == 'Middle Initial' || this.value == 'Last Name' || this.value == 'Course / Section' || this.value == 'Prk-Grp') { this.value=''; this.style.color='grey'}
  });
  $(".form_new td input").blur(function() {
    if (this.value == '') {
      if(this.id == 'member_first_name') this.value = 'First Name'; 
      else if(this.id == 'member_middle_name') this.value = 'Middle Initial'; 
      else if(this.id == 'member_last_name') this.value = 'Last Name';
      else if(this.id == 'member_course_section') this.value = 'Course / Section';
      else if(this.id == 'member_zone_group') this.value = 'Prk-Grp';
      this.style.color='grey';
      // this.style.display='none';
    }
  });
});
