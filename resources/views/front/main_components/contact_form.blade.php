<h4>{{show_content($contact_us,"form_header")}}</h4>
<form role="form" class="wowload fadeInUp contact_us_parent_div">
    <input type="hidden" id="msg_type" value="support">

    <div class="form-group">
        <input type="text" class="form-control" id="name" placeholder="{{show_content($contact_us,"form_input_name")}}">
    </div>
    <div class="form-group">
        <input type="email" class="form-control" id="email" placeholder="{{show_content($contact_us,"form_input_email")}}">
    </div>
    <div class="form-group">
        <input type="phone" class="form-control" id="phone" placeholder="{{show_content($contact_us,"form_input_phone")}}">
    </div>
    <div class="form-group">
        <textarea class="form-control" id="msg" placeholder="{{show_content($contact_us,"form_input_message")}}" rows="4"></textarea>
    </div>

    <div class="form-group display_msgs"></div>

    <button type="submit" class="btn btn-default contact_us_btn">{{show_content($contact_us,"form_button")}}</button>
</form>