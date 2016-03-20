switch(state)
{
    case STATE.charge:
        scr_charge();
        break;
    case STATE.hold:
        speed = 0;
        break;
    case STATE.follow:
        obj = unit_parent;
        scr_follow(obj);
}
