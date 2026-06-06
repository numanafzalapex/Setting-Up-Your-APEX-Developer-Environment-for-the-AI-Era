procedure createQuickTemplate(templateTitle   in varchar2, 
                                templateMessage in varchar2, 
                                userName        in varchar2, 
                                errorCode       out number, 
                                errorMessage    out varchar2, 
                                response        out varchar2) as 
    l_templateId apex_hris.sd_quick_template.template_id%type;  
    l_errorCode    number(3) := 200; 
    l_errorMessage varchar2(1000); 
    l_response     varchar2(200); 
  begin 
    if templateTitle is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: templateTitle not found in createQuickTemplate API.'; 
      l_response     := 'fail'; 
    elsif templateMessage is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: templateMessage not found in createQuickTemplate API.';
      l_response     := 'fail'; 
    elsif userName is null then 
      l_errorCode    := 400;
      l_errorMessage := 'Error: userName not found in createQuickTemplate API.'; 
      l_response     := 'fail'; 
    end if;   
    if l_errorCode = 200 then 
      l_templateId := apex_hris.sd_quick_template_seq.nextval; 
      insert into apex_hris.sd_quick_template 
        (template_id, 
         template_title, 
         template_message, 
         last_update_date, 
         last_updated_by, 
         last_update_login,
         created_by, 
         creation_date) 
      values 
        (l_templateId, 
         templateTitle, 
         templateMessage, 
         sysdate, 
         userName, 
         null, 
         userName, 
         sysdate); 
      commit; 
      l_errorMessage := 'success'; 
      l_response     := l_templateId; 
    end if; 
    errorCode    := l_errorCode; 
    errorMessage := l_errorMessage; 
    response     := l_response; 
  exception 
    when others then 
      errorCode    := 400; 
      errorMessage := 'Error: an unhandaled exception from createQuickTemplate API. ' || 
                      substr(sqlerrm, 1, 450); 
      response     := 'fail'; 
  end createQuickTemplate; 

  procedure updateQuickTemplate(templateId      in number, 
                                templateTitle   in varchar2, 
                                templateMessage in varchar2, 
                                userName        in varchar2, 
                                errorCode       out number, 
                                errorMessage    out varchar2, 
                                response        out varchar2) as 
    l_errorCode    number(3) := 200; 
    l_errorMessage varchar2(1000); 
    l_response     varchar2(200); 
  begin 
    if templateId is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: templateId not found in updateQuickTemplate API.'; 
      l_response     := 'fail'; 
    elsif templateTitle is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: templateTitle not found in updateQuickTemplate API.'; 
      l_response     := 'fail'; 
    elsif templateMessage is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: templateMessage not found in updateQuickTemplate API.'; \
      l_response     := 'fail'; 
    elsif userName is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: userName not found in updateQuickTemplate API.'; 
      l_response     := 'fail'; 
    end if; 
    if l_errorCode = 200 then 
      update apex_hris.sd_quick_template i 
         set i.template_title   = templateTitle, 
             i.template_message = templateMessage, 
             i.last_update_date = sysdate, 
             i.last_updated_by  = userName 
       where i.template_id = templateId;    
      commit; 
      l_errorMessage := 'success'; 
      l_response     := null; 
    end if; 
    errorCode    := l_errorCode; 
    errorMessage := l_errorMessage; 
    response     := l_response; 
  exception 
      when others then 
      errorCode    := 400; 
      errorMessage := 'Error: an unhandaled exception from updateQuickTemplate API. ' || 
                      substr(sqlerrm, 1, 450); 
      response     := 'fail'; 
  end updateQuickTemplate; 

  procedure deleteQuickTemplate(templateId   in number, 
                                userName     in varchar2, 
                                errorCode    out number, 
                                errorMessage out varchar2, 
                                response     out varchar2) as 
    l_errorCode    number(3) := 200; 
    l_errorMessage varchar2(1000); 
    l_response     varchar2(200); 
  begin 
    if templateId is null then 
      l_errorCode    := 400; 
      l_errorMessage := 'Error: templateId not found in deleteQuickTemplate API.'; 
      l_response     := 'fail'; 
    end if; 
    if l_errorCode = 200 then 
      delete from apex_hris.sd_quick_template 
       where template_id = templateId; 
      commit; 
      l_errorMessage := 'success'; 
      l_response     := null; 
    end if; 

    errorCode    := l_errorCode; 
    errorMessage := l_errorMessage; 
    response     := l_response; 
  exception 
    when others then 
      errorCode    := 400; 
      errorMessage := 'Error: an unhandaled exception from deleteQuickTemplate API. ' || 
                      substr(sqlerrm, 1, 450); 
      response     := 'fail'; 
  end deleteQuickTemplate; 