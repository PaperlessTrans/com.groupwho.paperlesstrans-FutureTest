<div id="path" style="display:none;">
    {php}
    $dir = dirname(__FILE__);
    echo $dir;
    echo "\n";
    echo $_SERVER['DOCUMENT_ROOT'];
    {/php}
</div>
{literal}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
var recur_future_contribution = '<br/><div id="recur_future_div"><input id="recur_future_date_checkbox" name="recur_future_date_checkbox" value="1" class="crm-form-checkbox" type="checkbox"/> <label for="recur_future_date_checkbox">I want to start my recurring contribution on this date.</label></div>';
var recur_future_date = '<div id="recur_future_date_picker" style="display: none;"><label for="recur_future_start_date">Select Your Start Date: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input id="recur_future_start_date" class="nine crm-form-text" type="date"/><br/><label for="recur_future_end_date"> Select Your End Date: (Optional) </label><input id="recur_future_end_date" class="nine crm-form-text" type="date" /><div>';
var one_time_future_contribution = '<br/><legend>One-Time Contribution</legend><br/><div id="one_time_future_div" class="future_date">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="one_time_future_date" name="one_time_future_date" value="1" class="crm-form-checkbox" type="checkbox"/> <label for="one_time_future_date">I want to make a one-time contribution at a future date.</label><br/><br/></div>';
var one_time_date_picker = '<div id="one_time_date_picker_div" style="display: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="one_time_date_picker">Select Your Future Date: </label><input id="one_time_date_picker" class="eight crm-form-text" type="date" /><br/><div>';
var record_future_transaction = '<input class="crm-form-submit default validate" crm-icon="fa-check" style="display: none;" value="Record Contribution" id="future_transaction" type="button"><input class="crm-form-submit default validate" crm-icon="fa-check" style="display: none;" value="Record Recurring Contribution" id="future_recur_transaction" type="button">';
var recur_future_contribution_header = '<legend>Recurring Contribution</legend>';
var custom_fields = '<br/><legend>Additional Information</legend><br/><div id="organization">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="organization_picker" name="organization_picker" class="crm-form-checkbox" type="checkbox"/> <label for="organization_picker">I Want To Enter The Contribution On Behalf Of An Organization.</label><br/><br/><div id="organization_view" style="display: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="enter_organization">Name Of The Organization: </label><input size="30" id="enter_organization" class="big crm-form-text" type="text"></div></div><br/><div id="honor_donation">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="name_picker" name="name_picker" class="crm-form-checkbox" type="checkbox"/> <label for="name_picker"><label>I Am Donating In Honor Of Or In Memory Of A Loved One.</label><br/><br/><div id="honor_donation_view" style="display: none;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="honor_id">Name Of The Person: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input size="30" id="honor_id" class="big crm-form-text" type="text"></div></div><br/><div id="Update">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="updation" name="updation" class="crm-form-checkbox" type="checkbox"/> <label for="updation"><label>I Want To Update My Payment Information.</label><br/><br/><div id="changes" style="display:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="credit_change" class="crm-form-radio" name="changes" type="radio"/><label for="credit_change"><label>Enter Credit Card Information.</label><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="debit_change" class="crm-form-radio" name="changes" type="radio"/><label for="debit_change"><label>Enter ACH/EFT Information.</label><br/></div></div>';
var paperless_logo = '<img src="http://www.paperlesstrans.com/wp-content/themes/paperless/images/logo.jpg" alt="Paperless Transaction Corporation Logo" align="middle">';
var debit_info = '<div id="debit_block" style="display:none;"><div class="crm-section account_holder-section"><div class="label"><label for="account_holder1">Account Holder</label><span class="crm-marker" title="This field is required.">*</span>            </div><div class="content"><input size="20" maxlength="34" autocomplete="on" name="account_holder1" id="account_holder1" class="medium crm-form-text" type="text"></div><div class="clear"></div></div><div class="crm-section bank_account_number-section"><div class="label"><label for="bank_account_number1">Bank Account Number</label><span class="crm-marker" title="This field is required.">*</span>            </div><div class="content"><input size="20" maxlength="34" autocomplete="off" name="bank_account_number1" id="bank_account_number1" class="medium crm-form-text" type="text"></div><div class="clear"></div></div><div class="crm-section bank_identification_number-section"><div class="label"><label for="bank_identification_number1">Bank Identification Number</label><span class="crm-marker" title="This field is required.">*</span>            </div><div class="content"><input size="20" maxlength="11" autocomplete="off" name="bank_identification_number1" id="bank_identification_number1" class="medium crm-form-text" type="text"></div><div class="clear"></div></div><div class="crm-section bank_name-section"><div class="label"><label for="bank_name1">Bank Name</label><span class="crm-marker" title="This field is required.">*</span>            </div><div class="content"><input size="20" maxlength="64" autocomplete="off" name="bank_name1" id="bank_name1" class="medium crm-form-text" type="text"></div></div><br/><button crm-icon="fa-check" type="button" id="ach_update">Update ACH/EFT Information</button></div>';
var credit_info = '<div id ="credit_block" style="display:none;"><div class="crm-section credit_card_number-section"><div class="label"><label for="credit_card_number1">Card Number</label><span class="crm-marker" title="This field is required.">*</span>   </div><div class="content"><input size="20" maxlength="20" autocomplete="off" class="creditcard crm-form-text" name="credit_card_number1" id="credit_card_number1" type="text">   </div><div class="clear"></div></div><div class="crm-section cvv2-section">            <div class="label"><label for="cvv21">Security Code</label><span class="crm-marker" title="This field is required.">*</span>            </div><div class="content"><input size="5" maxlength="10" autocomplete="off" name="cvv21" id="cvv21" class="crm-form-text" type="text"><span class="cvv2-icon" title="Usually the last 3-4 digits in the signature area on the back of the card."> </span></div><div class="clear"></div></div>                            <div class="crm-section credit_card_exp_date-section"><div class="label"><label>Expiration Date</label>              <span class="crm-marker" title="This field is required.">*</span>            </div> <div class="content"><select class="crm-form-date" id="credit_card_exp_date_M1" name="credit_card_exp_date[M]1">  <option value="">-month-</option> <option value="1">Jan</option> <option value="2">Feb</option> <option value="3">Mar</option> <option value="4">Apr</option> <option value="5">May</option> <option value="6">Jun</option>  <option value="7">Jul</option><option value="8">Aug</option>  <option value="9">Sep</option> <option value="10">Oct</option> <option value="11">Nov</option><option value="12">Dec</option></select>&nbsp;<select class="crm-form-date" id="credit_card_exp_date_Y1" name="credit_card_exp_date[Y]1"><option value="">-year-</option><option value="2018">2018</option> <option value="2019">2019</option><option value="2020">2020</option> <option value="2021">2021</option> <option value="2022">2022</option> <option value="2023">2023</option> <option value="2024">2024</option>  <option value="2025">2025</option> <option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option></select></div></div><br/> <button crm-icon="fa-check" type="button" id="cc_update">Update Credit Card Information</button> </div>';

