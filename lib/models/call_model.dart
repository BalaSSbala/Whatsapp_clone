class CallModel {
  final String name;
  final String time;
  final String pic;
  final bool isIncoming;
  final bool isMissed;
  final bool isVideo; // new field

  CallModel(this.name, this.time, this.pic, this.isIncoming, this.isMissed, this.isVideo);
}
List<CallModel> callsData = [
  CallModel('Maah', 'Today, 8:01 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473399908_961071112856430_8508328123509791620_n.jpg?ccb=11-4&oh=01_Q5Aa1QGy3_OdUMtSvhi3gmpPY4zGrWqyH7v7RLBB9s07NYu0ig&oe=680FA732&_nc_sid=5e03e0&_nc_cat=104', true, false, true),
  CallModel('Kavi', 'Today, 7:20 PM', 'https://tse2.mm.bing.net/th?id=OIP.2QfNgVSujxbCe3fYjDU4FAHaEK&pid=Api&P=0&h=180', false, true, false),
  CallModel('Jo Akka', 'Today, 1:15 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/355600291_807948707263623_6934030125205699781_n.jpg?ccb=11-4&oh=01_Q5Aa1QEV6vsbTRGBj5u1pGRdNwIggKIszkh0ZFbDYnnA9__tew&oe=680F81D9&_nc_sid=5e03e0&_nc_cat=104', true, false, false),
  CallModel('Neelu sis', 'Today, 9:55 AM', 'https://tse3.mm.bing.net/th?id=OIP.dCpgPQ0i-xX2gZ-yonm54gHaHa&pid=Api&P=0&h=180', true, false, false),
  CallModel('Aravind IT frd', 'Yesterday, 8:00 PM','https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/470263065_928497722572462_5815854348740036284_n.jpg?ccb=11-4&oh=01_Q5Aa1QEiolq_maSZKz1o6m_EooGWeZWs3POzMOCQASrrvc0mqA&oe=680F86C0&_nc_sid=5e03e0&_nc_cat=106', false, true, false),
  CallModel('Dishanth frd', 'Yesterday, 6:37 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/491840581_1453599672487767_1715906007115469139_n.jpg?ccb=11-4&oh=01_Q5Aa1QE-_zKl-BbuTzdt5a2iw3dOOeRxR8tKw3_jQfjyVDhgOg&oe=6810778F&_nc_sid=5e03e0&_nc_cat=103', false, true, false),
  CallModel('Gana', 'Yesterday, 4:33 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/312271775_224755419879881_3447274253998159039_n.jpg?ccb=11-4&oh=01_Q5Aa1QGnitq9a2cur2gwUNubK5w6JIxXefTY6qdof5Eh_F1gZw&oe=680F7DF3&_nc_sid=5e03e0&_nc_cat=104', true, false, true),
  CallModel('Maah', 'Yesterday, 2:41 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473399908_961071112856430_8508328123509791620_n.jpg?ccb=11-4&oh=01_Q5Aa1QGy3_OdUMtSvhi3gmpPY4zGrWqyH7v7RLBB9s07NYu0ig&oe=680FA732&_nc_sid=5e03e0&_nc_cat=104', true, false, false),
  CallModel('Dad', 'Yesterday, 9:00 AM', 'https://images.unsplash.com/photo-1516733725897-1aa73b87c8e8?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFkJTIwbG92ZXxlbnwwfHwwfHx8MA%3D%3D', false, true, false),
  CallModel('Hari frd', '12/04/25, 9:41 AM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/348540640_655261406444951_8739715464379555598_n.jpg?ccb=11-4&oh=01_Q5Aa1QHHhn9sKDpM7EwtZOAOmRed3czeVBDecz_C3ur1T8RLLw&oe=680F70D8&_nc_sid=5e03e0&_nc_cat=104', true, false, false),
  CallModel('Maah', '10/04/25, 6:08 PM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473399908_961071112856430_8508328123509791620_n.jpg?ccb=11-4&oh=01_Q5Aa1QGy3_OdUMtSvhi3gmpPY4zGrWqyH7v7RLBB9s07NYu0ig&oe=680FA732&_nc_sid=5e03e0&_nc_cat=104', true, false, true),
  CallModel('Rajeshwari frd', '09/04/25, 11:11 AM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473400284_1329326168312426_7788090588921503205_n.jpg?ccb=11-4&oh=01_Q5Aa1QH06YTQugNmJXE-hRvDV0V2IMglitM9UmiVzmI_vQsaVQ&oe=680F92BE&_nc_sid=5e03e0&_nc_cat=101', true, true, false),
  CallModel('Maah', '09/04/25, 10:08 AM', 'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/473399908_961071112856430_8508328123509791620_n.jpg?ccb=11-4&oh=01_Q5Aa1QGy3_OdUMtSvhi3gmpPY4zGrWqyH7v7RLBB9s07NYu0ig&oe=680FA732&_nc_sid=5e03e0&_nc_cat=104', false, false, true),

];
