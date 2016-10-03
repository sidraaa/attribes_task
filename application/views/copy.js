/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
            $('#show-more').hide();

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
            
            var sp_id,c_id;
            $("#sp-dd, #c-dd").change(function(){
                    sp_id = $("#sp-dd option:selected").val();
                    c_id = $("#c-dd option:selected").val();
            });
            $(function(){
                var search_results;
                var total_results;
                var divid;
                
                $('#show-more').on("click",function(){
                    $('#result-pane').empty();
                    alert("you clicked show-more!")
//                show_results();
            });
                
                function show_results(){
                    divid=0;
                    console.log("in show_results function");
                    $.each(search_results,function(key,value){
                        $("#result-pane").append($("<div></div>").attr({'class':'row','id':'box'+divid}).css({'border':'1px solid #ccc','padding':'10px','margin':'20px','width':'400px','height':'120px','background-color':'#fff'}));
                        $('#box'+divid).append($("<h5></h5>").text("Dr. "+value.firstName+" "+value.lastName))
                                       .append($("<div></div>").text(value.specialityName))
                                       .append($("<div></div>").text(value.specialityName));
                        console.log(value);
                        divid++;
                        if(divid>4){
                            $('#show-more').show();
//                            $('#result-pane').append($("<button>Show more></button>").attr({'id':'show-more','class':'btn btn-primary'}).css('float','right'));
                            //return false;
                        }
                    });
                }

                function search(){
                    $('#search-btn').on("click",function(){
                    $('#result-pane').empty();
                    $.ajax({
                        type: "POST",
                        url: "http://localhost/rest_project/main/search",
                        data:{'cityid':c_id,'state':'WA','specialityid':sp_id},
                        dataType: 'json',
                        crossDomain:true,
                        xhrFields:{withCredentials:true},
                        success:function(data){
                            search_results= data.Providers;
                            total_results=search_results.length;
                            if(total_results==0){
                                $('#result-pane').append($("<h4></h4>").text("No results found").css({'text-align':'center','margin':'80px'}));
                            }
                            else{
                                show_results();
                            }
                        },
                        error: function(){
                            console.log("error !! in search... ");
                        }
                        
                    });
                });
                    
                }
            
                search();
                
                                           
                
            });

            
//            $("#search-btn").on("click", function () {
//                $('#result-pane').empty();
//                $.ajax({
//                    type: "POST",
//                    url: "http://localhost/rest_project/main/search",
//                    data: { 'cityid':c_id , 'state': 'WA', 'specialityid': sp_id},
//                    dataType:'json',
//                    crossDomain: true,
//                    xhrFields:{withCredentials:true},
//                    success: function(data){
//                        var divid=0;
//                        if(data.Providers.length!=0){
//                            $.each(data.Providers,function(key,value){
//                                $("#result-pane").append($("<div></div>").attr({'class':'row','id':'box'+divid}).css({'border':'1px solid #ccc','padding':'10px','margin':'20px','width':'400px','height':'120px','background-color':'#fff'}));
//                                $('#box'+divid).append($("<h5></h5>").text("Dr. "+value.firstName+" "+value.lastName))
//                                               .append($("<div></div>").text(value.specialityName))
//                                               .append($("<div></div>").text(value.specialityName));
//                                console.log(value);
//                                divid++;
//    //
//                            });
//                        }
//                        else{
//                            $('#result-pane').append($("<h4></h4>").text("No results found").css({'text-align':'center','margin':'80px'}));
//                        }
////                         console.log("sp_id value is : "+sp_id);
////                         console.log("c_id value is : "+c_id);
////                         console.log("data message .. "+data.Message+"Model state..."+data.ModelState );
//
//                    },
//                    error: function(err){
//                        console.log('error !!! in search...');
//                    }
//                });
//            });

            $("#search").keypress(function (event) {
                if (event.which == 13) {
                    alert("you pressed enter");
                }
            });
        });