$(document).ready(function () 
{
    $("#intro_text").before(paperless_logo);
    $("#recurHelp").append(recur_future_contribution);
    $("#recur_future_div").append(recur_future_date);
    $("#priceset-div").after(one_time_future_contribution);
    $("#one_time_future_div").append(one_time_date_picker);
    $(".is_recur-section").before(recur_future_contribution_header);
    $("#crm-submit-buttons").append(record_future_transaction);
    $(".email-5-section").after(custom_fields);
    $('#changes').append(debit_info);
    $('#changes').append(credit_info);

    CRM.api3('PaymentProcessor', 'get', {
  "sequential": 1,
  "return": ["user_name","password","payment_type"],
  "url_site": "https://svc.paperlesstrans.com:9999/?wsdl"
    }).done(function(result) 
    {
        for (var i=0; i<result['count']; i++)
        {
            if(result['values'][i]['payment_type'] == '1')
            {
                credit_username = result['values'][i]['user_name'];
                credit_password = result['values'][i]['password'];
            }
            else if (result['values'][i]['payment_type'] == '2')
            {
                ach_username = result['values'][i]['user_name'];
                ach_password = result['values'][i]['password'];
            }
        }

        $("#updation").change(function () {
            if ($("#updation").is(':checked')) 
            {
                $("#changes").show();
                $("#credit_change").change(function () {
                    if ($("#credit_change").is(':checked')) {
                        $('#debit_block').hide();
                        $('#credit_block').show();
                        $("#cc_update").click(function () {
                          if($('#credit_card_number1').val() && $('#cvv21').val() && $('#credit_card_exp_date_M1').val() && $('#credit_card_exp_date_Y1').val())
                            {
                                console.log("done cc");

                            }
                            else alert('Enter All Required ACH/EFT Fields Correctly.');  
                        });
                    }
                });
                $("#debit_change").change(function () {
                    if ($("#debit_change").is(':checked')) {
                        $('#credit_block').hide();
                        $('#debit_block').show();
                        $("#ach_update").click(function () {
                            if($('#account_holder1').val() && $('#bank_account_number1').val() && $('#bank_identification_number1').val() && $('#bank_name1').val())
                            {
                                console.log("done");
                            }
                            else alert('Enter All Required ACH/EFT Fields Correctly.');
                            
                        });

                    }
                });
            }
            else
            {
                $("#changes").hide();
            }
        });

        amount = $(".contribution_amount-content .crm-form-radio:checked").attr("data-amount");
        
        $(".contribution_amount-content").change(function () {
            amount = $(".contribution_amount-content .crm-form-radio:checked").attr("data-amount");
        });
        
        $(".other_amount-section").change(function () {
            amount_field = $(".other_amount-section");
            amount = amount_field[0]['childNodes'][1]['firstChild']['control']['value'];
        });

        frequency_unit = $("#frequency_unit").val();
        
        if (!frequency_unit) {
            frequency_unit = "week";
        }
        
        email_1 = $("#email-5").val();
        billing_first_name = $("#billing_first_name").val();
        billing_last_name = $("#billing_last_name").val();
        billing_street_address = $("#billing_street_address-5").val();
        city = $("#billing_city-5").val();
        zip = $("#billing_postal_code-5").val();
        Organization_name = $("#enter_organization").val();
        person_name = $("#honor_id").val();
        mode = $('.no-popup strong').html();
        residence = $("#path").html();
        residence = residence.trim();
        residence = residence.split('\n');
        residence[0] = residence[0].split(residence[1]);
        residence[0][1] = residence[0][1].split('civicrm');
        residence[0][1][1] = 'civicrm/ext/com.groupwho.paperlesstrans/profiles';
        residence = residence[0][1][0].concat(residence[0][1][1]);
        console.log(residence);
        
        state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        state_value = $('#' +state_id).html();
        
        function abbrState(input, to)
        {
        
            var states = [
            ['Alabama'       ,   'AL'],
            ['Alaska'        ,   'AK'],
            ['American Samoa',   'AS'],
            ['Arizona'       ,   'AZ'],
            ['Arkansas'      ,   'AR'],
            ['Armed Forces Europe' , 'AE'],
            ['Armed Forces Americas' ,'AA'],
            ['Armed Forces Pacific' , 'AP'],
            ['California'    ,   'CA'],
            ['Colorado'      ,   'CO'],
            ['Connecticut'   ,   'CT'],
            ['District Of Columbia' , 'DC'],
            ['Delaware'      ,   'DE'],
            ['Florida'       ,   'FL'],
            ['Georgia'       ,   'GA'],
            ['Guam'          ,   'GU'],
            ['Hawaii'        ,   'HI'],
            ['Idaho'         ,   'ID'],
            ['Illinois'      ,   'IL'],
            ['Indiana'       ,   'IN'],
            ['Iowa'          ,   'IA'],
            ['Kansas'        ,   'KS'],
            ['Kentucky'      ,   'KY'],
            ['Louisiana'     ,   'LA'],
            ['Maine'         ,   'ME'],
            ['Marshall Island', 'MH'],
            ['Maryland'      ,   'MD'],
            ['Massachusetts' ,   'MA'],
            ['Michigan'      ,   'MI'],
            ['Micronesia'    ,   'FM'],
            ['Minnesota'     ,   'MN'],
            ['Mississippi'   ,   'MS'],
            ['Missouri'      ,   'MO'],
            ['Montana'       ,   'MT'],
            ['Nebraska'      ,   'NE'],
            ['Nevada'        ,   'NV'],
            ['New Hampshire' ,   'NH'],
            ['New Jersey'    ,   'NJ'],
            ['New Mexico'    ,   'NM'],
            ['New York'      ,   'NY'],
            ['North Carolina',   'NC'],
            ['North Dakota'  ,   'ND'],
            ['Northern Mariana Islands', 'MP'],
            ['Ohio'          ,   'OH'],
            ['Oklahoma'      ,   'OK'],
            ['Oregon'        ,   'OR'],
            ['Palau'         ,   'PW'],
            ['Pennsylvania'  ,   'PA'],
            ['Puerto Rico'   ,   'PR'],
            ['Rhode Island'  ,   'RI'],
            ['South Carolina',   'SC'],
            ['South Dakota'  ,   'SD'],
            ['Tennessee'     ,   'TN'],
            ['Texas'         ,   'TX'],
            ['Utah'          ,   'UT'],
            ['Vermont'       ,   'VT'],
            ['Virginia'      ,   'VA'],
            ['Virgin Islands',   'VI'],
            ['Washington'    ,   'WA'],
            ['West Virginia' ,   'WV'],
            ['Wisconsin'     ,   'WI'],
            ['Wyoming'   ,   'WY']
            ];

            if (to == 'abbr')
            {
                input = input.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
                for(i = 0; i < states.length; i++)
                {
                    if(states[i][0] == input)
                    {
                        return(states[i][1]);
                    }
                }    
            } 
            else if (to == 'name')
            {
                input = input.toUpperCase();
                for(i = 0; i < states.length; i++)
                {
                    if(states[i][1] == input)
                    {
                        return(states[i][0]);
                    }
                }    
            }
        }
        state = abbrState(state_value,'abbr');

        if (!mode == true) {
            mode = "Live";
        } 
        else {
            mode = "Test";
        }
        if (!Organization_name) {
            Organization_name = " ";
        }
        if (!person_name) {
            person_name = " ";
        }
        if (frequency_unit == "week") {
            frequency_unit_value = "Weekly";
        } 
        else if (frequency_unit == "month") {
            frequency_unit_value = "Monthly";
        } 
        else frequency_unit_value = "Yearly";
        
        $("#frequency_unit").change(function () {
            $(function () {
                    frequency_unit = $("#frequency_unit").val();
                    if (frequency_unit == "week") {
                        frequency_unit_value = "Weekly";
                    } 
                    else if (frequency_unit == "month") {
                        frequency_unit_value = "Monthly";
                    } 
                    else frequency_unit_value = "Yearly";
            });
        });

        $("#billing_first_name").change(function () {
            $(function () {
                billing_first_name = $("#billing_first_name").val();
            });
        });
        
        $("#billing_last_name").change(function () {
            $(function () {
                billing_last_name = $("#billing_last_name").val();
            });
        });
        
        $("#billing_street_address-5").change(function () {
            $(function () {
                billing_street_address = $("#billing_street_address-5").val();
            });
        });
        
        $("#email-5").change(function () {
            $(function () {
                email_1 = $("#email-5").val();
            });
        });
        
        $("#billing_city-5").change(function () {
            $(function () {
                city = $("#billing_city-5").val();
            });
        });
        
        $("#billing_postal_code-5").change(function () {
            $(function () {
                zip = $("#billing_postal_code-5").val();
            });
        });
        
        $("#organization_picker").click(function () {
            if ($("#organization_picker").is(':checked')) {
                    $("#organization_view").show();
                    $("#enter_organization").change(function () {
                        $(function () {
                            Organization_name = $("#enter_organization").val();
                        });
                    });
            } else $("#organization_view").hide();
        });

        $("#name_picker").click(function () {
            if ($("#name_picker").is(':checked')) {
                    $("#honor_donation_view").show();
                    $("#honor_id").change(function () {
                        $(function () {
                            person_name = $("#honor_id").val();
                        });
                    });
                } 
            else $("#honor_donation_view").hide();
        });

        $('input[name=payment_processor_id]').change(function () {
            processor_type = $(this).find('id');
            processor_type_1 = processor_type['prevObject'][0]
            ['id'];
            processor = $("label[for=" + processor_type_1 + "]").html();
            CRM.api3('PaymentProcessor', 'get', {
                "sequential": 1,
                "return": ["payment_type"],
                "name": processor
            }).done(function (result) {
                
                $("#priceset").change(function () {
                    $(function () {
                        amount_id = $(this).find("id");
                        amount_selected_id = amount_id['prevObject'][0]['activeElement']['id'];
                        amount = $('#' + amount_selected_id).attr('data-amount');
                        if (!amount) {
                            amount_text_field = $(".other_amount-content").find("id");
                            amount_text_field_id = amount_text_field['prevObject'][0]['childNodes'][1]['id'];
                            amount = $('#' + amount_text_field_id).val();

                            $('#' + amount_text_field_id).change(function () {
                                amount_field = $('#' + amount_text_field_id);
                                amount = amount_field[0]['value'];
                            });
                        }
                    });
                });
                payment_type = result['values'][0]['payment_type'];
                payment = payment_type;
                if (payment == '1') 
                {
                    $("#account_holder").remove();
                    $("#bank_account_number").remove();
                    $("#bank_identification_number").remove();
                    $("#bank_name").remove();
                    $('.direct_debit_info-section').remove();
                    $("#credit_card_number").change(function () {
                        $(function () {
                            credit_card_number = $("#credit_card_number").val();
                        });
                    });
                    $("#credit_card_exp_date_M").change(function () {
                        $(function () {
                            credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                        });
                    });
                    $("#credit_card_exp_date_Y").change(function () {
                        $(function () {
                            credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                        });
                    });
                    $("#cvv2").change(function () {
                        $(function () {
                            cvv2 = $("#cvv2").val();
                        });
                    });
                    $("#recur_future_date_checkbox").click(function () {
                        if ($("#recur_future_date_checkbox").is(':checked')) {
                            if ($("#one_time_future_date").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#recur_future_date_picker").show();
                                $(".crm-i-button").hide();
                                $("#future_recur_transaction").show();
                                dateToday = new Date();
                                $("#recur_future_start_date").change(function () {
                                    $(function () {
                                        dateFirst = new Date($("#recur_future_start_date").val());
                                        if (dateToday > dateFirst) {
                                            alert("Select A Future Start Date.");
                                        } 
                                        else {
                                            dateFirst.setDate(dateFirst.getDate() + 1);
                                            dateSecond = new Date(dateFirst);
                                            dateSecond.setMonth(dateSecond.getMonth() + 1);
                                        }
                                    });
                                });

                                $("#recur_future_end_date").change(function () {
                                    $(function () {
                                        dateSecond = new Date($("#recur_future_end_date").val());
                                        if (dateToday > dateSecond || dateFirst > dateSecond) {
                                            alert("Select A Future End Date.");
                                        } else {
                                            dateSecond.setDate(dateSecond.getDate() + 1);
                                        }
                                    });
                                });
                                
                                $("#future_recur_transaction").click(function () {
                                    billing_first_name = $("#billing_first_name").val();
                                    billing_last_name = $("#billing_last_name").val();
                                    billing_street_address = $("#billing_street_address-5").val();
                                    city = $("#billing_city-5").val();
                                    zip = $("#billing_postal_code-5").val();
                                    state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                    if($('#'+state_id).html())
                                    {           
                                        state_value = $('#' +state_id).html();
                                        state = abbrState(state_value,'abbr');
                                    }
                                    else state = "TX";
                                    alert("Scheduling Your Transaction...\nPlease Wait.");
                                    days = (dateSecond - dateFirst) / (1000 * 60 * 60 * 24);
                                    
                                    if (frequency_unit == "month") {
                                        count = Math.floor(days / 30);
                                    } 
                                    else if (frequency_unit == "year") {
                                        count = Math.floor(days / 365);
                                    } else count = Math.floor(days / 7);
                                    
                                    if (payment == '1') {
                                        credit_card_number = $("#credit_card_number").val();
                                        credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                        credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                        cvv2 = $("#cvv2").val();
                                        if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                        alert("Fill All Fields Under Credit Card Information.");
                                        }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CardRecurringProfile.php',
                                            data: {
                                                type: "Card",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                credit_card_number: credit_card_number,
                                                credit_card_exp_date_M: credit_card_exp_date_M,
                                                credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                cvv2: cvv2,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : credit_username,
                                                password : credit_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "Credit Card Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                        put = (result['values'][0]['parameters']).toString();
                                                        put = put.split("\n");
                                                        combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                        alert(combine);
                                                        window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    } 
                                    else if (payment == '2') {
                                        account_holder = $("#account_holder").val();
                                        bank_account_number = $("#bank_account_number").val();
                                        bank_identification_number = $("#bank_identification_number").val();
                                        bank_name = $("#bank_name").val();
                                        if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                            alert("Fill All Fields Under Direct Direct Information.");
                                        }
                                        
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CheckRecurringProfile.php',
                                            data: {
                                                type: "Check",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                account_holder: account_holder,
                                                bank_account_number: bank_account_number,
                                                bank_identification_number: bank_identification_number,
                                                bank_name: bank_name,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : ach_username,
                                                password : ach_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "ACH/EFT Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    }
                                });
                            }
                        } 
                        else if ($("#one_time_future_date").is(':checked')) {
                            alert("Performing One-Time Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else {
                            $("#recur_future_date_picker").hide();
                            $("#future_recur_transaction").hide();
                            $(".crm-i-button").show();
                        }
                    });
                    $("#one_time_future_date").click(function () {
                        if ($("#one_time_future_date").is(':checked')) {
                            if ($("#recur_future_date_checkbox").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else {
                                $("#one_time_date_picker_div").show();
                                $(".crm-i-button").hide();
                                $("#future_transaction").show();
                                $("#one_time_date_picker_div").change(function () {
                                    $(function () {
                                        date_Future = new Date($("#one_time_date_picker").val());
                                        date_Future.setDate(date_Future.getDate() + 1);
                                        dateToday = new Date();
                                        if (dateToday > date_Future) {
                                            alert("Select A Future Date.");
                                        }
                                        $("#future_transaction").click(function () {
                                            billing_first_name = $("#billing_first_name").val();
                                            billing_last_name = $("#billing_last_name").val();
                                            billing_street_address = $("#billing_street_address-5").val();
                                            city = $("#billing_city-5").val();
                                            zip = $("#billing_postal_code-5").val();
                                            state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                            if($('#'+state_id).html())
                                            {           
                                                state_value = $('#' +state_id).html();
                                                state = abbrState(state_value,'abbr');
                                            }
                                            else state = "TX";
                                            alert("Scheduling Your Transaction...\nPlease Wait.");
                                            if (payment == '1') {
                                                credit_card_number = $("#credit_card_number").val();
                                                credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                                credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                                cvv2 = $("#cvv2").val();
                                                if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                                    alert("Fill All Fields Under Credit Card Information.");
                                                }
                                                
                                                $.ajax({
                                                    type: "POST",
                                                    url: residence + '/CardProfile.php',
                                                    data: {
                                                        type: "Card",
                                                        date: date_Future,
                                                        email: email_1,
                                                        amount: amount,
                                                        credit_card_number: credit_card_number,
                                                        credit_card_exp_date_M: credit_card_exp_date_M,
                                                        credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                        cvv2: cvv2,
                                                        billing_first_name: billing_first_name,
                                                        billing_last_name: billing_last_name,
                                                        billing_street_address: billing_street_address,
                                                        city: city,
                                                        state : state,
                                                        zip: zip,
                                                        org: Organization_name,
                                                        person: person_name,
                                                        mode: mode,
                                                        username : credit_username,
                                                        password : credit_password
                                                    },
                                                    success: function (data) {
                                                        profile_data = data.split("Profile_ID=");
                                                        profile = profile_data[1].split("\n");
                                                        CRM.api3('Job', 'create', {
                                                            "sequential": 1,
                                                            "run_frequency": "Yearly",
                                                            "name": "Credit Card One-Time Contribution",
                                                            "api_entity": "paperless",
                                                            "api_action": "futureprocess",
                                                            "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                        }).done(function (result) {
                                                            put = (result['values'][0]['parameters']).toString();
                                                            put = put.split("\n");
                                                            combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                            alert(combine);
                                                            window.location.href = location.hostname;
                                                        });
                                                    },
                                                    error: function (response) {
                                                        response = response.toString();
                                                        alert("Error! Please Reload The Page And Try Again.");
                                                    },
                                                });
                                            } 
                                            else if (payment == '2') {
                                                account_holder = $("#account_holder").val();
                                                bank_account_number = $("#bank_account_number").val();
                                                bank_identification_number = $("#bank_identification_number").val();
                                                bank_name = $("#bank_name").val();
                                                if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                                    alert("Fill All Fields Under Direct Direct Information.");
                                                }
                                                $.ajax({
                                                    type: "POST",
                                                    url: residence + '/CheckProfile.php',
                                                    data: {
                                                        type: "Check",
                                                        date: date_Future,
                                                        email: email_1,
                                                        amount: amount,
                                                        account_holder: account_holder,
                                                        bank_account_number: bank_account_number,
                                                        bank_identification_number: bank_identification_number,
                                                        bank_name: bank_name,
                                                        billing_first_name: billing_first_name,
                                                        billing_last_name: billing_last_name,
                                                        billing_street_address: billing_street_address,
                                                        city: city,
                                                        state : state,
                                                        zip: zip,
                                                        org: Organization_name,
                                                        person: person_name,
                                                        mode: mode,
                                                        username : ach_username,
                                                        password : ach_password
                                                    },
                                                    success: function (data) {
                                                        profile_data = data.split("Profile_ID=");
                                                        profile = profile_data[1].split("\n");
                                                        CRM.api3('Job', 'create', {
                                                            "sequential": 1,
                                                            "run_frequency": "Yearly",
                                                            "name": "ACH/EFT One-Time Contribution",
                                                            "api_entity": "paperless",
                                                            "api_action": "futureprocess",
                                                            "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                        }).done(function (result) {
                                                            put = (result['values'][0]
                                                            ['parameters']).toString();
                                                            put = put.split("\n");
                                                            combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                            alert(combine);
                                                            window.location.href = location.hostname;
                                                        });
                                                    },
                                                    error: function (response) {
                                                        response = response.toString();
                                                        alert("Error! Please Reload The Page And Try Again.");
                                                    },
                                                });
                                            }
                                        });
                                    });
                                });
                            }
                        } 
                        else if ($("#recur_future_date_checkbox").is(':checked')) {
                            alert("Performing Recurring Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else {
                            $("#one_time_date_picker_div").hide();
                            $(".crm-i-button").show();
                            $("#future_transaction").hide();
                        }
                    });
                } 
                else if (payment == '2') 
                {
                    $("#credit_card_number").remove();
                    $("#credit_card_exp_date_M").remove();
                    $("#credit_card_exp_date_Y").remove();
                    $("#cvv2").remove();
                    $('.credit_card_info-section').remove();
                    $("#account_holder").change(function () {
                        $(function () {
                            account_holder = $("#account_holder").val();
                        });
                    });
                    $("#bank_account_number").change(function () {
                        $(function () {
                            bank_account_number = $("#bank_account_number").val();
                        });
                    });
                    $("#bank_identification_number").change(function () {
                        $(function () {
                            bank_identification_number = $("#bank_identification_number").val();
                        });
                    });
                    $("#bank_name").change(function () {
                        $(function () {
                            bank_name = $("#bank_name").val();
                        });
                    });
                    $("#recur_future_date_checkbox").click(function () {
                        if ($("#recur_future_date_checkbox").is(':checked')) {
                            if ($("#one_time_future_date").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else {
                                $("#recur_future_date_picker").show();
                                $(".crm-i-button").hide();
                                $("#future_recur_transaction").show();
                                dateToday = new Date();
                                $("#recur_future_start_date").change(function () {
                                    $(function () {
                                        dateFirst = new Date($("#recur_future_start_date").val());
                                        if (dateToday > dateFirst) {
                                            alert("Select A Future Start Date");
                                        } 
                                        else {
                                            dateFirst.setDate(dateFirst.getDate() + 1);
                                            dateSecond = new Date(dateFirst);
                                            dateSecond.setMonth(dateSecond.getMonth() + 1);
                                        }
                                    });
                                });
                                $("#recur_future_end_date").change(function () {
                                    $(function () {
                                        dateSecond = new Date($("#recur_future_end_date").val());
                                        if (dateToday > dateSecond || dateFirst > dateSecond) {
                                            alert("Select A Future End Date");
                                        } 
                                        else {
                                            dateSecond.setDate(dateSecond.getDate() + 1);
                                        }
                                    });
                                });
                                $("#future_recur_transaction").click(function () {
                                    billing_first_name = $("#billing_first_name").val();
                                    billing_last_name = $("#billing_last_name").val();
                                    billing_street_address = $("#billing_street_address-5").val();
                                    city = $("#billing_city-5").val();
                                    zip = $("#billing_postal_code-5").val();
                                    state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                    if($('#'+state_id).html())
                                    {           
                                        state_value = $('#' +state_id).html();
                                        state = abbrState(state_value,'abbr');
                                    }
                                    else state = "TX";
                                    alert("Scheduling Your Transaction...\nPlease Wait.");
                                    days = (dateSecond - dateFirst) / (1000 * 60 * 60 * 24);
                                    if (frequency_unit == "month") {
                                        count = Math.floor(days / 30);
                                    } 
                                    else if (frequency_unit == "year") {
                                        count = Math.floor(days / 365);
                                    } 
                                    else count = Math.floor(days / 7);
                                    
                                    if (payment == '1') {
                                        credit_card_number = $("#credit_card_number").val();
                                        credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                        credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                        cvv2 = $("#cvv2").val();
                                        if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                            alert("Fill All Fields Under Credit Card Information.");
                                            }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CardRecurringProfile.php',
                                            data: {
                                                type: "Card",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                credit_card_number: credit_card_number,
                                                credit_card_exp_date_M: credit_card_exp_date_M,
                                                credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                cvv2: cvv2,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : credit_username,
                                                password : credit_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "Credit Card Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    } 
                                    else if (payment == '2') {
                                        account_holder = $("#account_holder").val();
                                        bank_account_number = $("#bank_account_number").val();
                                        bank_identification_number = $("#bank_identification_number").val();
                                        bank_name = $("#bank_name").val();
                                        if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                            alert("Fill All Fields Under Direct Direct Information.");
                                        }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CheckRecurringProfile.php',
                                            data: {
                                                type: "Check",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                account_holder: account_holder,
                                                bank_account_number: bank_account_number,
                                                bank_identification_number: bank_identification_number,
                                                bank_name: bank_name,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : ach_username,
                                                password : ach_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "ACH/EFT Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    }
                                });
                            }
                        } 
                        else if ($("#one_time_future_date").is(':checked')) {
                            alert("Performing One-Time Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else {
                            $("#recur_future_date_picker").hide();
                            $(".crm-i-button").show();
                            $("#future_recur_transaction").hide();
                        }
                    });

                    $("#one_time_future_date").click(function () {
                        if ($("#one_time_future_date").is(':checked')) {
                            if ($("#recur_future_date_checkbox").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#one_time_date_picker_div").show();
                                $(".crm-i-button").hide();
                                $("#future_transaction").show();
                                $("#one_time_date_picker_div").change(function () {
                                    $(function () {
                                        date_Future = new Date($("#one_time_date_picker").val());
                                        date_Future.setDate(date_Future.getDate() + 1);
                                        dateToday = new Date();
                                        if (dateToday > date_Future) {
                                            alert("Select A Future Date.");
                                        }
                                        $("#future_transaction").click(function () {
                                            billing_first_name = $("#billing_first_name").val();
                                            billing_last_name = $("#billing_last_name").val();
                                            billing_street_address = $("#billing_street_address-5").val();
                                            city = $("#billing_city-5").val();
                                            zip = $("#billing_postal_code-5").val();
                                            state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                        if($('#'+state_id).html())
                                        {           
                                            state_value = $('#' +state_id).html();
                                            state = abbrState(state_value,'abbr');
                                        }
                                        else state = "TX";
                                        alert("Scheduling Your Transaction...\nPlease Wait.");
                                        if (payment == '2') {
                                            account_holder = $("#account_holder").val();
                                            bank_account_number = $("#bank_account_number").val();
                                            bank_identification_number = $("#bank_identification_number").val();
                                            bank_name = $("#bank_name").val();
                                            if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                                alert("Fill All Fields Under Direct Direct Information.");
                                            }
                                            $.ajax({
                                                type: "POST",
                                                url: residence + '/CheckProfile.php',
                                                data: {
                                                    type: "Check",
                                                    date: date_Future,
                                                    email: email_1,
                                                    amount: amount,
                                                    account_holder: account_holder,
                                                    bank_account_number: bank_account_number,
                                                    bank_identification_number: bank_identification_number,
                                                    bank_name: bank_name,
                                                    billing_first_name: billing_first_name,
                                                    billing_last_name: billing_last_name,
                                                    billing_street_address: billing_street_address,
                                                    city: city,
                                                    state : state,
                                                    zip: zip,
                                                    org: Organization_name,
                                                    person: person_name,
                                                    mode: mode,
                                                    username : ach_username,
                                                    password : ach_password
                                                },
                                                success: function (data) {
                                                    profile_data = data.split("Profile_ID=");
                                                    profile = profile_data[1].split("\n");
                                                    CRM.api3('Job', 'create', {
                                                        "sequential": 1,
                                                        "run_frequency": "Yearly",
                                                        "name": "ACH/EFT One-Time Contribution",
                                                        "api_entity": "paperless",
                                                        "api_action": "futureprocess",
                                                        "description": profile[0],
                                                        "parameters": data,
                                                        "scheduled_run_date": date_Future
                                                    }).done(function (result) {
                                                        put = (result['values'][0]['parameters']).toString();
                                                        put = put.split("\n");
                                                        combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                        alert(combine);
                                                        window.location.href = location.hostname;
                                                    });
                                                },
                                                error: function (response) {
                                                    response = response.toString();
                                                    alert("Error! Please Reload The Page And Try Again.");
                                                },
                                            });
                                        } 
                                        else if (payment == '1') 
                                        {
                                            credit_card_number = $("#credit_card_number").val();
                                            credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                            credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                            cvv2 = $("#cvv2").val();
                                            if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                                alert("Fill All Fields Under Credit Card Information.");
                                            }
                                            $.ajax({
                                                type: "POST",
                                                url: residence + '/CardProfile.php',
                                                data: {
                                                    type: "Card",
                                                    date: date_Future,
                                                    email: email_1,
                                                    amount: amount,
                                                    credit_card_number: credit_card_number,
                                                    credit_card_exp_date_M: credit_card_exp_date_M,
                                                    credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                    cvv2: cvv2,
                                                    billing_first_name: billing_first_name,
                                                    billing_last_name: billing_last_name,
                                                    billing_street_address: billing_street_address,
                                                    city: city,
                                                    state : state,
                                                    zip: zip,
                                                    org: Organization_name,
                                                    person: person_name,
                                                    mode: mode,
                                                    username : credit_username,
                                                    password : credit_password
                                                },
                                                success: function (data) {
                                                    profile_data = data.split("Profile_ID=");
                                                    profile = profile_data[1].split("\n");
                                                    CRM.api3('Job', 'create', {
                                                        "sequential": 1,
                                                        "run_frequency": "Yearly",
                                                        "name": "Credit Card One-Time Contribution",
                                                        "api_entity": "paperless",
                                                        "api_action": "futureprocess",
                                                        "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                    }).done(function (result) {
                                                        put = (result['values'][0]['parameters']).toString();
                                                        put = put.split("\n");
                                                        combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                        alert(combine);
                                                        window.location.href = location.hostname;
                                                    });
                                                },
                                                error: function (response) {
                                                    response = response.toString();
                                                    alert("Error! Please Reload The Page And Try Again.");
                                                },
                                            });
                                        }
                                    });
                                });
                            });
                        }
                    } 
                    else if ($("#recur_future_date_checkbox").is(':checked')) 
                    {
                        alert("Performing Recurring Future Contribution.");
                        $(".crm-i-button").hide();
                    } 
                    else 
                    {
                        $("#one_time_date_picker_div").hide();
                        $(".crm-i-button").show();
                        $("#future_transaction").hide();
                    }
                });
            }
        });
    });
        if ($('input[name=payment_processor_id]').is(':checked')) 
        {
            processor_type = $('input[name=payment_processor_id]');
            processor = processor_type[0]['labels'][0]['firstChild']['data'];
            CRM.api3('PaymentProcessor', 'get', {
                "sequential": 1,
                "return": ["payment_type"],
                "name": processor
            }).done(function (result) {
                payment_type = result['values']
                [0]['payment_type'];
                payment = payment_type;

                if (payment == '1') {
                    $("#account_holder").remove();
                    $("#bank_account_number").remove();
                    $("#bank_identification_number").remove();
                    $("#bank_name").remove();
                    $('.direct_debit_info-section').remove();
                    $("#credit_card_number").change(function () {
                        $(function () {
                            credit_card_number = $("#credit_card_number").val();
                        });
                    });
                    $("#credit_card_exp_date_M").change(function () {
                        $(function () {
                            credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                        });
                    });
                    $("#credit_card_exp_date_Y").change(function () {
                        $(function () {
                            credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                        });
                    });
                    $("#cvv2").change(function () {
                        $(function () {
                            cvv2 = $("#cvv2").val();
                        });
                    });
                    $("#recur_future_date_checkbox").click(function () {
                        if ($("#recur_future_date_checkbox").is(':checked')) {
                            if ($("#one_time_future_date").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#recur_future_date_picker").show();
                                $(".crm-i-button").hide();
                                $("#future_recur_transaction").show();
                                dateToday = new Date();
                                $("#recur_future_start_date").change(function () {
                                    $(function () {
                                        dateFirst = new Date($("#recur_future_start_date").val());
                                        if (dateToday > dateFirst) {
                                            alert("Select A Future Start Date.");
                                        } 
                                        else 
                                        {
                                            dateFirst.setDate(dateFirst.getDate() + 1);
                                            dateSecond = new Date(dateFirst);
                                            dateSecond.setMonth(dateSecond.getMonth() + 1);
                                        }
                                    });
                                });
                                $("#recur_future_end_date").change(function () {
                                    $(function () {
                                        dateSecond = new Date($("#recur_future_end_date").val());
                                        if (dateToday > dateSecond || dateFirst > dateSecond) {
                                            alert("Select A Future End Date.");
                                        } else {
                                            dateSecond.setDate(dateSecond.getDate() + 1);
                                        }
                                    });
                                });
                                $("#future_recur_transaction").click(function () {
                                    billing_first_name = $("#billing_first_name").val();
                                    billing_last_name = $("#billing_last_name").val();
                                    billing_street_address = $("#billing_street_address-5").val();
                                    city = $("#billing_city-5").val();
                                    zip = $("#billing_postal_code-5").val();
                                    state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                    if($('#'+state_id).html())
                                    {           
                                        state_value = $('#' +state_id).html();
                                        state = abbrState(state_value,'abbr');
                                    }
                                    else state = "TX";                                        
                                    alert("Scheduling Your Transaction...\nPlease Wait.");
                                    days = (dateSecond - dateFirst) / (1000 * 60 * 60 * 24);
                                    if (frequency_unit == "month") {
                                        count = Math.floor(days / 30);
                                    } 
                                    else if (frequency_unit == "year") {
                                        count = Math.floor(days / 365);
                                    } 
                                    else count = Math.floor(days / 7);
                                    if (payment == '1') {
                                        credit_card_number = $("#credit_card_number").val();
                                        credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                        credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                        cvv2 = $("#cvv2").val();
                                        if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                            alert("Fill All Fields Under Credit Card Information.");
                                        }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CardRecurringProfile.php',
                                            data: {
                                                type: "Card",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                credit_card_number: credit_card_number,
                                                credit_card_exp_date_M: credit_card_exp_date_M,
                                                credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                cvv2: cvv2,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : credit_username,
                                                password : credit_password
                                            },
                                            success: function (data) {

                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "Credit Card Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    } 
                                    else if (payment == '2') 
                                    {
                                        account_holder = $("#account_holder").val();
                                        bank_account_number = $("#bank_account_number").val();
                                        bank_identification_number = $("#bank_identification_number").val();
                                        bank_name = $("#bank_name").val();
                                        if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                            alert("Fill All Fields Under Direct Direct Information.");
                                        }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CheckRecurringProfile.php',
                                            data: {
                                                type: "Check",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                account_holder: account_holder,
                                                bank_account_number: bank_account_number,
                                                bank_identification_number: bank_identification_number,
                                                bank_name: bank_name,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : ach_username,
                                                password : ach_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "ACH/EFT Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    }
                                });
                            }
                        } 
                        else if ($("#one_time_future_date").is(':checked')) 
                        {
                            alert("Performing One-Time Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#recur_future_date_picker").hide();
                            $("#future_recur_transaction").hide();
                            $(".crm-i-button").show();
                        }
                    });
                    $("#one_time_future_date").click(function () {
                        if ($("#one_time_future_date").is(':checked')) {
                            if ($("#recur_future_date_checkbox").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#one_time_date_picker_div").show();
                                $(".crm-i-button").hide();
                                $("#future_transaction").show();
                                $("#one_time_date_picker_div").change(function () {
                                    $(function () {
                                        date_Future = new Date($("#one_time_date_picker").val());
                                        date_Future.setDate(date_Future.getDate() + 1);
                                        dateToday = new Date();
                                        if (dateToday > date_Future) {
                                            alert("Select A Future Date.");
                                        }
                                        $("#future_transaction").click(function () {
                                            billing_first_name = $("#billing_first_name").val();
                                            billing_last_name = $("#billing_last_name").val();
                                            billing_street_address = $("#billing_street_address-5").val();
                                            city = $("#billing_city-5").val();
                                            zip = $("#billing_postal_code-5").val();
                                            state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                            if($('#'+state_id).html())
                                                {           
                                                    state_value = $('#' +state_id).html();
                                                    state = abbrState(state_value,'abbr');
                                                }
                                            else state = "TX";
                                            alert("Scheduling Your Transaction...\nPlease Wait.");
                                            if (payment == '1') {
                                                credit_card_number = $("#credit_card_number").val();
                                                credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                                credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                                cvv2 = $("#cvv2").val();
                                                if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                                    alert("Fill All Fields Under Credit Card Information.");
                                                }
                                                $.ajax({
                                                    type: "POST",
                                                    url: residence + '/CardProfile.php',
                                                    data: {
                                                        type: "Card",
                                                        date: date_Future,
                                                        email: email_1,
                                                        amount: amount,
                                                        credit_card_number: credit_card_number,
                                                        credit_card_exp_date_M: credit_card_exp_date_M,
                                                        credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                        cvv2: cvv2,
                                                        billing_first_name: billing_first_name,
                                                        billing_last_name: billing_last_name,
                                                        billing_street_address: billing_street_address,
                                                        city: city,
                                                        state : state,
                                                        zip: zip,
                                                        org: Organization_name,
                                                        person: person_name,
                                                        mode: mode,
                                                        username : credit_username,
                                                        password : credit_password
                                                    },
                                                    success: function (data) {
                                                        profile_data = data.split("Profile_ID=");
                                                        profile = profile_data[1].split("\n");
                                                        CRM.api3('Job', 'create', {
                                                            "sequential": 1,
                                                            "run_frequency": "Yearly",
                                                            "name": "Credit Card One-Time Contribution",
                                                            "api_entity": "paperless",
                                                            "api_action": "futureprocess",
                                                            "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                        }).done(function (result) {
                                                            put = (result['values'][0]['parameters']).toString();
                                                            put = put.split("\n");
                                                            combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                            alert(combine);
                                                            window.location.href = location.hostname;
                                                        });
                                                    },
                                                    error: function (response) {
                                                        alert("Error! Please Reload The Page And Try Again.");
                                                    },
                                                });
                                            } 
                                            else if (payment == '2') {
                                                account_holder = $("#account_holder").val();
                                                bank_account_number = $("#bank_account_number").val();
                                                bank_identification_number = $("#bank_identification_number").val();
                                                bank_name = $("#bank_name").val();
                                                if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                                    alert("Fill All Fields Under Direct Direct Information.");
                                                }
                                                $.ajax({
                                                    type: "POST",
                                                    url: residence + '/CheckProfile.php',
                                                    data: {
                                                        type: "Check",
                                                        date: date_Future,
                                                        email: email_1,
                                                        amount: amount,
                                                        account_holder: account_holder,
                                                        bank_account_number: bank_account_number,
                                                        bank_identification_number: bank_identification_number,
                                                        bank_name: bank_name,
                                                        billing_first_name: billing_first_name,
                                                        billing_last_name: billing_last_name,
                                                        billing_street_address: billing_street_address,
                                                        city: city,
                                                        state : state,
                                                        zip: zip,
                                                        org: Organization_name,
                                                        person: person_name,
                                                        mode: mode,
                                                        username : ach_username,
                                                        password : ach_password
                                                    },
                                                    success: function (data) {
                                                        profile_data = data.split("Profile_ID=");
                                                        profile = profile_data[1].split("\n");
                                                        CRM.api3('Job', 'create', {
                                                            "sequential": 1,
                                                            "run_frequency": "Yearly",
                                                            "name": "ACH/EFT One-Time Contribution",
                                                            "api_entity": "paperless",
                                                            "api_action": "futureprocess",
                                                            "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                        }).done(function (result) {
                                                            put = (result['values'][0]['parameters']).toString();
                                                            put = put.split("\n");
                                                            combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                            alert(combine);
                                                            window.location.href = location.hostname;
                                                        });
                                                    },
                                                    error: function (response) {
                                                        response = response.toString();
                                                        alert("Error! Please Reload The Page And Try Again.");
                                                    },
                                                });
                                            }
                                        });
                                    });
                                });
                            }
                        } 
                        else if ($("#recur_future_date_checkbox").is(':checked')) 
                        {
                            alert("Performing Recurring Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#one_time_date_picker_div").hide();
                            $(".crm-i-button").show();
                            $("#future_transaction").hide();
                        }
                    });
                } 
                else if (payment == '2') 
                {
                    $("#credit_card_number").remove();
                    $("#credit_card_exp_date_M").remove();
                    $("#credit_card_exp_date_Y").remove();
                    $("#cvv2").remove();
                    $('.credit_card_info-section').remove();
                    $("#account_holder").change(function () {
                        $(function () {
                            account_holder = $("#account_holder").val();
                        });
                    });
                    $("#bank_account_number").change(function () {
                        $(function () {
                            bank_account_number = $("#bank_account_number").val();
                        });
                    });
                    $("#bank_identification_number").change(function () {
                        $(function () {
                            bank_identification_number = $("#bank_identification_number").val();
                        });
                    });
                    $("#bank_name").change(function () {
                        $(function () {
                            bank_name = $("#bank_name").val();
                        });
                    });
                    $("#recur_future_date_checkbox").click(function () {
                        if ($("#recur_future_date_checkbox").is(':checked')) {
                            if ($("#one_time_future_date").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else {
                                $("#recur_future_date_picker").show();
                                $(".crm-i-button").hide();
                                $("#future_recur_transaction").show();
                                dateToday = new Date();
                                $("#recur_future_start_date").change(function () {
                                    $(function () {
                                        dateFirst = new Date($("#recur_future_start_date").val());
                                        if (dateToday > dateFirst) {
                                            alert("Select A Future Start Date");
                                        } else {
                                            dateFirst.setDate(dateFirst.getDate() + 1);
                                            dateSecond = new Date(dateFirst);
                                            dateSecond.setMonth(dateSecond.getMonth() + 1);
                                        }
                                    });
                                });
                                $("#recur_future_end_date").change(function () {
                                    $(function () {
                                        dateSecond = new Date($("#recur_future_end_date").val());
                                        if (dateToday > dateSecond || dateFirst > dateSecond) {
                                            alert("Select A Future End Date");
                                        } else {
                                            dateSecond.setDate(dateSecond.getDate() + 1);
                                        }
                                    });
                                });
                                $("#future_recur_transaction").click(function () {
                                    billing_first_name = $("#billing_first_name").val();
                                    billing_last_name = $("#billing_last_name").val();
                                    billing_street_address = $("#billing_street_address-5").val();
                                    city = $("#billing_city-5").val();
                                    zip = $("#billing_postal_code-5").val();
                                    state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                    if($('#'+state_id).html())
                                        {           
                                            state_value = $('#' +state_id).html();
                                            state = abbrState(state_value,'abbr');
                                        }
                                    else state = "TX";
                                    alert("Scheduling Your Transaction...\nPlease Wait.");
                                    days = (dateSecond - dateFirst) / (1000 * 60 * 60 * 24);
                                    if (frequency_unit == "month") {
                                        count = Math.floor(days / 30);
                                    } 
                                    else if (frequency_unit == "year") {
                                        count = Math.floor(days / 365);
                                    } 
                                    else count = Math.floor(days / 7);
                                    if (payment == '2') {
                                        account_holder = $("#account_holder").val();
                                        bank_account_number = $("#bank_account_number").val();
                                        bank_identification_number = $("#bank_identification_number").val();
                                        bank_name = $("#bank_name").val();
                                        if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                            alert("Fill All Fields Under Direct Direct Information.");
                                        }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CheckRecurringProfile.php',
                                            data: {
                                                type: "Check",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                account_holder: account_holder,
                                                bank_account_number: bank_account_number,
                                                bank_identification_number: bank_identification_number,
                                                bank_name: bank_name,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : ach_username,
                                                password : ach_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "ACH/EFT Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                                alert("Error! Please Reload The Page And Try Again.");
                                            },
                                        });
                                    } 
                                    else if (payment == '1') 
                                    {
                                        credit_card_number = $("#credit_card_number").val();
                                        credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                        credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                        cvv2 = $("#cvv2").val();
                                        if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                            alert("Fill All Fields Under Credit Card Information.");
                                        }
                                        $.ajax({
                                            type: "POST",
                                            url: residence + '/CardRecurringProfile.php',
                                            data: {
                                                type: "Card",
                                                dateFirst: dateFirst,
                                                dateSecond: dateSecond,
                                                email: email_1,
                                                amount: amount,
                                                credit_card_number: credit_card_number,
                                                credit_card_exp_date_M: credit_card_exp_date_M,
                                                credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                cvv2: cvv2,
                                                billing_first_name: billing_first_name,
                                                billing_last_name: billing_last_name,
                                                billing_street_address: billing_street_address,
                                                city: city,
                                                state : state,
                                                zip: zip,
                                                frequency_unit: frequency_unit_value,
                                                count: count,
                                                org: Organization_name,
                                                person: person_name,
                                                mode: mode,
                                                username : credit_username,
                                                password : credit_password
                                            },
                                            success: function (data) {
                                                profile_data = data.split("Profile_ID=");
                                                profile = profile_data[1].split("\n");
                                                CRM.api3('Job', 'create', {
                                                    "sequential": 1,
                                                    "run_frequency": frequency_unit_value,
                                                    "name": "Credit Card Recurring Contribution",
                                                    "api_entity": "paperless",
                                                    "api_action": "futurerecurringprocess",
                                                    "description": profile[0],
                                                    "parameters": data,
                                                    "scheduled_run_date": dateFirst
                                                }).done(function (result) {
                                                    put = (result['values'][0]['parameters']).toString();
                                                    put = put.split("\n");
                                                    combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                    alert(combine);
                                                    window.location.href = location.hostname;
                                                });
                                            },
                                            error: function (response) {
                                                response = response.toString();
                                            },
                                        });
                                    }
                                });
                            }
                        } 
                        else if ($("#one_time_future_date").is(':checked')) 
                        {
                            alert("Performing One-Time Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#recur_future_date_picker").hide();
                            $(".crm-i-button").show();
                            $("#future_recur_transaction").hide();
                        }
                    });
                    $("#one_time_future_date").click(function () {
                        if ($("#one_time_future_date").is(':checked')) {
                            if ($("#recur_future_date_checkbox").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#one_time_date_picker_div").show();
                                $(".crm-i-button").hide();
                                $("#future_transaction").show();
                                $("#one_time_date_picker_div").change(function () {
                                    $(function () {
                                        date_Future = new Date($("#one_time_date_picker").val());
                                        date_Future.setDate(date_Future.getDate() + 1);
                                        dateToday = new Date();
                                        if (dateToday > date_Future) {
                                            alert("Select A Future Date.");
                                        }
                                        $("#future_transaction").click(function () {
                                            billing_first_name = $("#billing_first_name").val();
                                            billing_last_name = $("#billing_last_name").val();
                                            billing_street_address = $("#billing_street_address-5").val();
                                            city = $("#billing_city-5").val();
                                            zip = $("#billing_postal_code-5").val();
                                            state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                            if($('#'+state_id).html())
                                                {           
                                                    state_value = $('#' +state_id).html();
                                                    state = abbrState(state_value,'abbr');
                                                }
                                            else state = "TX";
                                            alert("Scheduling Your Transaction...\nPlease Wait.");
                                            if (payment == '2') {
                                                account_holder = $("#account_holder").val();
                                                bank_account_number = $("#bank_account_number").val();
                                                bank_identification_number = $("#bank_identification_number").val();
                                                bank_name = $("#bank_name").val();
                                                if (!account_holder || !bank_account_number || !bank_identification_number || !bank_name) {
                                                    alert("Fill All Fields Under Direct Direct Information.");
                                                }
                                                $.ajax({
                                                    type: "POST",
                                                    url: residence + '/CheckProfile.php',
                                                    data: {
                                                        type: "Check",
                                                        date: date_Future,
                                                        email: email_1,
                                                        amount: amount,
                                                        account_holder: account_holder,
                                                        bank_account_number: bank_account_number,
                                                        bank_identification_number: bank_identification_number,
                                                        bank_name: bank_name,
                                                        billing_first_name: billing_first_name,
                                                        billing_last_name: billing_last_name,
                                                        billing_street_address: billing_street_address,
                                                        city: city,
                                                        state : state,
                                                        zip: zip,
                                                        org: Organization_name,
                                                        person: person_name,
                                                        mode: mode,
                                                        username : ach_username,
                                                        password : ach_password
                                                    },
                                                    success: function (data) {
                                                        profile_data = data.split("Profile_ID=");
                                                        profile = profile_data[1].split("\n");
                                                        CRM.api3('Job', 'create', {
                                                            "sequential": 1,
                                                            "run_frequency": "Yearly",
                                                            "name": "ACH/EFT One-Time Contribution",
                                                            "api_entity": "paperless",
                                                            "api_action": "futureprocess",
                                                            "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                        }).done(function (result) {
                                                            put = (result['values'][0]['parameters']).toString();
                                                            put = put.split("\n");
                                                            combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                            alert(combine);
                                                             window.location.href = location.hostname;
                                                        });
                                                    },
                                                    error: function (response) {
                                                        alert("Error! Please Reload The Page And Try Again.");
                                                    },
                                                });
                                            }
                                            else if (payment == '1') 
                                            {
                                                credit_card_number = $("#credit_card_number").val();
                                                credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                                                credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                                                cvv2 = $("#cvv2").val();
                                                if (!credit_card_number || !credit_card_exp_date_M || !credit_card_exp_date_Y || !cvv2) {
                                                    alert("Fill All Fields Under Credit Card Information.");
                                                }
                                                $.ajax({
                                                    type: "POST",
                                                    url: residence + '/CardProfile.php',
                                                    data: {
                                                        type: "Card",
                                                        date: date_Future,
                                                        email: email_1,
                                                        amount: amount,
                                                        credit_card_number: credit_card_number,
                                                        credit_card_exp_date_M: credit_card_exp_date_M,
                                                        credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                        cvv2: cvv2,
                                                        billing_first_name: billing_first_name,
                                                        billing_last_name: billing_last_name,
                                                        billing_street_address: billing_street_address,
                                                        city: city,
                                                        state : state,
                                                        zip: zip,
                                                        org: Organization_name,
                                                        person: person_name,
                                                        mode: mode,
                                                        username : credit_username,
                                                        password : credit_password
                                                    },
                                                    success: function (data) {
                                                        profile_data = data.split("Profile_ID=");
                                                        profile = profile_data[1].split("\n");
                                                        CRM.api3('Job', 'create', {
                                                            "sequential": 1,
                                                            "run_frequency": "Yearly",
                                                            "name": "Credit Card One-Time Contribution",
                                                            "api_entity": "paperless",
                                                            "api_action": "futureprocess",
                                                            "description": profile[0],
                                                            "parameters": data,
                                                            "scheduled_run_date": date_Future
                                                        }).done(function (result) {
                                                            put = (result['values'][0]['parameters']).toString();
                                                            put = put.split("\n");
                                                            combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                            alert(combine);
                                                             window.location.href = location.hostname;
                                                        });
                                                    },
                                                    error: function (response) {
                                                        response = response.toString();
                                                        alert("Error! Please Reload The Page And Try Again.");
                                                    },
                                                });
                                            }
                                        });
                                    });
                                });
                            }
                        } 
                        else if ($("#recur_future_date_checkbox").is(':checked')) 
                        {
                            alert("Performing Recurring Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#one_time_date_picker_div").hide();
                            $(".crm-i-button").show();
                            $("#future_transaction").hide();
                        }
                    });
                }
            });
        } 
        else 
        {
            if ($('input[name=payment_processor_id]').attr('type') == 'hidden') 
            {
                payment_type = $('#payment_information legend').html();
                check = payment_type.includes("Direct Debit");
                card = payment_type.includes("Credit Card");
                if (check == true && card == false) payment = '2';
                else if (card == true && check == false) payment = '1';
                if (payment == '1') 
                {
                    $("#account_holder").remove();
                    $("#bank_account_number").remove();
                    $("#bank_identification_number").remove();
                    $("#bank_name").remove();
                    $('.direct_debit_info-section').remove();
                    $("#credit_card_number").change(function () {
                        $(function () {
                            credit_card_number = $("#credit_card_number").val();
                        });
                    });
                    $("#credit_card_exp_date_M").change(function () {
                        $(function () {
                            credit_card_exp_date_M = $("#credit_card_exp_date_M").val();
                        });
                    });
                    $("#credit_card_exp_date_Y").change(function () {
                        $(function () {
                            credit_card_exp_date_Y = $("#credit_card_exp_date_Y").val();
                        });
                    });
                    $("#cvv2").change(function () {
                        $(function () {
                            cvv2 = $("#cvv2").val();
                        });
                    });
                    $("#recur_future_date_checkbox").click(function () {
                        if ($("#recur_future_date_checkbox").is(':checked')) {
                            if ($("#one_time_future_date").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#recur_future_date_picker").show();
                                $(".crm-i-button").hide();
                                $("#future_recur_transaction").show();
                                dateToday = new Date();
                                $("#recur_future_start_date").change(function () {
                                    $(function () {
                                        dateFirst = new Date($("#recur_future_start_date").val());
                                        if (dateToday > dateFirst) {
                                            alert("Select A Future Start Date.");
                                        } else {
                                            dateFirst.setDate(dateFirst.getDate() + 1);
                                            dateSecond = new Date(dateFirst);
                                            dateSecond.setMonth(dateSecond.getMonth() + 1);
                                        }
                                    });
                                });
                                $("#recur_future_end_date").change(function () {
                                    $(function () {
                                        dateSecond = new Date($("#recur_future_end_date").val());
                                        if (dateToday > dateSecond || dateFirst > dateSecond) {
                                            alert("Select A Future End Date.");
                                        } else {
                                            dateSecond.setDate(dateSecond.getDate() + 1);
                                        }
                                    });
                                });
                                $("#future_recur_transaction").click(function () {
                                    billing_first_name = $("#billing_first_name").val();
                                    billing_last_name = $("#billing_last_name").val();
                                    billing_street_address = $("#billing_street_address-5").val();
                                    city = $("#billing_city-5").val();
                                    zip = $("#billing_postal_code-5").val();
                                    state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                    if($('#'+state_id).html())
                                        {           
                                            state_value = $('#' +state_id).html();
                                            state = abbrState(state_value,'abbr');
                                        }
                                    else state = "TX";
                                    alert("Scheduling Your Transaction...\nPlease Wait.");
                                    days = (dateSecond - dateFirst) / (1000 * 60 * 60 * 24);
                                    if (frequency_unit == "month") {
                                        count = Math.floor(days / 30);
                                    } 
                                    else if (frequency_unit == "year") {
                                        count = Math.floor(days / 365);
                                    } 
                                    else count = Math.floor(days / 7);
                                    $.ajax({
                                        type: "POST",
                                        url: residence + '/CardRecurringProfile.php',
                                        data: {
                                            type: "Card",
                                            dateFirst: dateFirst,
                                            dateSecond: dateSecond,
                                            email: email_1,
                                            amount: amount,
                                            credit_card_number: credit_card_number,
                                            credit_card_exp_date_M: credit_card_exp_date_M,
                                            credit_card_exp_date_Y: credit_card_exp_date_Y,
                                            cvv2: cvv2,
                                            billing_first_name: billing_first_name,
                                            billing_last_name: billing_last_name,
                                            billing_street_address: billing_street_address,
                                            city: city,
                                            state : state,
                                            zip: zip,
                                            frequency_unit: frequency_unit_value,
                                            count: count,
                                            org: Organization_name,
                                            person: person_name,
                                            mode: mode,
                                            username : credit_username,
                                            password : credit_password
                                        },
                                        success: function (data) {
                                            profile_data = data.split("Profile_ID=");
                                            profile = profile_data[1].split("\n");
                                            CRM.api3('Job', 'create', {
                                                "sequential": 1,
                                                "run_frequency": frequency_unit_value,
                                                "name": "Credit Card Recurring Contribution",
                                                "api_entity": "paperless",
                                                "api_action": "futurerecurringprocess",
                                                "description": profile[0],
                                                "parameters": data,
                                                "scheduled_run_date": dateFirst
                                            }).done(function (result) {
                                                put = (result['values'][0]['parameters']).toString();
                                                put = put.split("\n");
                                                combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                alert(combine);
                                                window.location.href = location.hostname;
                                            });
                                        },
                                        error: function (response) {
                                            response = response.toString();
                                            alert("Error! Please Reload The Page And Try Again.");
                                        },
                                    });
                                });
                            }
                        } 
                        else if ($("#one_time_future_date").is(':checked')) 
                        {
                            alert("Performing One-Time Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#recur_future_date_picker").hide();
                            $("#future_recur_transaction").hide();
                            $(".crm-i-button").show();
                        }
                    });
                    $("#one_time_future_date").click(function () 
                    {
                        if ($("#one_time_future_date").is(':checked')) {
                            if ($("#recur_future_date_checkbox").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#one_time_date_picker_div").show();
                                $(".crm-i-button").hide();
                                $("#future_transaction").show();
                                $("#one_time_date_picker_div").change(function () {
                                    $(function () {
                                        date_Future = new Date($("#one_time_date_picker").val());
                                        date_Future.setDate(date_Future.getDate() + 1);
                                        dateToday = new Date();
                                        if (dateToday > date_Future) {
                                            alert("Select A Future Date.");
                                        }
                                        $("#future_transaction").click(function () {
                                            billing_first_name = $("#billing_first_name").val();
                                            billing_last_name = $("#billing_last_name").val();
                                            billing_street_address = $("#billing_street_address-5").val();
                                            city = $("#billing_city-5").val();
                                            zip = $("#billing_postal_code-5").val();
                                            state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                            if($('#'+state_id).html())
                                            {           
                                                state_value = $('#' +state_id).html();
                                                state = abbrState(state_value,'abbr');
                                            }
                                            else state = "TX";
                                            alert("Scheduling Your Transaction...\nPlease Wait.");
                                            $.ajax({
                                                type: "POST",
                                                url: residence + '/CardProfile.php',
                                                data: {
                                                    type: "Card",
                                                    date: date_Future,
                                                    email: email_1,
                                                    amount: amount,
                                                    credit_card_number: credit_card_number,
                                                    credit_card_exp_date_M: credit_card_exp_date_M,
                                                    credit_card_exp_date_Y: credit_card_exp_date_Y,
                                                    cvv2: cvv2,
                                                    billing_first_name: billing_first_name,
                                                    billing_last_name: billing_last_name,
                                                    billing_street_address: billing_street_address,
                                                    city: city,
                                                    state : state,
                                                    zip: zip,
                                                    org: Organization_name,
                                                    person: person_name,
                                                    mode: mode,
                                                    username : credit_username,
                                                    password : credit_password
                                                },
                                                success: function (data) {
                                                    profile_data = data.split("Profile_ID=");
                                                    profile = profile_data[1].split("\n");
                                                    CRM.api3('Job', 'create', {
                                                        "sequential": 1,
                                                        "run_frequency": "Yearly",
                                                        "name": "Credit Card One-Time Contribution",
                                                        "api_entity": "paperless",
                                                        "api_action": "futureprocess",
                                                        "description": profile[0],
                                                        "parameters": data,
                                                        "scheduled_run_date": date_Future
                                                    }).done(function (result) {
                                                        put = (result['values'][0]['parameters']).toString();
                                                        put = put.split("\n");
                                                        combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                        alert(combine);
                                                         window.location.href = location.hostname;
                                                    });
                                                },
                                                error: function (response) {
                                                    response = response.toString();
                                                    alert("Error! Please Reload The Page And Try Again.");
                                                },
                                            });
                                        });
                                    });
                                });
                            }
                        } 
                        else if ($("#recur_future_date_checkbox").is(':checked')) 
                        {
                            alert("Performing Recurring Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#one_time_date_picker_div").hide();
                            $(".crm-i-button").show();
                            $("#future_transaction").hide();
                        }
                    });
                }
                else if (payment == '2') 
                {
                    $("#credit_card_number").remove();
                    $("#credit_card_exp_date_M").remove();
                    $("#credit_card_exp_date_Y").remove();
                    $("#cvv2").remove();
                    $('.credit_card_info-section').remove();
                    $("#account_holder").change(function () {
                        $(function () {
                            account_holder = $("#account_holder").val();
                        });
                    });
                    $("#bank_account_number").change(function () {
                        $(function () {
                            bank_account_number = $("#bank_account_number").val();
                        });
                    });
                    $("#bank_identification_number").change(function () {
                        $(function () {
                            bank_identification_number = $("#bank_identification_number").val();
                        });
                    });
                    $("#bank_name").change(function () {
                        $(function () {
                            bank_name = $("#bank_name").val();
                        });
                    });
                    $("#recur_future_date_checkbox").click(function () {
                        if ($("#recur_future_date_checkbox").is(':checked')) {
                            if ($("#one_time_future_date").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#recur_future_date_picker").show();
                                $(".crm-i-button").hide();
                                $("#future_recur_transaction").show();
                                dateToday = new Date();
                                $("#recur_future_start_date").change(function () {
                                    $(function () {
                                        dateFirst = new Date($("#recur_future_start_date").val());
                                        if (dateToday > dateFirst) {
                                            alert("Select A Future Start Date");
                                        } else {
                                            dateFirst.setDate(dateFirst.getDate() + 1);
                                            dateSecond = new Date(dateFirst);
                                            dateSecond.setMonth(dateSecond.getMonth() + 1);
                                        }
                                    });
                                });
                                $("#recur_future_end_date").change(function () {
                                    $(function () {
                                        dateSecond = new Date($("#recur_future_end_date").val());
                                        if (dateToday > dateSecond || dateFirst > dateSecond) {
                                            alert("Select A Future End Date");
                                        } else {
                                            dateSecond.setDate(dateSecond.getDate() + 1);
                                        }
                                    });
                                });
                                $("#future_recur_transaction").click(function () {
                                    billing_first_name = $("#billing_first_name").val();
                                    billing_last_name = $("#billing_last_name").val();
                                    billing_street_address = $("#billing_street_address-5").val();
                                    city = $("#billing_city-5").val();
                                    zip = $("#billing_postal_code-5").val();
                                    state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                    if($('#'+state_id).html())
                                    {           
                                        state_value = $('#' +state_id).html();
                                        state = abbrState(state_value,'abbr');
                                    }
                                    else state = "TX";
                                    alert("Scheduling Your Transaction...\nPlease Wait.");
                                    days = (dateSecond - dateFirst) / (1000 * 60 * 60 * 24);
                                    if (frequency_unit == "month") {
                                        count = Math.floor(days / 30);
                                    } else if (frequency_unit == "year") {
                                        count = Math.floor(days / 365);
                                    } else count = Math.floor(days / 7);
                                    $.ajax({
                                        type: "POST",
                                        url: residence + '/CheckRecurringProfile.php',
                                        data: {
                                            type: "Check",
                                            dateFirst: dateFirst,
                                            dateSecond: dateSecond,
                                            email: email_1,
                                            amount: amount,
                                            account_holder: account_holder,
                                            bank_account_number: bank_account_number,
                                            bank_identification_number: bank_identification_number,
                                            bank_name: bank_name,
                                            billing_first_name: billing_first_name,
                                            billing_last_name: billing_last_name,
                                            billing_street_address: billing_street_address,
                                            city: city,
                                            state : state,
                                            zip: zip,
                                            frequency_unit: frequency_unit_value,
                                            count: count,
                                            org: Organization_name,
                                            person: person_name,
                                            mode: mode,
                                           username : ach_username,
                                            password : ach_password
                                        },
                                        success: function (data) {
                                            profile_data = data.split("Profile_ID=");
                                            profile = profile_data[1].split("\n");
                                            CRM.api3('Job', 'create', {
                                                "sequential": 1,
                                                "run_frequency": frequency_unit_value,
                                                "name": "ACH/EFT Recurring Contribution",
                                                "api_entity": "paperless",
                                                "api_action": "futurerecurringprocess",
                                                "description": profile[0],
                                                "parameters": data,
                                                "scheduled_run_date": dateFirst
                                            }).done(function (result) {
                                                put = (result['values'][0]['parameters']).toString();
                                                put = put.split("\n");
                                                combine = "Payment Scheduled Successfully :-\n \n" + put[7] + "\n" + put[8];
                                                alert(combine);
                                                window.location.href = location.hostname;
                                            });
                                        },
                                        error: function (response) {
                                            response = response.toString();
                                            alert("Error! Please Reload The Page And Try Again.");
                                        },
                                    });
                                });
                            }
                        } 
                        else if ($("#one_time_future_date").is(':checked')) 
                        {
                            alert("Performing One-Time Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#recur_future_date_picker").hide();
                            $(".crm-i-button").show();
                            $("#future_recur_transaction").hide();
                        }
                    });
                    $("#one_time_future_date").click(function () {
                        if ($("#one_time_future_date").is(':checked')) {
                            if ($("#recur_future_date_checkbox").is(':checked')) {
                                alert("Please Select Only One Type Of Contribution.");
                                $(".crm-i-button").hide();
                            } 
                            else 
                            {
                                $("#one_time_date_picker_div").show();
                                $(".crm-i-button").hide();
                                $("#future_transaction").show();
                                $("#one_time_date_picker_div").change(function () {
                                    $(function () {
                                        date_Future = new Date($("#one_time_date_picker").val());
                                        date_Future.setDate(date_Future.getDate() + 1);
                                        dateToday = new Date();
                                        if (dateToday > date_Future) {
                                            alert("Select A Future Date.");
                                        }
                                        $("#future_transaction").click(function () {
                                            billing_first_name = $("#billing_first_name").val();
                                            billing_last_name = $("#billing_last_name").val();
                                            billing_street_address = $("#billing_street_address-5").val();
                                            city = $("#billing_city-5").val();
                                            zip = $("#billing_postal_code-5").val();
                                            state_id = $('.select2-choice')[1]['childNodes'][1]['id'];
        
                                            if($('#'+state_id).html())
                                            {           
                                                state_value = $('#' +state_id).html();
                                                state = abbrState(state_value,'abbr');
                                            }
                                            else state = "TX";
                                            alert("Scheduling Your Transaction...\nPlease Wait.");
                                            $.ajax({
                                                type: "POST",
                                                url: residence + '/CheckProfile.php',
                                                data: {
                                                    type: "Check",
                                                    date: date_Future,
                                                    email: email_1,
                                                    amount: amount,
                                                    account_holder: account_holder,
                                                    bank_account_number: bank_account_number,
                                                    bank_identification_number: bank_identification_number,
                                                    bank_name: bank_name,
                                                    billing_first_name: billing_first_name,
                                                    billing_last_name: billing_last_name,
                                                    billing_street_address: billing_street_address,
                                                    city: city,
                                                    state : state,
                                                    zip: zip,
                                                    org: Organization_name,
                                                    person: person_name,
                                                    mode: mode,
                                                    username : ach_username,
                                                    password : ach_password
                                                },
                                                success: function (data) {
                                                    profile_data = data.split("Profile_ID=");
                                                    profile = profile_data[1].split("\n");
                                                    CRM.api3('Job', 'create', {
                                                        "sequential": 1,
                                                        "run_frequency": "Yearly",
                                                        "name": "ACH/EFT One-Time Contribution",
                                                        "api_entity": "paperless",
                                                        "api_action": "futureprocess",
                                                        "description": profile[0],
                                                        "parameters": data,
                                                        "scheduled_run_date": date_Future
                                                    }).done(function (result) {
                                                        put = (result['values'][0]['parameters']).toString();
                                                        put = put.split("\n");
                                                        combine = "Payment Scheduled Successfully :-\n \n" + put[3] + "\n" + put[4];
                                                        alert(combine);
                                                        window.location.href = location.hostname;
                                                    });
                                                },
                                                error: function (response) {
                                                    response = response.toString();
                                                    alert("Error! Please Reload The Page And Try Again.");
                                                },
                                            });
                                        });
                                    });
                                });
                            }
                        } 
                        else if ($("#recur_future_date_checkbox").is(':checked')) 
                        {
                            alert("Performing Recurring Future Contribution.");
                            $(".crm-i-button").hide();
                        } 
                        else 
                        {
                            $("#one_time_date_picker_div").hide();
                            $(".crm-i-button").show();
                            $("#future_transaction").hide();
                        }
                    });
                }
            } 
            else 
            {
                alert("Please Select A Payment Method Before Filling The Form.");
            }
        }
    });
});
</script> 
{/literal}
