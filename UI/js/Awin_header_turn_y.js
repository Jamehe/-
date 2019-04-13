/*----------------Hichoose_Events----------------------------------*/
function Hichoose_Events () {
	
	var hi_event = document.getElementById("hi_event");	
	var Event_arr = hi_event.getElementsByTagName("a");
	var Event_height = Event_arr[0].clientHeight;
	var action = null;
	
		hi_event.onmouseover = function(){Stop();}
		hi_event.onmouseout  = function(){Star();}
		
	for (var i=0;i<Event_arr.length;i++){
		Event_arr[i].style.top = i*Event_height+'px';
	}
	
	function Star(){
		clearInterval(timer_space);
		timer_space = setInterval(TurnSpace,time_space,'timer_space');	
		hi_event.style.overflow='hidden';
	}
	function Stop(){
		clearInterval(timer_space);			
		for (var i=0;i<Event_arr.length;i++){
			Event_arr[i].style.top = i*Event_height+'px';	
		}
		hi_event.style.overflow ='visible';
	}
	
	var time_space = 4000;
	var time_step = 1;
	var px_step = 1;
	var timer_space,timer_turn;
		timer_space = setInterval(TurnSpace,time_space,'timer_space');
		
	function TurnSpace(){
		window.clearInterval(timer_turn);
		timer_turn = setInterval(TurnStar,time_step,'timer_turn');
	}
	
	function TurnStar(){
	
		for (var i=0;i<Event_arr.length;i++){						
				
				Event_arr[i].style.top =(parseInt(Event_arr[i].style.top.replace('px','')) - 1 )+ 'px';
				
				if(parseInt(Event_arr[i].style.top.replace('px','')) <= (0-Event_height)){							    
					Event_arr[i].style.top = (Event_arr.length-1)*Event_height+'px';
					window.clearInterval(timer_turn);
					
						//timer_space = setTimeout(TurnSpace,time_space,'timer_space');
					}					
							
			
		}
	
	}
	
}
Hichoose_Events();