/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
        $(document).ready(function(){
           var sp_id = $("#sp-dd option:selected").val();
           var c_id = $("#c-dd option:selected").val();
           var total_results;
           var search_results;
           var sb_value;
           var result_list;
           var i=0;
           var divid;
           var numofdiv;
           var divs=new Array();;
           get_dd();
           search();

           $("#sp-dd, #c-dd").change(function(){
                sp_id = $("#sp-dd option:selected").val();
                c_id = $("#c-dd option:selected").val();
           });
           
                      
           $(document).on('click', '#show-more', function () { 
               $('#result-pane').empty();
               $(this).remove();
               i++;
               show_results();
           }); 
           
           $('#sort-btn').on('click',function(){
               $('#result-pane').empty();
               if(divs){
                   divs.reverse();
                   numofdiv=0;
                   i=0;
                   for(i;i<total_results;i++){
                       $('#result-pane').append(divs[i]);   
                       numofdiv++;
                       if(numofdiv>=5){
                           $('#result-pane').append($("<button>Show more></button>").attr({'id':'show-more','class':'btn btn-primary'}).css('float','right'));
                           break;
                        }
                   }
               }
           });
           
           
           $("#search-bar").keypress(function (event) {
               if (event.which == 13) {
                   event.preventDefault();
                   search_bar_results();
               }
            });

           
           function get_dd(){
               $.ajax({
                type: 'GET',
                url: 'http://localhost/rest_project/main/res',
                dataType:'json',
                crossDomain: true,
                xhrFields:{withCredentials:true},
                success: function (data) {
//                    if($.isArray(JSON.parse(data[0]))){console.log("it is an array.."+ JSON.parse(data[0]) );}
//                    else console.log("it's not an array   "+JSON.parse(data[0]));
                    
                    var s= JSON.parse(data[0]);
                    var c= JSON.parse(data[1]);
                                    
                    $.each(s.Specialities,function(key,value){
                        $("#sp-dd").append($("<option></option>").attr({'id':'sp-selected','value':value.SpecialityID}).text(value.SpecialityName));
//                        console.log(s.Specialities);
                    });
                    
                    $.each(c.Cities,function(key,value){
                        $("#c-dd").append($("<option></option>").attr({'id':'c-selected','value':value.city_id}).text(value.city_name));
                    });                          
                },
                error: function(err){ console.log('error....'+err);}
                
            });    
           }    // end get_dd()
           
                       
            function show_results(){
                numofdiv=0;
                for(i;i<total_results;i++){
                    $('#result-pane').append(divs[i]);   
                    numofdiv++;
                    if(numofdiv>=5){
                        $('#result-pane').append($("<button>Show more></button>").attr({'id':'show-more','class':'btn btn-primary'}).css('float','right'));
                        return false;
                    }
                }  
           }    // end show_results()
           
           
           function save_results(){ 
                var box, result_flist, temp;
                console.log("in show_results function");
                for(divid;divid<total_results;divid++){
                    result_list=$("<div class=\"row box\" id=\"box"+divid+"\"</div>").css({'border':'1px solid #ccc','padding':'10px','margin':'20px','width':'400px','height':'120px','background-color':'#fff'}).append($("<h5></h5>").text("Dr. "+search_results[divid].firstName+" "+search_results[divid].lastName))
                                   .append($("<div></div>").text(search_results[divid].specialityName))
                                   .append($("<div></div>").text(search_results[divid].city+", "+search_results[divid].state+", "+search_results[divid].postcode));
    
                    divs.push(result_list);
                }
                i=0;
                show_results();
            }   // end save_results()
           
           
           function search(){
               $('#search-btn').on("click",function(){
                   divid=0;
                   divs=[];
                   $('#result-pane').empty();
                   $('#result-pane').html('<img src="assets/images/ripple.svg" id="loading">');
                   $.ajax({
                        type: "POST",
                        url: "http://localhost/rest_project/main/search",
                        data:{'cityid':c_id,'state':'WA','specialityid':sp_id},
                        dataType: 'json',
                        crossDomain:true,
                        xhrFields:{withCredentials:true},
                        beforeSend: function(){
                            $("#loading").show();
                        },
                        complete: function(){
                            $("#loading").hide();
                        },
                        success:function(data){
                            search_results= data.Providers;
                            total_results=search_results.length;
                            if(total_results==0){
                                $('#result-pane').append($("<h4></h4>").text("No results found").css({'text-align':'center','margin':'80px'}));
                            }
                            else{
                                save_results();
                            }
                        },
                        error: function(){
                            console.log("error !! in search... ");
                        }
                    });
                    console.log('now sp id is '+sp_id+" and c_id is "+c_id);
                });   //end search-btn click function
           }    // end search
           //   ()

           function search_bar_results(){
               sb_value=($('#search-bar').val()).toUpperCase();
               var sp=sb_value.search(" ");
               var fname= sb_value.substring(0,sp);
               var lname= sb_value.substring(sp+1,sb_value.length);
               divid=0;
               divs=[];
               $('#result-pane').empty();
               $('#result-pane').html('<img src="assets/images/ripple.svg" id="loading">');
               $.ajax({
                    type: "POST",
                    url: "http://localhost/rest_project/main/search",
                    data:{'cityid':c_id,'state':'WA','specialityid':sp_id,'fname':fname,'lname':lname},
                    dataType: 'json',
                    crossDomain:true,
                    xhrFields:{withCredentials:true},
                    beforeSend: function(){
                            $("#loading").show();
                        },
                        complete: function(){
                            $("#loading").hide();
                        },
                    success:function(data){
                        search_results= data.Providers;
                        total_results=search_results.length;
                        if(total_results===0){
                            $('#result-pane').append($("<h4></h4>").text("No results found").css({'text-align':'center','margin':'80px'}));
                        }
                        else{
                            save_results();
                        }
                    },
                    error: function(){
                        console.log("error !! in search bar result... ");
                    }
                });
                console.log("fname="+fname+"lname="+lname);
           }    // end search_bar_results()

           
        });