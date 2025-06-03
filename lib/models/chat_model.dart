
class ChatModel
{
   final String name;
   final String msg;
   final String time;
   final String pic;
   final int unreadCount;
   final bool isme;

   ChatModel(this.name,this.msg,this.time,this.pic,this.unreadCount,this.isme);
}
List<ChatModel> chatsData=[
  new ChatModel('Maah','Happy Birthday chlm', '12:00 AM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473399908_961071112856430_8508328123509791620_n.jpg?ccb=11-4&oh=01_Q5Aa1QGy3_OdUMtSvhi3gmpPY4zGrWqyH7v7RLBB9s07NYu0ig&oe=680FA732&_nc_sid=5e03e0&_nc_cat=104',0,false),
  new ChatModel('Dad','Good Night pa', 'Yesterday', 'https://images.unsplash.com/photo-1516733725897-1aa73b87c8e8?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFkJTIwbG92ZXxlbnwwfHwwfHx8MA%3D%3D',0,true),
  new ChatModel('Bachelor Room','Byee Guys...', '6.00 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/486390477_1353221665807749_5888209167720669437_n.jpg?ccb=11-4&oh=01_Q5Aa1QGYLo5YFgVB4_Q6CM6L6GmRdYSYzfwlpEhyqU0j7cTLOw&oe=680F8E23&_nc_sid=5e03e0&_nc_cat=102',0,true),
  new ChatModel('Hari frd','Hi How are you..', '7.10 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/348540640_655261406444951_8739715464379555598_n.jpg?ccb=11-4&oh=01_Q5Aa1QHHhn9sKDpM7EwtZOAOmRed3czeVBDecz_C3ur1T8RLLw&oe=680F70D8&_nc_sid=5e03e0&_nc_cat=104',2,false),
  new ChatModel('Neelu Sis','Dei...', '8.15 PM', 'https://tse3.mm.bing.net/th?id=OIP.dCpgPQ0i-xX2gZ-yonm54gHaHa&pid=Api&P=0&h=180',1,false),
  new ChatModel('St.Antonys TTP-Alumni','Good Morning', 'Yesterday', 'https://tse3.mm.bing.net/th?id=OIP.8JBQWqWEWo-Slgm7Sk9iXwHaEK&pid=Api&P=0&h=180',0,false),
  new ChatModel('Sri Sis','okok', 'Yesterday', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473397335_1317336742799500_5874078949215965188_n.jpg?ccb=11-4&oh=01_Q5Aa1QF-bQOLzEhdPxEuPZfv8vao0w1ssYQOmzJnPJ25sNIeXw&oe=680F771A&_nc_sid=5e03e0&_nc_cat=106',0,true),
  new ChatModel('Rajeswari frd','Hii Batman..', 'Yesterday', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473400284_1329326168312426_7788090588921503205_n.jpg?ccb=11-4&oh=01_Q5Aa1QH06YTQugNmJXE-hRvDV0V2IMglitM9UmiVzmI_vQsaVQ&oe=680F92BE&_nc_sid=5e03e0&_nc_cat=101',1,false),
  new ChatModel('CSE-2K24','Jaslin mam:All the best', '17/04/25', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/418639165_1454811451798561_8424403932198808486_n.jpg?ccb=11-4&oh=01_Q5Aa1QHkLF6xCq1VHRtkSRFsSlQsVumI7LeFtWyMzsVxPHvtoQ&oe=68105477&_nc_sid=5e03e0&_nc_cat=109',0,false),
  new ChatModel('Aravind IT frd','Good Morning', '17/04/25', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/470263065_928497722572462_5815854348740036284_n.jpg?ccb=11-4&oh=01_Q5Aa1QEiolq_maSZKz1o6m_EooGWeZWs3POzMOCQASrrvc0mqA&oe=680F86C0&_nc_sid=5e03e0&_nc_cat=106',0,true),
  new ChatModel('Qspiders HR','I will call you Later?', '15/04/25', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/140853614_1607796702915204_5182676260828828074_n.jpg?ccb=11-4&oh=01_Q5Aa1QGR7j2ePo3mj50CHQkooXsM_hZ3ahMCdHabVN_sRiuMZg&oe=680F7BC8&_nc_sid=5e03e0&_nc_cat=102',0,true),
  new ChatModel('Amazon Pay','Hi,Your electricity bill from Tamil..', '14/04/25', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/401437030_6715593945233899_8532686244464914515_n.jpg?ccb=11-4&oh=01_Q5Aa1QHFiCqzyBQBst5hNlm80Ex7y5HfHUreaPFOG_k1JdJq_g&oe=680F7D6E&_nc_sid=5e03e0&_nc_cat=111',0,false),
  new ChatModel('Srikanth frd','Byeee da', '14/04/25', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473405147_4076610875931845_3887755290288978283_n.jpg?ccb=11-4&oh=01_Q5Aa1QFvs9FfD3XrilOStHqzYqoDpj9CCxoz4DGdjjL0Mjm5Aw&oe=681058BA&_nc_sid=5e03e0&_nc_cat=100',0,false),
  new ChatModel('Suba frd','Mmm', '14/04/25', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/458408037_421270857658404_3093753916157866872_n.jpg?ccb=11-4&oh=01_Q5Aa1QHJOc4OLDOnczx17yqA3xh6azlzaeD0ON6bZvbd0gKZVw&oe=68106C6C&_nc_sid=5e03e0&_nc_cat=109',0,false),


];