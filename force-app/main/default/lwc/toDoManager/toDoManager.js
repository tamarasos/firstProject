import { LightningElement } from 'lwc';

export default class ToDoManager extends LightningElement {


    time="8:15";
  greeting= 'Good evening';

  getTime(){
    const date1 = new Date();
    const unixTimeMilSec = date1.getTime()
  }
}