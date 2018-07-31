<table style="background-color: #fff;width: 100%;padding: 30px 20px;">

    <!--header-->
    <tr>
        <td>
            <a href="http://www.tripaty.com" target="_blank">
                <img width="200px;" height="100px;" src="{{url($obj->logo_img->path)}}">
            </a>
        </td>
    </tr>

    <!--END header-->

    <tr>
        <td></td>
    </tr>
    <tr>
        <td></td>
    </tr>

    <!--body-->
    <tr style="font-weight: bold;font-size: 18px;text-align: center;">
        <td>
            <?php if(isset($msg)): ?>
                {!! $msg !!}
            <?php endif; ?>
        </td>
    </tr>
    <!--END body-->


    <!--footer-->
    <tr>
        <td style="padding: 27px 20%;">
            <table border="1">

                <?php if(isset($email_data)): ?>
                    <?php foreach($email_data as $key=>$value): ?>
                        <tr>
                            <?php
                                if(empty($value))
                                {
                                    continue;
                                }

                                $label=$key;
                                if(isset($labels_data["$key"])){
                                    $label=$labels_data["$key"];
                                }
                            ?>
                            <td><b>{{$label}}</b></td>
                            <td>{!! $value !!}</td>
                        </tr>
                    <?php endforeach;?>
                <?php endif; ?>

                <tr>
                    <td colspan="2" style="width: 100%;">
                        <ul style="list-style: none;margin: 0px;">
                            <?php if(isset($obj->social_imgs)): ?>
                                <?php foreach($obj->social_imgs as $key=>$social_img): ?>
                                    <li style="float: left;padding: 0px 5px;margin-bottom: 5px;text-align: center;width: 35px;height: 35px;line-height: 40px;border-radius: 2px;">
                                        <a style="color: #FFF;text-decoration: none;width: 100%;padding: 5px;" href="{{$obj->social_links[$key]}}" target="_blank">
                                            <img src="<?= url("public_html/email/$social_img") ?>" width="24" />
                                        </a>
                                    </li>
                                <?php endforeach;?>
                            <?php endif; ?>
                        </ul>
                    </td>
                    <td></td>
                </tr>
            </table>

        </td>
    </tr>
    <!--footer-->

    <p style="text-align: center">{!! $obj->copyright !!}</p>

</table>
