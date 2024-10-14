mtype = {msg};          
chan c = [0] of {mtype}; 

proctype Sender() {
    c!msg;              
}

proctype Receiver() {
    mtype m;           
    c?m;               
    assert m == msg;  // Assert that the received message is the same as sent
}

init {
    run Sender();      
    run Receiver();    
}
