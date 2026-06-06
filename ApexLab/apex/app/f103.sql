prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>3673866878281948
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'ADMIN'
);
end;
/
 
prompt APPLICATION 103 - HRMS
--
-- Application Export:
--   Application:     103
--   Name:            HRMS
--   Date and Time:   10:20 Saturday June 6, 2026
--   Exported By:     NUMAN
--   Flashback:       0
--   Export Type:     Application Export
<<<<<<< HEAD
--     Pages:                     30
--       Items:                   53
--       Validations:              2
--       Processes:               28
--       Regions:                 70
--       Buttons:                 48
--       Dynamic Actions:          10
=======
--     Pages:                     28
--       Items:                   46
--       Validations:              2
--       Processes:               24
--       Regions:                 66
--       Buttons:                 42
--       Dynamic Actions:          9
>>>>>>> parent of 68b792e (Add Lookups)
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  8
--         Breadcrumbs:            1
--           Entries:              2
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   9
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1672039621125371
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ADMIN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'HRMS')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'HRMS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'EEBB0BAC355231A3E390EB86768B37F275265FCD424F02D9A4C1050028928457'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(6278204466331926)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'HRMS'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(6285024586332259)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'HRMS'
,p_created_on=>wwv_flow_imp.dz('20260606101625Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101710Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461198101630
,p_version_scn=>'21028215'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>6494858776336171
,p_ai_remote_server_id=>4472739713210226
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(6279138545331960)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(6279862838332129)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_103_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>6494858776336171
,p_name=>'App 103 Push Notifications Credentials'
,p_static_id=>'app-103-push-notifications-credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101710Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --workspace/credentials/credentials_for_cohere_ai
begin
wwv_imp_workspace.create_credential(
 p_id=>4472383075210170
,p_name=>'Credentials for cohere ai'
,p_static_id=>'credentials-for-cohere-ai'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.cohere.ai/v2',
''))
,p_prompt_on_install=>true
,p_created_on=>wwv_flow_imp.dz('20260517125559Z')
,p_updated_on=>wwv_flow_imp.dz('20260517125559Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --workspace/remote_servers/cohere_ai
begin
wwv_imp_workspace.create_remote_server(
 p_id=>4472739713210226
,p_name=>'Cohere AI'
,p_static_id=>'cohere-ai'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('cohere-ai'),'https://api.cohere.ai/v2')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('cohere-ai'),'')
,p_server_type=>'GENERATIVE_AI'
,p_credential_id=>4472383075210170
,p_ai_provider_type=>'COHERE'
,p_ai_is_builder_service=>true
,p_ai_is_default_for_new_apps=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('cohere-ai'),'command-a-03-2025')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('cohere-ai'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('cohere-ai'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('cohere-ai'),'')
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20260517125559Z')
,p_updated_on=>wwv_flow_imp.dz('20260517145614Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6275748760331889)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6274590815331879)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260606101626Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101626Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6275919287331890)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6276236872331892)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6274219237331875)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260606101626Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101626Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6277725335331901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6274861457331881)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260606101626Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101626Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6275181924331885)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260606101626Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101626Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6277486282331900)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6275416004331887)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260606101626Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6274033198331812)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260606101626Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101626Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6276563377331893)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6277171992331896)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6276855784331895)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6476078652336054)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_version_scn=>'SH256:sUh16YlciRG9klSoZtcZTfvvJD2zYdjKQV9D3IfGUbU'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6477048886336057)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6476559732336056)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6472711815336045)
,p_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_version_scn=>'SH256:YHgkfo-ih9pxHHGLxqP0cHF8ck23_hWgwdn-JBp8Nts'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6474226728336048)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6475751420336053)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_static_id=>'automations-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6473255626336046)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6474766686336050)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_static_id=>'page-performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6475264793336051)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_static_id=>'page-views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6473702666336046)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_static_id=>'top-users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6471114992336039)
,p_name=>'Application Configuration'
,p_static_id=>'application-configuration'
,p_required_patch=>wwv_flow_imp.id(6282636287332203)
,p_version_scn=>'SH256:01z6ukJ0-1Z6Us8cQjg4pfcVIVbOCpaLhLFvRKRxDnA'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6471624884336040)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(6282636287332203)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6477331347336059)
,p_name=>'Feedback'
,p_static_id=>'feedback'
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_version_scn=>'SH256:s15aWBuZhABHOwKzpyU4guxD38vSpSxZDCaivjs8UQE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6477863401336060)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_static_id=>'user-feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6279862838332129)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:ENfiZ0d6Nh4i08WFwpUfYcw1twtXcOUNWso2u-lTLsE'
,p_created_on=>wwv_flow_imp.dz('20260606101629Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6466337356336010)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_static_id=>'about'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(6282944897332203)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6467954508336017)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_static_id=>'about-page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(6466337356336010)
,p_required_patch=>wwv_flow_imp.id(6282944897332203)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6465559892336007)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6468281421336018)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6466065464336009)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_static_id=>'feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6467417543336015)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(6466337356336010)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6468879618336021)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_static_id=>'list_item-2'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6468281421336018)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6466973566336014)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_static_id=>'page-help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(6466337356336010)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(6282944897332203)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6494570885336165)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_static_id=>'settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(6468281421336018)
,p_required_patch=>wwv_flow_imp.id(6487901382336137)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6469388339336023)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6468281421336018)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6279138545331960)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:y5l0-UqDjFC6wqnlCbiSMY1bzQer7biac0Fr4TjaXKU'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6469985962336026)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(6284915668332259)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6293375964332506)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101633Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9001000000000001)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employees'
,p_static_id=>'employees'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP,10::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6471903815336042)
,p_name=>'User Interface'
,p_static_id=>'user-interface'
,p_required_patch=>wwv_flow_imp.id(6283013965332203)
,p_version_scn=>'SH256:R-pmMXiW-l0wY_x2obP86PPDqqaX6VkO83PAveuG_Yg'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6472445902336043)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_static_id=>'theme-style-selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(6283013965332203)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6491571784336153)
,p_name=>'User Settings'
,p_static_id=>'user-settings'
,p_required_patch=>wwv_flow_imp.id(6487901382336137)
,p_version_scn=>'SH256:OQGnb1n7GAjW62UabHIgG9OuJxcFn8bMLZXt-Fu7xMI'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6492039181336154)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(6487676587336135)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D09745CD579FEEE2CD26834DA372F1842BC804D586D8CB10DB6E3DA60A06639A9C381B686506C09901C972610CB2755A8AD9390426DABD8';
wwv_flow_imp.g_varchar2_table(2) := '920F25A43DA7A99BB484706A4EA01087D436764C0C31051FB6626C59BB341ACD8C469AE5F5FF9F4646B2168FDE7BA3993773DF79FF5BEEBBFF5DBEFF9B7BFF7BEFD39305729308E840401248077852159004922CD0858024902EF8A4B22490E4802E0424';
wwv_flow_imp.g_varchar2_table(3) := '8174C12795258124077421A09940BA7295CA2983802450CA9832311591044A0CEE2993AB2450CA9832311591044A0CEE2993AB2450CA9832311591044A0CEE2993EBE4132806E8BEF5A37FCA79E4E9E7A6543EDD30B3F2A9FAABABB6ED5DBC697BFDAACA';
wwv_flow_imp.g_varchar2_table(4) := '6DF57F9A0EC275E53A73DD1903C682318901BA498F925802298A78ACB6E1F2AADA86F59BB6EFD95DB5ADFE58D5F6FA7E5728E8B105AD4D22A87C22AC7817227250015E1302BF4A07E1BA729DB9EE8C0163C1983036518C9E63CC183B108648E036A904AA';
wwv_flow_imp.g_varchar2_table(5) := 'AC7DA16453EDEEB595DBF66CAFAADDF37A556D439745513E24105E54202A20309FB0B093C87D7404EC518C1E61CC183BC650C5727BC3366E9D37D73C5F38BA6A7C42278F40F44B1191FEC5747A4208B1058AF813AA521E89DCF521903780A5526D117822';
wwv_flow_imp.g_varchar2_table(6) := '92115C4CE412FA928C5D3BEE04DAD0D060DF54BBE761FAA59CA45FCF2F01B118728B0B020AB0847EA0AF10D61F6EAAAD7F88B18F4B4643128D2B81366FDB33DDD1A61CA64AEDA53CE790C87D7210B84C51F07C56BB72A892DC86786619370255D6D6CF0B';
wwv_flow_imp.g_varchar2_table(7) := '0B71845A1DF66BE2590799F61808508BB44028FD87373FB5F78A31A2E80E8E0B81AAB6352C150A0E51E9A69318B4CB64342230336C8D1CACACDDBB4CA3FEB86A8613885B1E08E5D794AB7490098424D9F38412D91F8F96C850026DA8697052CBF37302CD';
wwv_flow_imp.g_varchar2_table(8) := '4922F7E442C019B245F6B18D8C2C96A10472D822BBA970F348E49E8408D08FFB8AA88D0C2B9D6104AADCBEE70108B1DEB092C984E28300D948B59541A91B42A0CDCF3E9B25209E35A84C3299382340B67A6603B91B4664630881C27E27B73C05461448A6';
wwv_flow_imp.g_varchar2_table(9) := '312908143A6CCA5F1A91937E02290A111ADF46F26EB264A321204495114B1EBA0954F5C3865BA87C9791C8DD54082873A3B6D3556ADD04522290AD0FCCB919613B5D047AA0E6270E01AC32277CB2D46C3B1E00E941421781F2AD814594B9AE34485FEE89';
wwv_flow_imp.g_varchar2_table(10) := '43C0A2F8B26ED093BD2EE347AC1626909EFCA56E8211D06B435D04222F5E1228C104D09DBDA2E8B2A16602293C7C0796EAAE4012279026454B0C811EFDF1EE3202B88844EEE646A0ECD1DA7FD46C47CD2D5066C4AE395373E39D7AA5CFB0644CD15A2BCD';
wwv_flow_imp.g_varchar2_table(11) := '048A2890AF6C68453DC9F4F4D8520781429240494604ADC58928DA6DA999404258B2B41658EA25170242B1D8B49648338114D98569C53CF9F42CB043E3A69940902DD0D8909BEC899EC6403381AC91B066D6C6135F85D0E8EBF5C3E771A3BBA30D9EAE0E';
wwv_flow_imp.g_varchar2_table(12) := 'F8BD1E04FBFBE399ADB9D3D6D11868269002114A36D4FAFB02E86C3D8BEECE76F87A3CE80BF422E0F7C1DBED46575B3391A91D914824D98A6DEAF2682650B2D5DAEFED81BBBD15E15018975C7C116E5C381FB7AD5A8195CB96E09A2BE7C1E5CA2632F9D1';
wwv_flow_imp.g_varchar2_table(13) := 'D97216E17018723306819420502814A456A60B0E472656DC7423AEF9DA5C941617C26EB7C195EDC42533A6E3EB372DC6DCCB66AB2D504F577B4CE8858241B0C414394D235952A1DE1EEAB2B81EF3AFBE12B9392EBE1C21420073667E0565A525E8EFEB43';
wwv_flow_imp.g_varchar2_table(14) := 'AFAF67441C0E08F6F7A9DD5D6BE317D41D36A9C2D75D6D2DD28F6280CE13D313880DCEAD4431B538C54505E7556FE4ED15970F7CE3A1D7EF1DF1D04FCEF620510AF27371E5BC39F81A493E5D733E5DE447F9A9AB1CA198C601A627502432E0CF14E4C5F6';
wwv_flow_imp.g_varchar2_table(15) := '97D439D4A559A8398A84873BD34C0C76B6B31C0EDC79DB4ADC77CFEDB879D17C2C23B99FAEEFB86585DA457ABBBBC66CBDF4F3C87C29989E400A2DE430EC5959314E8C5357E67239A1285F12284C3E140FFBD987FAE6DD6B70D194524E72985C327D0AEE';
wwv_flow_imp.g_varchar2_table(16) := 'BD6B0DB2C8CF62A28543E30F4243C17E72DA7DEA14423F8D0E95141DFD999E4056DBC02CBCCFE71B66F0B16E14225C8FCF8F413D8EC7AD8F42F347AB962D467696838346956C6716962FBD81C8A7C0EFF38C1AA7D7E7455BD369F29D78DAA0839C7BB73A';
wwv_flow_imp.g_varchar2_table(17) := '3A6C6B3A9392D308A62790CD9EA11AD2DD3DBA41D587430E4C1E2691DD9E792E94FD9B1C1AE65F4CADCCB9C0312EBE7AF1743889484172C487466102BADB5BD0E3EE84CD62C59285D7E2E1FBEFC1E3E57F81B5AB97A3ACA4905A24BF3A8DC0F90DD535F3';
wwv_flow_imp.g_varchar2_table(18) := 'B5E90924844056B60B9D9D5D686DEF1CD716D4C8E0838F3E56E3B00E5F44C8870AD170BDACAC986F63121EC9B1CED04949AFA74B1DDDCDBF7A1E9EF9FE2654DC7F27962DBC0AD7CE9D8975B72FC78FB73C8607BFB916EC7F7577B64149912ECDF404628B';
wwv_flow_imp.g_varchar2_table(19) := 'BBF2F221AC561C7DE75D34363573D00809D1E4E13BEF9D404B4B1B9C39B9186CB9A044A30E9EA3B7E39D2CE447A9CF999174C13E4EAFD78BA96525A85AFF0D14E6E550E8F0DD62B160E5E2EBB0EECED56007BEA7BB73780493DEA5048184B020B7A008DC';
wwv_flow_imp.g_varchar2_table(20) := '8D1C3B7E02C7DE3D812F1A9BD04EAD52736B3B3EFDFC34DE7CEB101ACF3623233313AEDCFC73E6B258AD60E3B6B6779C0BBBD0454B5B87AA63B15AD5A883734A1BEEBB0B56AB450D1BEBB0E6E6859842440BF8FD48855668FCDA8E8542128667643A5058';
wwv_flow_imp.g_varchar2_table(21) := '360D99594E9528C7DF7B1F07DF3E8623C78EE3FD0F4E22403E4B4E7E21F28BCB46949E5B238FC78B5344BA110FCF0BF8A2B1195EAF0FB68C01DF8B1F737766B55931EB92697C3BAE082170E5E533D5383C83AE5EE83F242C859421102368A16E22AFB018';
wwv_flow_imp.g_varchar2_table(22) := 'C5532F22A294C29557A0B64C85A55350327586EA2B71BCF385BB340E7BE3ADB7E10F04F87254F1F506F0DA8143EAB3EC9C3CF5CC8708758F534B8B2184E0DB0BCA346A8138522AACC9A51481D8282C4C246E919CAE1C389CD9E01686C3C7128E9B9D9B87';
wwv_flow_imp.g_varchar2_table(23) := '5E22C8BE975EC599A69611511B9B5BF1B3FFDC8F3E6AC95C79F9B0677C398AB3D25442137595DC858E501C25A099BA400EB6911E9FCD2CA627101B8D9D585F4F3762153F2D59F0AB1EAC3B68BC6C6A51B88BEB2582BCFCEA9BF81911E977478EE3B787DF';
wwv_flow_imp.g_varchar2_table(24) := 'C1BFBEB41FBFDCFF06FA697290E3385DB9836AEA99091A0E85D1DCDEA5DE5FE8F0D9A946350AEBA917263E9896406C7CAFC78DB6B3A7D5893A9F870814A3F04C32BF6CD6D1DC8840EF9713903CB42F223F8A5BAEEE1E2FFEF8BF27F1FE871FC1D3E30387';
wwv_flow_imp.g_varchar2_table(25) := 'F1338E73BEBD07C3F6FFE6EDF31F8DB8FFF474133EF9BF2FE0C8CE1EF1CC8C01A62590BBA315FE1E0FCAC89FB88E56E197DE783D6EBA71614CB2E8FAEB306BE6A5B05317E2E9ECA0B5AD2F17562D16ABEA3B31598AA64C43F194E9E06B17F953FC6C3423';
wwv_flow_imp.g_varchar2_table(26) := '7377C65DE56F0E1EC5EB07DF192D8A1AD6DEE5C18EE7FF0D205769E8481026DE4C49201E36F34CF06C22C1A2F9D76006CD201715E4A3B0202F26292B29C21597CDC20D0BAE655B822701471B525BAD3658AC0343F50BD9D8457E91859CF89FFEFB2BD8F5';
wwv_flow_imp.g_varchar2_table(27) := 'E27FE0D4D956B0D31DA4AEADB5C38D370E1DC777B6EF4297BB1BAEDC025888A8174AD30CCF4D49A040AF9F0C203077CE4C5D18E7D3845F099149A1F5315EABE2F77E62958E96B3B4CED5A5BEA0C6856042F03482C3E9C4519A8BAAFED16E6C7CF28778F0';
wwv_flow_imp.g_varchar2_table(28) := 'F1BFC35F3FB5033FD9F7322234F158505236E66890D3996CD19B9F290914EAEF478ECB0521A82FD08880DF1FC0EB07FE07AD342272D00AFBB4A9A59871D1D498641AADD62B3474F77B7BD4B5AD1039D75C0C0BB540B905C56092708BE4A01160A6230BD9';
wwv_flow_imp.g_varchar2_table(29) := '34F39D57548CC2D269C3466FAC6376312581D881B65863EB5A463350845A9CC3BFFF83FA6EF46DAB6EC643F7DD83BBD7AC54173D79E1F34272F76D2BB161FD3AF2B71620426B5AEE8EB661D9B04FC423359E1DCF2B2A41766E3E321D4E5D841F964112DD';
wwv_flow_imp.g_varchar2_table(30) := '9892407AF1FBFC7423BC3E1F962E5A804B6768FB7F30568B0557CD9D8D39B32EA5B5ADB0BA0A1FEB3402C7E3A907FE21E8AD4BA2F5D392409D5D03F33533A695E9C2FF4C532B3ABBDC6A1AFC1ED044A612DCEDADEA1404EBA90998F4909604E21967B6D7';
wwv_flow_imp.g_varchar2_table(31) := '782F8FF1F3F184D7CD5E7EF50D7474BAC1AF70DC75EB0ADC7BD7AD31C9BAB5ABB17CC9F56027BEC7DDA93AE3E3E595CCCFD29240836F6E08A1CD090F0683E4801F84DD6E43CDE31BB0F95BEBF08D35CB70C78A4531C9DA958BF157EB6EC7DF5757E2AA79';
wwv_flow_imp.g_varchar2_table(32) := 'B3C1CE387769C94C94B1CA9696041A0B8C58C33FA5A588BEBE20FEEC8E559839636AAC6A23E2393233507EFFDD6A782F8DE8D40BB31CA2E594048A02319153B77760E67AE625DA1CF0A179E5BA9C282D2944303A1530F49919AE25813458A99F5A1F5673';
wwv_flow_imp.g_varchar2_table(33) := '8EF3023E3F8F55F88F21F9959058E327533C49A064B28609CB22096442A32553914D492021040281003EFEECD439F1F40CF825C9046E3A94C59404E235269ECBF9E0E44718946E8F245022086B4A02F15B81B985C5B4C694476B4C5989C04DE6194560E2';
wwv_flow_imp.g_varchar2_table(34) := '048A2A26FAE4C872D22A771E3268B53BD16549E7FC4D4B20238CF6ABD70E60504E9CFCC48824D32E8DB426D0E9334D1814B767F40F4EA51D232658E1B42650E9F48BC17F333641CC64F42108A4358186E0A0E9F2D499667C7CEAAC2AA79BDB634EC3E3F5';
wwv_flow_imp.g_varchar2_table(35) := 'AB3A83BAFC7664CCCA49165112488741EAFFE517F8C1B37B557961DF2B31A7F4C7939FA93A83BA679B5B6930E088593F99224A02E9B006FF3D58766E9EE614D4F7A5493FA7A0107985259AD349A4E224122891D58C4FDE2A8172B41388A720B2493FCBE9';
wwv_flow_imp.g_varchar2_table(36) := '32EDFBD29240F1E156DAA42A099436A68E4F452581E2836BDAA42A099436A68E4F452581E2836BDAA46A7A020931602BFE43C1CEAE6EC422C1607040491E75236006028D5B497BC6C004DC479F7C86DF1D3E1A9378BD3ED34EDC8D0B46021E9A9E40FC79';
wwv_flow_imp.g_varchar2_table(37) := 'B9A2B2A9EABB413CA9178BF0FB44669DB84B0047C6CDD2F404E2DA596D76F5DD209E948B457802508868DF07B9E941202508A40700210688C4DF7EFEC3FB27118BB444BF292DC480AE9EFCCDAE9BF604E2D6CB9E91A17EC1FEF0D1E38845F86BF7F6CC4C';
wwv_flow_imp.g_varchar2_table(38) := 'B0AED909A0B7FC694F2006B0A0648AFA5E507E712962117E87A860940F96735AE9269240518BDBEC19E0EF45C7221C37AA96F6A79426D06459D766B7AB7F9FF6E79B6A108BF07B445C36D6E3B3994512C800EBF1A7EC1C4E27D82F8A45321C0EF054823D';
wwv_flow_imp.g_varchar2_table(39) := '23D380DC139B8466024504FC892D7AF2E4CE5D5A2E7F5C93FC22F68D2E24F945A5C9F5A55625D2AB154DCD04A211AC249056D4934C4F8F2D351348D1C1DA24C32FED8BA3C7969A09641136D902A508F5F4D8520781A40F9422FC8145873FAB994050429A';
wwv_flow_imp.g_varchar2_table(40) := '1DAFA4073EDD0AA8C3969A09D467556417962244D3634BCD040AE5D93A08BFB1FF3F243D94BB291008446DA9A9B09A09B477E3C620A01CD194AB544A2204942303B6D45624CD048A6677207A9627F322A0CB86BA0864894057E6905BC211D06B435D0472';
wwv_flow_imp.g_varchar2_table(41) := '871DFC4F42A51F94701A682E40206A43CD09E822D08B350F0614819735E79E728AE6AA10DB8E6DA8A7D4BA08A4661C89EC50CFF2603E040CB09D6E02D56D7D84BB31391A331F7D8E446DA7ABE4BA093490BB225BA101204C7434C6668610A830D8F20B42';
wwv_flow_imp.g_varchar2_table(42) := 'EE0C89DCCD814063D466BA4B6B08816A6A6A4250F098EED2C8042605014541856A330372330A50645F000002794944415484405C8E5D5BCB7934B693AFA52435023BEBB696C7FE41C70B54C53002713E8162F11D5ADEF83D5F4B99100293129986ED0706';
wwv_flow_imp.g_varchar2_table(43) := '6C645C76861288D7542C16ACA3E2B949E49E5C08B45814EBBD6C23238B652881B8603BBE57F1B96251BE4ED79F93C83D291010A7142B6ED959FD708BD1C5319C405CC0BAEF551C0F8BD00208E5BFF95E4AE21010026F8645707EDD93E5EFC5A314712110';
wwv_flow_imp.g_varchar2_table(44) := '17F4B92D8F7534CD2ABA95AEEB49E49E00041428CF9C9D55B89A6D11AFECE346202EF0CFD7AD0BEFAA2EAFA0217E05DDF793C87D7210E8150AEEADABAEF81BB6413CB38C2B81060B4E43FC7AABA27C9546017FAB00A707C3E5D97004683257D410D6B377';
wwv_flow_imp.g_varchar2_table(45) := '6E2DDF8749D82685405C8F7FD85AD158B7A5FCA9E6D985974251EE2122FD9AC2E94447B96B468014C324AF28107734CD2EFCCAAEEA8D3F60AC296C52F64923D0606DB849DDB5B5E2A5BAEAF25B035651404DED327AF66D22D54F217082AE4324721F1D81';
wwv_flow_imp.g_varchar2_table(46) := '1063A400FFAC2862B3222CCB1D367B01B9096BEBAA37FE17633BBA5AFC42279D4043ABB2F7C98DDDD4D4BE4500EC24523DB06B4BF955746DF7DAECB9217B78AA6217B39430AE8162592280D58A82B5E9205C57AE33D79D31602C1813C68631A21FDFFABA';
wwv_flow_imp.g_varchar2_table(47) := 'AD1B77D46DD9F0DBA79F7828A1FF292FA104C218DB0B04CAEEEF3EDA5CF7DD8D9FD67DBFFCBD5D5B371CDA595DFE3A4FC1A783705DB9CE5C77C680B1604CC6802BA1C14949A0842222339F1002924013824B463E1F0149A0F31191F713424012684270A5';
wwv_flow_imp.g_varchar2_table(48) := '506483AA2209641090E99A8C2450BA5ADEA07A4B02190464BA26230994AE9637A8DE9240060199AEC94802A5ABE50DAAB724904140A64F32C36B2A09341C0F7937410424812608988C3E1C81FF070000FFFF1E188A8F00000006494441540300E9639899';
wwv_flow_imp.g_varchar2_table(49) := '67CF3B570000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6281247661332189)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69901C47957EDD3D339AFB9ED17D5BB76CCB3A6C4916B27C6A91E55DC018C7AEED8D0DB07789F0C6122CECB26CC006B11B38D82516821F';
wwv_flow_imp.g_varchar2_table(2) := '0622B8822B1C061C18638C053E6464CB97840F615B968C6CC93AE7EE9E999EBB9B7C3553D9A556B7A6BA3BABBBB2F253283B5F65E57BF9F27BF57557BEAECE09FFCB97BF9D440106A65E0361C23F206030022080C1C1C7D48940005C0546230002181D7E';
wwv_flow_imp.g_varchar2_table(3) := '4CDE600220F84000B740B8060C47009F00865F00A64F1F0430FD0A307CFE2080E11780E9D307014CBC02306789000820A18060220220808951C79C250220808402828908800026461D7396088000120A082620903E4710201D111C1B8500086054B831D9';
wwv_flow_imp.g_varchar2_table(4) := '740440807444706C1402208051E1C664D3110001D211C1B15108184400A3E28AC9BA440004700914BA05130110209871C5AC5C220002B8040ADD8289000810CCB862562E1100015C02A57537389F150110202B343861020220800951C61CB32200026485';
wwv_flow_imp.g_varchar2_table(5) := '06274C4000043021CA986356044080ACD0E0441010986E0E20C07408E17CA0110001021D5E4C6E3A044080E910C2F940230002043ABC98DC74088000D32184F3814620C0040874DC3039450880008A8084193D110001F48C1BBC56840008A0084898D113';
wwv_flow_imp.g_varchar2_table(6) := '011040CFB8C16B450880008A80F4951938E31A0110C03554E8184404408020461573728D0008E01A2A740C2202204010A38A39B9460004700D153AEA8040AE3E1A4F8064324143F1018A767752F7B9D3D479E67DABB0CC6DC3E25C3299CC1557F4D70401';
wwv_flow_imp.g_varchar2_table(7) := '630990484CD040B497BACE9CA2FEDE1E1A191EA289F1714A2692566199DB62E25CD7999356DF84D0D124AE70D325024612802F6C7E878F0FF4939B7777EEC37D59677464D825B4E8A60302C611203E10B36E7792E29DDE0E5063433DAD58B694366FBC82';
wwv_flow_imp.g_varchar2_table(8) := '3E78C30EAB5C25E4E5A2ADA1A1CEEE46ACD3D7D5414383FDB20D82DE08184580E1F8A0B895E993118B844374E99A9574CDD6AB68E5B22534B3BD952A2ACAAD324BC8AB44DB8EAD9B69EDEA9514167D6DC5FEBE5E1A1E1AB40F516B8C40800870F1288C8F';
wwv_flow_imp.g_varchar2_table(9) := '8F51ACB75B76AAABAFA56BB66DA5250BE7138528FB3F716EE9A2F9B443F4ADABAD91FD623DDD62CD30268F21E889803104188CA5DEF9C3A1106DDE7005D5D556BB8E1AF7DDBC693DB1AEAD34D81FB5455775121927573815B39311044888EC0D2F7C6D60';
wwv_flow_imp.g_varchar2_table(10) := 'D7AE5945D55595F6A1EB9A75D688DB215B6178284E8944C23ECC5AF3F8C8386585A7A4278C20C0703C4E3495CA6F6D69A6C50BE6E60DFA9285F3A8B5B579525FD81C99662DC0C4E3EC511C19A749CC7CF61AF6993F9EB833322C08306579F1A2055352FE';
wwv_flow_imp.g_varchar2_table(11) := 'D5A2F9F3A5F288F814900769423C43C6A94D9067D3FACB68F74D3BE8E37FF711ABDC2CE48DEB2F253E679B488A2C15324E361ADED54610607C6C5422585B5D25E57C851A878DB1B1CC0BE10B324E91307D60CB46BAEDAF6FA22BD7ADA185F3665355E50C';
wwv_flow_imp.g_varchar2_table(12) := 'AB2C12F255EBD65AE7B66DDE4811D1D7F6CD55C6C9EE8C3A67048C2000BF9BDAC85457154E806A07019219D600E919A7E6E646BAFD43BBE8B255CB44C249A4956C67D2EA90387BF9EA6556DFA6A60679161927098572C1080284C22109DC44860B569E74';
wwv_flow_imp.g_varchar2_table(13) := '29241DCF06396DDBEAE7659CC261DA7DC3766A727CA166F7CB5673DF5B6EBC86C242D7EE838C938D84DADA080284C311895A7FFF8094F31562B1D437C14EDB6C2F919671E2DB9E3AC7F707DCC74D619D6D9B37C8AEC362AD818C93844399600401CACACB';
wwv_flow_imp.g_varchar2_table(14) := '2560D158E10488F6A70850565E216DB3E0CC38CD9D3D8BD6AE58CACD79954B575E4273E7CC9AD445C6691207C5AF4610A06246A584EDDD132744EE5E5C4DB225372121B233EF9D3829959CB6B9D19971BA6CCD726E2AA8AC5DB94CEAE79A71E274EF8777';
wwv_flow_imp.g_varchar2_table(15) := '5D4F9FFDE45DF4ADFB3E6795CF08F9C3BBAEA345F3E748BB4931275D334E7212790AC6116070304E478FBD97275C4447FEFC2EB10DDB403A019C19A786BA5ABB5BDE757D5DEAF10BB719A7F2B208FDFD6DB7D07FFFEBDD74EBCE0FD0BA554BA9AEA6CA2A';
wwv_flow_imp.g_varchar2_table(16) := '5708F9D69DDBE97F3E730FDD79EBCD5426FADACE99987132820091B272AAA84C7D0ABC7DF4CFD43F90FA6EC0BE00A6AB0704798EBC734C76ABA8ACA24859993C6681DF4DB9E6529FC7BD3FEB398BD34632C3023E3DE3346FEE4CBAEF3FEEA59BB66DA050';
wwv_flow_imp.g_varchar2_table(17) := '28B5F877DA6439140AD15F6DDF44F77DEE5E9A3BBB9D9BAC625AC6C908027064EB1A9BB9B20A67715E7EE5B59C48D03F30482F1E7C9558978D844221AA6B6C62F1BC1272649CC6C582F8BC93791C24EDAFB085AED3B638B4FE3B334E6591087DF69E3B68';
wwv_flow_imp.g_varchar2_table(18) := '765B6AAE56A78BBCCC696FA67FFBA73B8975ED6EB9669C6C3D1D6B6308108994517D738B8C116783F63EBB9F8E1D7F9F1CD7983C6F0B9CF17CE7BD13B4F7D9E7694090C06E675B6CD33EB66B6756A8A737B787E56C1BCEBABB2765C3699BFB2404C14686';
wwv_flow_imp.g_varchar2_table(19) := '8758B4CA5D1FDD4DAD4DF5969CCB0BEBDC71EB2EA9E236E3241534168C2100C7A8B2AA866A1B52EFDABCA03DF4C661DABBFF453A7CF4187574F5D0A8F86677786494CE75765B6DCF3CF702BDF1E6DBE72D9CD9C68CCACC4F923A334E5D3DA9275079FC7C';
wwv_flow_imp.g_varchar2_table(20) := '4A674FAF544BCF38598BE2A9F5FCAAE54BE9BAAD57C8BEB90A375CBD8156DB192B61D3B29DAB110DFB8735F479CAE5FCAAEADA3A6A6C6923E7ED44341AA3B7C5BAE0F9970ED26F7FBF97F63CF90CBDF0F21FADB6A823E7CF3A8DADEDC436B28DEE5C141F';
wwv_flow_imp.g_varchar2_table(21) := '7AEB284D64B86FCFA69BDE9E10BA6F1C3E229B9DB6B991DFA9B9E6B2F39ACD94FD8E9F7B5CBCB0EEF5576F929D46A679C84F76D45C308E001CAF0AB1786D6E9F73DEC298DB2F5666089D16D671A45433F5775EA44CAC570E1DCED4CD55DB81D7DFA26834';
wwv_flow_imp.g_varchar2_table(22) := 'F5BD85D3361B70669CDA5B1AB9A9A0D2DE92FA74CC96712A68001F2A1B49008E43442C181B5BDAA949BCA3D7D437586488888C0EBFCB7361B942648EF85C53DB4C6A109F1AE14884552F5A226919A797FFF83AF546535F9C5D54D971B24F7CF21C78E590';
wwv_flow_imp.g_varchar2_table(23) := '6CA910048C08FF64831092227F2F2AEB7F7B73A35517F2D2D6DC20D593E2D3471E0458309600764CCBC53B7A4D5D83B82D6AA7969973A86DF67CABB0CC04E173E51533ECEEAE6A67C6292156D18F3FBD2F2712F48A5BB2C79EF8434E19A7D1F1CC4FA5BA';
wwv_flow_imp.g_varchar2_table(24) := '7278AA532299FA710FBF094C3507BA329E005E4497B3439C25B26DF7884CCE830F3F46AF8B358133AD699FB76B4EB1BEFAE6117AF0E1DF526F5FCC6EB6B2576C53364C09CEACD0C9335D53ADF957EF9FEE94CA4EDBB231800208E05150D3334E131309DA';
wwv_flow_imp.g_varchar2_table(25) := 'F7FC01FAF923BFA3975E7D834E9C3E479C6D8A0F0DD3F15367ACB69F3DB2879E7BE120715FDBAD8C19A7A993CE8C13DB9B6ACEBB3A7EEAACD44DCF38C9130113024F807191D6B47E99D5D3495D674F51C7A9134A4AD7D993D4D7758EF8B7BED936CBE26C';
wwv_flow_imp.g_varchar2_table(26) := '517AC6A953A45A795DF0EBC79FA2EFFDF421FAC103BFA447F7EC256EEBEA4EA53CF91624978CD313FB5EA4F18989BC2FCF0941D0279F7B49EAA72FB8E58980098126C040AC8F7A3ACE888BB48F4686862851C005921EF784B860464746283ED02F88D061';
wwv_flow_imp.g_varchar2_table(27) := 'ED2B3A9A61D7385EBC1623E374B6A38B1E7DEA8574375D1F3FFCC47374AE23B56D0C08E01A3AFF759C100B42BEF0E3FDB1A239C77B89F266BA63A323178C59AC8CD32F1F7B92CE74F65C30FE740DACF3ABC79F96DD98B4E9192779326042203F01FABA3B';
wwv_flow_imp.g_varchar2_table(28) := '896F7DEC582D5C308F784F1FDEF6F06F76DD482ACACD375D473BB66DA1654B1793FD8F17B17DDD1DC464B0DB9CB5D71927FED2ED1BDF7F3027129C16EFFA5FFFEE03E29BEEC90C502814CAF88C93731E4192034700BE27B72FC0CACA19B46DCB265AB776';
wwv_flow_imp.g_varchar2_table(29) := '15CD6C6BB1B63C54153C7E8CB8A1BE9656AFB8846ED8B18D6A6B271F5B4E8ADC3CDF7AA91A673A3B9C1D72669C4E8AC5F5E7BF723FEDD97740A65133D948707AF60F2FD37FFEEF37E9F4D954F6876DB1CD4C3A7E6853ED43A008C0B71F71C7C6B5576E58';
wwv_flow_imp.g_varchar2_table(30) := '472D4D8DAA31BBC01EEF12B165D37AE2852B9F1C198A8B4FA0D44E14DCE66549CF388D8F4FD08F7FF1287DF16BDFA587F6ECA3D7DF7E9706E2C314ED1FA4D70E1FB3DABEF8FFDFA19F3CF41BE2BEB66F17CB38D97D8256078A00437CF1272743B478E102';
wwv_flow_imp.g_varchar2_table(31) := '6A6AC8FDC9C849EDDC5FABAB2A69C1BCD4865B3D1D6795649B386B956FC6E9BD13A788D705FFF7CD1FD2273FFF15BAF70B5FA5AF7EEB4756DBF1F74FCB493271A7CB38C9CE0113024580F1F171199E39B3DAA5ECB5C0B9FC57FFF4169D70FC5452E5987E';
wwv_flow_imp.g_varchar2_table(32) := 'C838A99C8F9F6C058A009CFDB1C16D2CD2BB7F6F34464F3DF32C1D1717FFD4878FED826735AF71A262B1CDB77CE9837895714A1F2728C78122002F40EDC0F022D596BDAAF96795FB5F3A481362E16B8FB17AE532DABD7372DBC37B3FFEB7A4A2FCE35D1F';
wwv_flow_imp.g_varchar2_table(33) := 'A5DB3FF4415A7FF91A7B18B1C0252A76C6490E1E20412302F80FF583AF1D128BDDC9DBAE9A9A2AFAC8EE1BE9DAAD1B69E1DCC96D0F55795C5E5E4EADCD8DB465C36574D76DB75053E3E4DA86095FCC8C1305F01F08906750F9D75EFCBCBFADBEEBFAED34';
wwv_flow_imp.g_varchar2_table(34) := 'BBBDD53EF4ACAEAFABA55B765E5BB28C9367132B916110204FE0CF9CED909A97AE5E41EDADCDF2D86BA1AEA69A562DBF440EA33AE314EDE9A4F8404CA4480B7FC45A3AE9530104C83330B181D42FB5962E9A97A795DCD5620383F4F4FE03F4D691777257';
wwv_flow_imp.g_varchar2_table(35) := '76A1C119A791A121EBF9297E9CC4DA75427C69E64255CB2E20409E618BF6A5766B6873FC94304F73AED4CE75F5D04FC5175C6F1E3E4A7CFFEF4AA9904E22AD35D81FA39ECEB3E4CCB01562D26FBA20409E1119737CE7502116A9799A71A7267AF546FBE9';
wwv_flow_imp.g_varchar2_table(36) := '91C79F92CFEC8826BAF6EA2BAD6D0FEFFFF2BFD34FBEF12525856DF1568A3B1C3F90E7E7AAFAC46D118F19B402026812D1DF3DB39F464727EFC99B1AEBE8BF3E7D0F7DE263BB88B73D6CC8E18FFD4D375DB6C536EFFED8CDF4854F7D42649CEA2C9589B1';
wwv_flow_imp.g_varchar2_table(37) := '710A62C60904B0C2EBEF9753E73AA94BDCFED85E7EFAEE3B68F9A2D4631776BBEA7AE592F9F4CFFF70BB34CB0BE3B1D1E23DE32407F65000013C045795E963C753BB51DFB87D0B2D993FB565BAAA012E6267C5E27974DDB62B277B883581F5BCD5E45120';
wwv_flow_imp.g_varchar2_table(38) := '5E41000DC2D8D3DB27BDDC74F92A29174BD874F96A3954D016C320800CAD7F85739DA91D1F8AF9EE6F23B260769B2D8A6CD0E437DFB2C163C16BF32080D7082BB03F369ABAE82A675428B0989B8906C7DF28E0ED1A73D3F6776F10C0DFF181771E230002';
wwv_flow_imp.g_varchar2_table(39) := '780C30CCFB1B0110C0DFF181771E230002780C30CCFB1B011F13C0DFC0C1BB602010280284C3A9E9FCEAB1DF53A6128CB06116AA10485D31AA2C96D08E29DBF99510E2C00D1D2802F0BE3695D5D5148E046A5A81BBE8FC34A1405D29E14884EA9B5AA975';
wwv_flow_imp.g_varchar2_table(40) := 'D63C6A9FBB40163F010E5FFC8540A008E02F680BF006AA45430004281AD418C88F0880000AA272FFF71FA04C45816998F0180110C0638061DEDF088000FE8E0FBCF31801104001C0C838290071CA44B12B10A0D888633C5F210002F82A1C70A6D8088000';
wwv_flow_imp.g_varchar2_table(41) := 'C546BCC0F1EEFCD497285329D0AC54CF649BDBEC0E61C7F356769BCE3508A073F44AE03BFF05C9120CEBD990208067D006CB703812A6CAEA1AAA6DF0FE6FAE1513391F11A098D3D677AC62669C9C63F1F355F54D2D140E47F4052F83E720400650D0640E';
wwv_flow_imp.g_varchar2_table(42) := '02208039B1C64C332000026400054DE620000298136BCC340302204006508ADE84014B860066DA4043000002C449444154085032E831B01F100001FC1005F8503204408092418F81FD800008E08728C08792210002940C7A0CCC0894BA8000A58E00C62F';
wwv_flow_imp.g_varchar2_table(43) := '2902461020EC788437D37689F9B4D95173DAB6DB50EB83801104F072CBC4A03D1EACCFA5ABC653230850DBD044958AB74C0CEAE3C16A2E2B7DAC1841807024F39689CEC77D739583FA78B03E97AE1A4F4B48003513801520500802204021E841577B0440';
wwv_flow_imp.g_varchar2_table(44) := '00C521746685326D97984F9BEDA2D3B6DD86BA30044080C2F0BB401B19A70B20F1750308A0383CC8382906D4637320806280C311171927C71FEF70937D42C64971901CE64000071810CD430004302FE698B1030110C001866EA2332BC4DB17AA2836064E';
wwv_flow_imp.g_varchar2_table(45) := 'DB765B106B1040E3A822E35478F04080C2312C99051D334E25032BCBC02040166074680E4790712A344E2040A108425F6B044000ADC307E70B450004281441E86B8D0008A075F8E07CA10814910085BA0A7D20A01E0110403DA6B0A81102208046C182AB';
wwv_flow_imp.g_varchar2_table(46) := 'EA110001D4630A8B1A21000268142CB8AA1E0110403DA6175A448B6F1100017C1B1A38560C04408062A08C317C8B0008E0DBD0C0B1622000021403658CE15B044000DF8626188EF97D162080DF2304FF3C450004F0145E18F73B022080DF2304FF3C4500';
wwv_flow_imp.g_varchar2_table(47) := '04F0145E18F73B022080DF2304FF3C45C0430278EA378C0301250880004A6084115D110001748D1CFC56820008A0044618D115011040D7C8C16F250880004A604C3382436D100001B409151CF5020110C00B5461531B0440006D420547BD400004F00255';
wwv_flow_imp.g_varchar2_table(48) := 'D8D4060110409B50E9E1A86E5E8200BA450CFE2A450004500A278CE9860008A05BC4E0AF52044000A570C2986E088000BA450CFE2A4540210194FA056340A02808800045811983F8150110C0AF91815F45410004280ACC18C4AF0880007E8D0CFC2A0A02';
wwv_flow_imp.g_varchar2_table(49) := '20800A9861435B0440006D4307C755200002A8401136B4450004D03674705C050220800A1461435B0440006D43E70FC775F7E22F000000FFFF04ECEED30000000649444154030028B9D679E7D082210000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6281415199332195)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D099C14E599FF9FB76ABAE7BE9819660051912388C82128A828C16C348789C44DA2D9755D93EC8601653059E301684661D0E49FFC238372';
wwv_flow_imp.g_varchar2_table(2) := '984FE2BAD96C3EBB891AD7E846CD22D1404CA282215EA8DCC7C030F77D74D7BE4F335D5D3334337DD4D55DBFF9F43BF5D65BF53EEFFB7E9FB77E5DF5BE55D50AE10F0440C0B30420009E753D1A0E02441000F40210F030010880879D8FA67B9B00B71E02';
wwv_flow_imp.g_varchar2_table(3) := 'C0141040C0A30420001E753C9A0D024C0002C0141040C0A30420001E753C9AED6D02E1D64300C224B004010F12800078D0E968320884094000C224B004010F12800078D0E968B2B709185B0F0130D2401C043C460002E03187A3B9206024000130D2401C';
wwv_flow_imp.g_varchar2_table(4) := '043C460002E03187A3B9DE2630B4F51080A144B00E021E220001F090B3D15410184A0002309408D641C0430420001E72369AEA6D02D15A0F018846056920E0110210008F381ACD048168042000D1A8200D043C420002E01147A399DE2670A6D64300CE44';
wwv_flow_imp.g_varchar2_table(5) := '06E920E001021080214E5E5E5B9B797BF50F8B967DE7D18A6FADFDC9F8DBD6FC6842D5F7364F5EBE6EF3B415351B67DC5AB3E5A2AA0737CE41701F03F60DFB887DC53E63DFB10FD997EC53F6ED10777B7ED59302B07CCD9689B2935CBF62EDE6FBAB6A36';
wwv_flow_imp.g_varchar2_table(6) := 'FF4A869D55359B8EC8A526DAFCDD415F7653865F3DD62F7A0F2A4A602FF5D11EA1D1DB1A296FA9A4BD4141E57504F73160DFB08FD857EC33F61DFB907DC93E65DFB28F077C2D7DBEF957DC07B82F7CF3C18DE779510D3C2100B7D73C36ABAA66CBBD5535';
wwv_flow_imp.g_varchar2_table(7) := '9B7F2743BB50B40F6527795213749F74FA7532CC221263097F1E2110F2B5F4395DC77D80FB4220A87CC47D438AC3362908AB973FB47966BAC018AE1D692900DFF9CE7FF9ABD66DFECC8A9A4D1B97D76C3E18A4E04E22ED0109E24A197265C00704A21190';
wwv_flow_imp.g_varchar2_table(8) := '7D432C141AAD1101DA250561AF0C0FCBF009EE53D132A47A5A5A09C0371F7C749274D6BA267FE35ED2E8398DC45241343ED59D84FA3B4660822C79850CBFE53EB57CEDA61AEE63723D6D3E292F007280276F79CDA6AFC903FFD54050FD407AE61E19C6C9';
wwv_flow_imp.g_varchar2_table(9) := '800F089849609C106225F731D9D75E917DEE16EE7B6616E084AD941680AAB59BBEA066AAAF09123F96F016C8800F08D841E00AD9E71ECFF0A9DBE465E635761498681923E54B4901B87DCDA68F4B15FE0309F194BC5EBB60A446623B08584240D01C7999';
wwv_flow_imp.g_varchar2_table(10) := 'F91BEE8BDC272D29C362A32925007CCA5555B3E5E74145BC2CB9CC97011F10700381F9DC27AB6A36FF94FBA81B2A146B1D524600AAD63E76999CCF7D4B8EE6DF186BE3B01F08D84CE026D94777F14D6236979B70712921002B6A36DF4C22C8DFFA9EBC59';
wwv_flow_imp.g_varchar2_table(11) := '2361EF22A31304265250D911EAB34E946E283396A8BB0540D3044FBD68444FC8C6F865C007045281809FFBEC8AB59BD7B8BDB2AE1500BEF162C5BA2DBFE4A917B74344FD40201A014DD0EAE5359B9FE0BE1C6DBB1BD25C2900D5D5D5194DBEC627A58A5E';
wwv_flow_imp.g_varchar2_table(12) := 'EF0648A80308244A4010DDDCE86FFA05F7E9446D5899CF9502D0E4AFF8371274AD950D876D10B08B8020EDF38DBE8AC7ED2A8FCB8935B84E00E4E0C9439A465F89B501D80F045284C04DDCB7DD56575709C0F2B55B6E97A7FD77B90D12EA03026610E0BE';
wwv_flow_imp.g_varchar2_table(13) := 'CD7DDC0C5B66D9708D00DCB66ED3E542683F30AB61B003026E2420FBF8F7ABD66E71CD6DEBAE10001E255534C1537DAEA88F1B3B0EEA94360454393BF038F779AB5A148F5D571C70CDFEC60764A527CA800F08A43D0139283869A0CF3BDE56C705A0AA66';
wwv_flow_imp.g_varchar2_table(14) := 'D374796D7487E324500110B09100F7F9DB1ED872A18D45462DCA710120126B894895011F10F01201555135C7EF14745400AAD63E7699F438BF934F2EF00101CF11B8CEEC01C178093A2A002402FF2FDE0A637F10482B0222C867C08E35C93101B87DDD96';
wwv_flow_imp.g_varchar2_table(15) := 'C54482CF00087F20E05D026261D5839B3FE554FB1D1380A016BCDDA946A35C10701581A076B753F57144006E5DFBC83944825FD14DF80301101057DEB6E647FC06E2A4502492D911015085FA55595921033E200002444251FAFF911CF8B35F00344D1EF8';
wwv_flow_imp.g_varchar2_table(16) := 'CA2D0EB4154582808B09889B29746CD85B45C5DEE28896D76C9A47A4C94B00BB4B467920E06A02134E1D1BF6D6D1760150842247FFED6D244A03815420208448783620D1F62989664C349FA691ED8D4CB4AEC80702F612487301B8EDBB1BC692A019F642';
wwv_flow_imp.g_varchar2_table(17) := '4569209032042EF9C6435B0AEDACADAD6700A23FE36AD938390828FFE3030220309480C80A043F3D34D1CA755B05402105BFE663A537613BE50908523E4E71FE25B3BB924CE678F36AA4CD8A370FF607012F11B0FB18B14D00AAABABB92C5CFF7BA937A3';
wwv_flow_imp.g_varchar2_table(18) := 'AD8910B870E05849246FDC79F8A08C3B5322199A7D63F9E0CF4E242FF280808708E49CF48F9962577B6D1380A016C4F5BF5D5E4539294D40D182315F2A27DB50DB044008615BA3928582FC20E0240141C2B663C53601089276AE9350513608A40A018D68';
wwv_flow_imp.g_varchar2_table(19) := 'AA5D75B54D0084461576350AE580404A13D0C8B62F4BDB0480040480F00702B11088F15889C5D448FBD8220003D31A25235506DB4100044204460D1C33A1152BFFD9220007B3C7E7CA4664C8800F0880C0C8047C47694CD6C8BB25BF872D0250D0D5AA26';
wwv_flow_imp.g_varchar2_table(20) := '5F55580001EF10C8A14EBF1DADB545003272B36C698C1DC0500608D84160A463C6AC3AD82200FDBD0ACE00CCF218EC7882805DC78C2D02D0ABF5E3FADF13DD168D348B805DC78C2D02E05771066056C7801D6F10B0EB98B1450002FD10006F745BB4D22C';
wwv_flow_imp.g_varchar2_table(21) := '02C31D336695C1766C1100D5AF601090699F21048301EAEFEBA5BEDE1E0A04FACFB01792BD4420A80A5BC6CD6C1100EAEDF592EF626A6B4F7727B5369DA4FA6387E8E4B123D478A28E9AEA8F5343DD513A71E420359D3C4E9DEDAD140C0462B2879DD28B';
wwv_flow_imp.g_varchar2_table(22) := '802FD0974602905EBE49AA355D1D6DD470FC08B5349CA4EECE4ED2825A547B7D3D3DD4DED24C27EB8E48A1689067061082A8A0909814017BCE0092AA627A64D6348D9A1B4E505B731305FAE33B98BB3B3BE4D9C1B1D065427AD0402B122560763E0880D9';
wwv_flow_imp.g_varchar2_table(23) := '44A3D80B1DFCF294BEB7BB7BD0D6A2C2029A32F93CBA64CE2CFAE4A22BE8B3D75C450BE65F4C174E9B4AE3C6560CDA3718084A11381E1A2718B4012B20900401084012F062CDCAD7FA7D8671900C5F06CD9E399D165E3E8FCE9F3C91C69497514E761665';
wwv_flow_imp.g_varchar2_table(24) := 'A82A958C2AA2F3CE1D4F73675D489FF8F8022A2E2ED28B61216969A89767101828D4A120921401084052F846CECC03793D5D5DFA8EE5F260FF9B2B17D0D9E3C6E869678AE4E564D395975E4C33A69FAFEF120C06A9A5B15E5F470404922100014886DE08';
wwv_flow_imp.g_varchar2_table(25) := '7983727AAFA3AD45DF2B2F2F972E993D8332337D7A5A2C9109679F45E74F9DACEFDADFD7473C98A827C411E997D38D5CA7B6E6463926511F0A1CE734DE168729EC6A33012B8A8300584175C066476B8B3ECA2F64DADC5933485112433E79C2B9545414F9';
wwv_flow_imp.g_varchar2_table(26) := 'D5A8906D2D28AD8EFCD1E459031FE03CFBC0D38D9CB7ABA39D7ABBBB4281E39CC6DB781FDE97F38C6C197BA43A81C47A63AAB7DAA6FAF3E87DB8A82953265161415E7835EEA5900A32478E0B281C91B9F952C078692193A27EBA3ADB4353897C80C732FB';
wwv_flow_imp.g_varchar2_table(27) := 'C0FBF0BE3CFD68AC7F54E3484C790210008B5CC877F5F1A05DD83C9FC687E3892E794C60F4E8323D7B6FCFE059057DC340A4A3B599DA9A1AC9588F814D543EBA84665C303514381E4E0F2F394F6B5303F1D940380DCBF4230001B0C8A7C6EBE94CBF9F32';
wwv_flow_imp.g_varchar2_table(28) := 'FD3E534A2A28C8D7EDF4F7F7E9F1A1111E7CEC686B1D94CC538B5FFAFC3574EBD7BE425FBCF66ABA62DEEC50E078284D6E1B3B66F4A03C1DF232866D0D4AC48AED04AC2A1002601159E32DBCC68336D9E20AE44062D886B18C701A2FF9CCA0BDB599A3A1';
wwv_flow_imp.g_varchar2_table(29) := 'E097E273D595F369F1A716D1E8D251A1B468FFCAE5B6C59FBE8A165D318F7CFE0C7D17B6C536F50444D2860004C02257060D037439D9E6FD225A7676965EE3680375A74EDD4F120DDC61EC97330E377EE13374FEA4097ABEE12282044D9B7C1E7D65F167';
wwv_flow_imp.g_varchar2_table(30) := '89F386F695B65A9B4E46BD94086D1FE11FD7890584C7143AE55949677B1BF57475E2CEC611B8D9B11902601165C5F030575B7BBB69A5747446EE29105166143AE5B423DF35182EF0AA05F3293F3727BC1AF3323F2F87165D1EF93537B6D9D9DE1A737EDE';
wwv_flow_imp.g_varchar2_table(31) := 'B1BBAB2334CD587FF410359F3C117AA681CF26DA5B9AA8A5F164E801281E6CE4F5403F6E6E62667607088045C4153582B6B9451E38F25BD48CA25AD8D68021453DFD81B1CE8EB681AD4493CE3B87269E7396BE1E6F64D2B967D1A489E7E8D9BAE437B7BE';
wwv_flow_imp.g_varchar2_table(32) := '324CA4474E2F361C3F4AAD8D0DA169C661760D3DEDD829ED86F69767193CBB31DCFE5EDC66659B23BDD4CA523C683BC31779050277EAB6CE4E532884C464C092CF500627F169B66678BAF0A219D33839A9307BC85D887D23CC3CF00D4AC3DDAE3C71C278';
wwv_flow_imp.g_varchar2_table(33) := '2A2D298E5A277E3AB2A9BE8EF04E84A8782C498400588295E4205AE6A09B7E0E1E3E9A74496DED1DD4D86418DCCB8A8C07B0719E7AE425878C0C954A8B23370E715A22A16C5411B1AD705EE3330DE1B4F0B2535E22B43537855743CB8AF232FAFADF7D81';
wwv_flow_imp.g_varchar2_table(34) := '6AEE5A46FFBEBE9AEEBFFDEBF4F07D2B68E3BA3BE9EE5B6FA16B3FB930B45FF81F5F0A4004C234AC5F2AD617E1DD12B2722337FE7CB8771FB5B5277716B073F73BFA409CA2AA72902E9B8C7FC66FCEB163CA490861DC9C505C084115E591A94163194683';
wwv_flow_imp.g_varchar2_table(35) := '7CF6C1D7F7E134455E025DFFD94FD0837756D2A27933E99CB1111B24FF0AE4B8C4F429E7D28DD72EA2EFADAAA2F30C972A3CDEC067113C782877C5C7420210000BE1E6E4159050060E423906B073F7DB099776F0F0316A6A8A7CFBE7E64BDB62C0F680D5';
wwv_flow_imp.g_varchar2_table(36) := 'A0E13D03E32ACA0752935F8CAB881CBCD10420180CC841BD7A0ACF3CE4C901C475772EA3EBAFBE827CF24C64A41A8C1D3D8A1EF8D63FD117AFFD1B7DD7FEBE3E6A6F69D4D7BD1AB1BADD10000B092B72943E27375F2F810FE0F73FDCA7AFC71A696DEBA0';
wwv_flow_imp.g_varchar2_table(37) := 'DDEFBEABEFAEA82A651BEC863768E1239013066B03A7241C1435D24DA27D2BF3CD429A61EC61D9CD5FA2B32A4AE32E6FF12717D0CC0B3EA6E7EBEAE890538567BED949DF11918409443C9BB009641C8E404E7E2165F8227701BEB7E743DAF1A737A9ABBB';
wwv_flow_imp.g_varchar2_table(38) := '67B86CA16D9A3C6BF860DF01DAB6FD0FF24018788B903CB00B8A4B42DB87FE530C2F5FAE6F30EFDBB3FE64C4966A2883CBD7B420F1F3061CE7B0F0B2B934E363B1DD73C0FB0F0DDFF8BBEB28272732B6D1D921675086EE8475D30840004C4319DD901082';
wwv_flow_imp.g_varchar2_table(39) := '0A4BCA485122A8EB4F36D0D657B7D3A1A375D133C9549EEF7F65C71FE99D77F790F1DB35AFA0585EFB470E10B9ABFE51D4C8B4607D7D839E9E6CE484AC6FD886A246CAE0B41E7ED781142A8E1716E6D13F2CBE86A309874279F9F0F51B17EBF943F6F535';
wwv_flow_imp.g_varchar2_table(40) := '44CC2610E995665B863D9D80AA6650715905A986EBE1FEBE00BDB96B373DF3FC4BF4D2B6DFD32B3BFE44DBFFF8066D7D65073DFFDB97E9B732CD38E5C7C6F28B46514E5E3E47A3069FDFAFA7B7B4B653AFBC8ED613128CB08D56692B9CDDE7CF0C4743CB';
wwv_flow_imp.g_varchar2_table(41) := '9EAEC8C0E695F3E6505666E46C27B44302FFE6CD9C1A7A3B1267D58241E201468E7B2DD8D15E08801D9465196AC62911C8CC3EFDAEBCCECE2E6A6A6EA193F2B49DA7FAFA7A07DF15C7798BE45944B66156419A3CED9399953368E47FD7DB7B4EDB27DE84';
wwv_flow_imp.g_varchar2_table(42) := '9D6FBFAF67117240D39F3578E6A1AF2FF2CAF7D25145FABEC9462ACA4B7513FD86D7A9E9892802350500001000494441548898420002600AC6D88C288A4A85A34AA9A47C2C65CB6F72451D7C3A3DD44AA63CD8C2FB0F3DF086EECBEB4208393898C7D150';
wwv_flow_imp.g_varchar2_table(43) := 'F8F39B7FA1A3274E86E289FC3B5277825E7F73B79E355B0E3C0A210721F41439F02FC700C2AB66DC7710B655563A2A1C25E373157A2222A61080009882313E23FC8D9E5F584CA515E368D4E88A9028E4C9F5BC8222E201BEA2D2D15436763CF1D841B433';
wwv_flow_imp.g_varchar2_table(44) := '86E14ACB95838EFC4D1DDEE785ADAF52BB3CC308AFC7BAE4318817B66ED77757E41846AE9CD6D41306229A61F43F2F77F0D9C1C02E092D0AF272F57C1A8F86EA6B88984900026026CD046C65F8FCC407794E5E3EE5C8B9FDAC9CDCD0209F1083BF696335';
wwv_flow_imp.g_varchar2_table(45) := 'CD0F081514CBD3E781EC9D9DDDF4F3A79FA30FF61D8AD584DCF720FDC753CFC9998A81178E485B05F2CC856D0F35A2A8912E54571F992D18BA5FBCEB47EBEAF52C8A141F7DC52311BB9A19F19E5D25A21CCB09F0A5435E7EE47ABCB7A78F5E7CF9F7F49B';
wwv_flow_imp.g_varchar2_table(46) := '97775077CF99A71FBBE4B6E7B7FE5EEEBB9D7A7B23F3EF7C66E2CFCC8A5A6F455ED68437EC3F7C2C1C4D6AC9DFF87B0F1ED66D2810009D85D9110880D9440DF6B481116CBE479E5FAD6556E8EA6C0FFD4008DB37143728CA6713B905839F05F868DF01FA';
wwv_flow_imp.g_varchar2_table(47) := 'F1CF9E92DFEECFD373FFFB2ABD26AFEF77BCF15628CEDFF83F91DBF6ED1F7CA6C036F88EC641C60D2B19FEC8CCC3FE43470D5B128F1EAB6FA280E1AE463E4B4ADC1A720E470002301C9D04B7F101CF6FD7AD3F7638F41C3CFFC61FDF2D6756686B6A0CFD';
wwv_flow_imp.g_varchar2_table(48) := '4A10DBE77BE6FB0D23F1C62AE7CAF1001E5310429EC31B36F08CC3FE0387E98D5D7FA59D6FBD431C6F6A1E7CC30D8F23705EB661C87A5A34333372DDFFFE87FBE9F0F193A7ED136FC26FB7BFAE67E14B0CDF90A9477D232249138000248D306220180C10';
wwv_flow_imp.g_varchar2_table(49) := 'FFFE1F1FF0C66FB0C81EE6C7F8D97B7E9D776B53F4038FC71478B091BFC91575F85907AE1DDFAB905758141AA0E4BC9C365CE0F10B453D65971F7BDEF8C42F8997C3E5196EDB9EFD47E8C56D3BF45DB27322B31A7A629A47EC6C1E04C024DAFC2DDC78FC';
wwv_flow_imp.g_varchar2_table(50) := '180DFDFD3F551E1C25A38AA9ACACC4B4505090476CD758757E969EC587AF9F8DE91CE7C13BFE266721E059071683ECDC3CE2A9450E1CE734DE56523E8EF8945F88D8BB46AE1CBCE472381C3C5247CF6E7D8DA37187DEBE7E7AF4895FE8F98422E4746981';
wwv_flow_imp.g_varchar2_table(51) := 'BE8E88F90462F7B2F965A78D453EE8F81557C66FBE8AF232BAEACACBE8DA6BF8073FE7D265175F645A58B4E0D290DD797367138B4118248B0F8F3384D7A32DF97A3A575E1AE4178D22BEB98803C7398DB745CB33525A766E3E29EAA9B300DEF717CFBE48';
wwv_flow_imp.g_varchar2_table(52) := '2FBFF61647630E1D5DDD542BCF1E1A1A234F3CB210610030668409ED08014808DBE04C1D6DCD72D02A72F7DE8CE9D368DE9C59946F98CB1E9CC39CB58AD1A574E5A5F3A8D470D30CBFB68B2F45CC2921762B7CC3921091B1861FFFFC69FAFE633FA796B6';
wwv_flow_imp.g_varchar2_table(53) := '8E118DFCE5FD7D74C7DA0DB46BF77BFABE3EBF3F7426A2272062090108409258FB7A7BA8B3BD4DB73279E2049A70F6387DDDEA88AA2A74C9EC99E4F365848AE2B3117EF36E68C5C67F3E3950C7372E091111815D6FBF4F55F7FD80D63EF2043DF9C22BC4';
wwv_flow_imp.g_varchar2_table(54) := '077A47570FF128FFABAFEFA61FFDE7AFE99B6B6AE97B1B9F20BE053A5C5DB655545A4E42446C85B7A5FBD2EEF641009224DED5D14EE1C7F0F3E437FED4C9E7256931FEEC7CF04F9D3249CFC88274E2C8413233F04B3B79C681DFFAC3E31D7A618608DF2B';
wwv_flow_imp.g_varchar2_table(55) := '505C564E8A61DE3E20A742DFFB601F3DFDFCD6D081BEE4EE07E9DB6BD7D3969F3E49BFDBF13AD51B1E35665399D9D954543A1A073FC3B021400092841C30BCCE7AC239E30775FE244DC7949DBFF1F7CA293D7ECF404C1912DC89DBC9330E7C76C1B30E8D';
wwv_flow_imp.g_varchar2_table(56) := 'F57514ED29BD0C9F9F8A47570C7A2621962279F621BFA8980A4795E1E08F059849FB400092041908F4E916727372F4B81D91EE9E5EDAFAEA1F68F7DBEF529F1C41B7A3CC7019FC841E9F11F02550382DBC54D50CCA97838C3CEBC0538A7C4A1FDE665C0A';
wwv_flow_imp.g_varchar2_table(57) := '39CACF538D7CE9C0B30F3C9868DC8EB8F50414EB8B48EF12F80596E11666670D7E563E9C6EC5929FD3DFFEC7D7A9BD3D32C89625CB9F3675322DBCFC12BAFEDA4FD2DF7EEE6A5302DBBAE6AA2B68FEDC99946B78E087CF3E9A1BEAA9FF0CEF1D50543534';
wwv_flow_imp.g_varchar2_table(58) := '90C79705A3C79D4D25156389E33CDD583A661C958D194F7CB311DFBA6C05A354B3E9447D21004E5037A1CC3FBDF1D6A0837FFAB42974D3173F478B2E9B4BD33F3691C6C819828AB2123223B0AD49E79E4573664CA35B6E584C73674FD75BA0C96BFCB6E6';
wwv_flow_imp.g_varchar2_table(59) := 'D8DE3EC467067C36C097098AA2EA3610718E0004C039F60997DCD0D44C0D8D4D7AFE8B2F9A410BE7CFA14CBF4F4FB332326FF6853467564404F8B702FACF703BB295F580EDE4094000926768BB853D1FEED5CBE4BB0CE7CE3C5F5FB72B72F1AC0B88673D';
wwv_flow_imp.g_varchar2_table(60) := 'C2E5B5B53451475B8B69A1B3BD3534C8C86718E132B0349F0004C07CA6965AE4EBEE1386177ECE9C3E951461BF1B0F1DA923558D94DBD7D343663DECC476F8790AFE41517EE089A720595C2C05EBB071A78A8F78D0A91AA0DCB808F4189ED3E78CA34B8A';
wwv_flow_imp.g_varchar2_table(61) := '79615BE8EEEDA5675ED846CFBDF43B6A6989DC00656505780A9245A1F1C43139E0187907A195657AC5360420C53CDD3B44004A4CF8FDBF5811F4C8D1FE67FE672B1D3E32F8C51F678D2DA78F5F7E31DD70DD3574E3E24F9912F867C52E9A71BEBCCC884C';
wwv_flow_imp.g_varchar2_table(62) := 'ADF6CBF2F91E04E39B8863AD3BF68B4E0002109D8B8B53075EC2EF400D7FFDE2EFE8644364F0714C79197D77E5727AE8AEA5F44F5FFE2C7DEEAA4BE9DA45F34D09FCB362DFFAFA0DB469EDB7E9EFAFFF0CA94AA4ABB6CA59876020E00081F42B324235FD';
wwv_flow_imp.g_varchar2_table(63) := 'DA8616994860EFC12354773CF29E3EFE765E7767258D2B8FFE2B4566152D84A04F2FBC84EEBF63096565FA4366B5A0462C02A19534F8E7641320004ED24FA1B2FFBC73B75EDBC2C23CAAFCFBC5E433FCD089BED1A2C8B9E3CAE9961B3EAF5BE7479FFBFB';
wwv_flow_imp.g_varchar2_table(64) := '237761EA1B10898B0004202E5CDEDC995F2B6E3CF5BFED961B2827CBBEBB1EC3D417CC994E73664E0BAF12CF3CE82B88244400029010366F65E2DF0808B7B8A8309FCE3F6F7C78D5F6E5C2F917E965F6F59EF90DC7FA4E880C4B0002302C1E6C64027C06';
wwv_flow_imp.g_varchar2_table(65) := 'C04B0E05F979BC702CE4E564EB65F7F50EFC6E819E927A11A76B0C0170DA032950BEF149C34CFFA98138A7AA9D3D3010C8E5070CAF0EE77584F8094000E267861C20903604200069E34A340404E2270001889F197280802904DC600402E0062FA00E20E0';
wwv_flow_imp.g_varchar2_table(66) := '1001088043E0512C08B8810004C0442F1C3874943ED87BE0B47062C89B6F4D2C12A6402029021080A4F011F1DB6CC326F6EE3F40EFBCB7E7B470FC44F4DFED0BE7C3D27B04DCD2620840929EC8CA76F6C69824AB8FEC1E27000148B203F08F6A168C2A21';
wwv_flow_imp.g_varchar2_table(67) := '5E1A4386C337CC24D92C64F708010880098ECECACE25FE714D63F0F99CBD63CE8466C184070840003CE06434D15D04DC541B08809BBC91405DEAEA1B285AE8EA36F14939CDB9B71025800459E22000018803961B777DF2D917295A3878A4CEBCEA0A619E';
wwv_flow_imp.g_varchar2_table(68) := '2D587215010880ABDC81CA8080BD042000F6F246691E27E0B6E64300DCE69138EB337ADCD9140E987A8C131E762708003A010878980004C0C3CE47D3410002803E101781C3C7EAE8BB5B7E16359C686C89CBD6703BBFB4FD8DA865FCF8BF9ED5B309915A';
wwv_flow_imp.g_varchar2_table(69) := 'B3137AC55D148100B8C819A95095AEAE1EDAFDCE0751C3D0DF2D4CA63D7C6F43B4723EDC7B5037AB6664E8714412230001488C1B72B980003F7BE1826AA47415200029EDBE612A6FD1D9B1A2AA831E7C1AA606A66DE2D90D3ED8C3A1A0B8844A2BC65166';
wwv_flow_imp.g_varchar2_table(70) := '56E487434D2BCC63862000E9EA708BEEDE55542900F985FAC34F76E0E307AB8C0F5A65E5E492A2AA76146D5A196E35040170AB67502F10B0810004C006C8280204DC4A0002E056CFA05E2060030108800D905184B709B8B9F51000377B077503018B0940';
wwv_flow_imp.g_varchar2_table(71) := '002C060CF320E066021000377B077503018B0940002C060CF3DE26E0F6D64300DCEE21D40F042C240001B0102E4C8380DB094000DCEE21D40F042C240001B008AE1091A7718E1E3F4E3BFEFCA62961D75FDFD56B2C44A40C3D1111D71048858A40002CF2';
wwv_flow_imp.g_varchar2_table(72) := '92F159F5EEAE6EAAAF6F3025343535EB353696A12722020271108000C4012B9E5DB372F2C8EA03941F8F8DA74ED81704861280000C2562D2BA10824ACAC7525149D9A0E7E7F9A04D36E07978939C0433782BB0D57DC09F95AD3F3B6F7CA63D99389E87B7';
wwv_flow_imp.g_varchar2_table(73) := 'DA6BC9DB4F150B380348154FA19E20600101088005509D32699C13D877F008BDF9D7F74C09FB0F1ED69B642C434F44246509400052D675A7575C5123AFC9FA68DF01FAC39F769A123EDA177913AFA2E24DBCA7934FDD140840EAFAEEB49AF3CCC3698926';
wwv_flow_imp.g_varchar2_table(74) := '2764E7E6996C31FDCCA5528B2000A9E4AD11EA9A29071C8B4A47131FA4FECC4CF29914D856765E3E159795933F336B845A60732A118000A492B762A82B1FA0F945A3A8A8B49C8A4D0A6C2BBFB0987CFECC186A805D528900042095BC85BA8280C9042000';
wwv_flow_imp.g_varchar2_table(75) := '260385396F1348B5D6430052CD632EABAF50221383F73CF808DDB4A2DA94F0C2CB3BF4960A05DD5487617204644D06EA3573193EBFE54DE65F06B2BC108F160001F0A8E3CD6A360F0E5AF9D013DFF69C999D6356756167080108C01020588D8F009F01F0';
wwv_flow_imp.g_varchar2_table(76) := '434F251563A9484E419A1578CAB16CEC78E2079FE2AB91737BA762C9B608409FEA0BA4221CD4397602AA9A11BA4780A721CD083CE52844647C21F69AA4C79E01CAE8B5A325B6088012D0200076781365A40D01352368CB31638B00D8D598B4F13E1AE279';
wwv_flow_imp.g_varchar2_table(77) := '02BD81341200BB1AE3F95E03008E1130BB60BFC8E837DB66347BB69C01D8D598680D441A08A422810C7F1A9D01505F67572A3A01750601A708F47774A7CF2060A136AED329902817045291805DC78C2D9700F7DFFF6556B39E547404EA0C022311B0607B';
wwv_flow_imp.g_varchar2_table(78) := 'CFC0316381E9C1266D118053458ABA534BFC070110189E807DC78A8D02A0410086F73AB682C00081E0FE8188E50B1B0580200096BB1305A403014DA4E11980207A2F1D9C833680809180157145A3F43B03D048DB45F80301101891809DC78A6D970041A1';
wwv_flow_imp.g_varchar2_table(79) := '400046743D760001223B8F15C52EE0A5BDC7F6C8B28232E00302207066029D03C7CA99F730718B6D02505D5DCD07FF0726D61DA640C051021615BE7BE058B1C8FC60B3B6090017AB09C26500E10F04CE4C4090B0F518B155004490B611FE400004CE4840';
wwv_flow_imp.g_varchar2_table(80) := 'D3B4F41500CDA7FE5AB65C93011F100081D30968415FDF7F9F9E6C5D8AAD67001BEEFAE7C3A4D15FAC6B0E2C83803D042C29451E1B8FDCB5FCA825B6CF60D45601E03A0841BFE125020880C060024E1C1BF60B405083000CF63BD640204420A8057F158A';
wwv_flow_imp.g_varchar2_table(81) := 'D8F8CF7601E81CAD6C271207087F2000024602074BFA4FBC6E4CB0236EBB003CB664491F51F05FED681CCA00012B085863537BBCBABADA96F7001AEB6FBB0070E1012DF0B85C62364042C0070424817E52959FC8A5ED1F4704E0D1D5B71D9047FF8BB6B7';
wwv_flow_imp.g_varchar2_table(82) := '160582803B093C577BF792834E54CD1101E086AA41ED215E228080D7092841ED61A7183826000FDFBB749B46F482530D47B920900801B3F3F031C0C782D97663B5E79800842AA8D25DA125FE818047096801F16D279BEEA8006CB8BBF22DD9F86764C007';
wwv_flow_imp.g_varchar2_table(83) := '04BC48E09947EE5BB2DBC9863B2A00DC705509DC2197ED32E003025E22D0A105C5BF38DD60C705E087F7DCFAA10E493FD8000004BA49444154A6897B9D0681F241602402A66ED7E88E0DF72EF9C8549B0918735C00B8CE75538A37C8E5EF65C00704D29E';
wwv_flow_imp.g_varchar2_table(84) := '8020DA5EBBBA72B31B1AEA0A01F8C597BF1C9097025F954070292021E093D6043A8241F18F6E69A12B048061F0A580D0B45B643C28033E20908E0482A469FFE08653FF305CD708005768FDEAA54F9210AB388E00026E2260465DE458D7BFD4AE5EFAB419';
wwv_flow_imp.g_varchar2_table(85) := 'B6CCB2E12A01E046D5AE5CF21069C4CF0AF02A0208A40B81F51B562F71EC8EBF3341749D007045BBCBC412B97C49067C40201D083C3DAAAFEE5B6E6C882B05801F19EEEE138B05D1536E84863A81401C049E917DF9A6EAEAD06BF1E3C866CFAEAE14006E';
wwv_flow_imp.g_varchar2_table(86) := 'FA63D54B3AD7AF5CF245A1D15A5E470001A7082451EE83F292F60BDC9793B0616956D70A40A8D54268EB5757DE2BCF0478DA24104AC33F10703F815E4DD36EAA5D55B9520E6A6B6EAEAEBB056080DCFA5595FF2684B85CAEBE2F033E20E05E0282760735';
wwv_flow_imp.g_varchar2_table(87) := 'BA7CC3EAA53F736F2523354B0901E0EACACB813FB6F665CE22D2EE97EB7D32E003026E2220FBA4B6A6BB44CC796475A5EDEFF64B1444CA080037F05FABBFDA5DBB6A69754028D3E5FAB332E00302961288C1389FE2FF525502D364DFBC8F07B063C8E39A';
wwv_flow_imp.g_varchar2_table(88) := '5D524A00C2D41E5DF98D3DB5AB2A3F1F14DA02393EB03D9C8E2508D8494013B44D53B439B22F7E89EF64B5B36CB3CA4A49010837FE91954BB7CBF181059A16BC9434F15399DE23033E206025811E12F433FEF2D9B0B272D1867B96EEB4B230AB6DA7B400';
wwv_flow_imp.g_varchar2_table(89) := '84E16C58BDECB5DAD54B6EF6F589B3A473F80D2B8E3F6619AE1B966943602F09ED2EEE63B52B2B6FE22F9F7468595A0840D8113FA85E72523AE7FBF2946C9220ED53327DA3BC403B2497F88040DC04B8EFC87EB4495E665E2DFBD4C4DA954BBFC77D2C6E';
wwv_flow_imp.g_varchar2_table(90) := '432ECE90560260E4BC7ED5D217A4D36EDDB0AAF26C4DA559F27A8D5F3AF28ADCA743067C40201A01EE1BB28F88FB14526673DF91FD68D9FA5595697B5B7ADA0A80D1BBFCEE4179BDB6560AC24219F2542538510AC2DF0A8D1E90FBF13B09771169B6FE2A';
wwv_flow_imp.g_varchar2_table(91) := 'AB2C171FC708847C2D7D4ECF701FE0BEA005C524EE1B32C83EB264CDC3ABBEC1DB1DABA15D057B420086C2FCE13DCBF64A41786AFDEACAEF48872F966176EDAAA5E36A57550A2DBF374BE9EB2AEEEF0D8CC9D0FC670783EA79E4A329B2935C2028383340';
wwv_flow_imp.g_varchar2_table(92) := '620E29C1B908EE63C0BE611FB1AFD867EC3BF621FB927DCABE651FD79EF2B5F479E562EE03DC17DCF48CFED0FE6AE5BA27056038A01BAAAA7A1EAEFE66F3C6FB6FADFBFFABBF76E8917BFF795FED9D951FC84EF2CEFA55CBFEF2E8AA256FD6DEB3EC0D04';
wwv_flow_imp.g_varchar2_table(93) := 'F73160DFB08FD857EC33F61DFB907DC93E65DF0EE77BE336AFC421005EF134DA090251084000A24041120878850004C02B9E463B41200A010840142848F236012FB51E02E0256FA3AD2030840004600810AC828097084000BCE46DB41504861080000C01';
wwv_flow_imp.g_varchar2_table(94) := '82556F13F05AEB21005EF338DA0B0206021000030C4441C06B0420005EF338DA0B0206021000030C44BD4DC08BAD870078D1EB6833080C1080000C80C00204BC480002E045AFA3CD20304000023000020B6F13F06AEB21005EF53CDA0D029200044042C0';
wwv_flow_imp.g_varchar2_table(95) := '0704BC4A0002E055CFA3DD202009400024047CBC4DC0CBAD870078D9FB68BBE70940003CDF0500C0CB0420005EF63EDAEE79021000CF77016F03F07AEBFF0F0000FFFF68977C75000000064944415403005FC4E7D3BD4FAC430000000049454E44AE4260';
wwv_flow_imp.g_varchar2_table(96) := '82';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6281748171332198)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000234494441547801EC935D4B145118C7FFCCECEA6E892E1154529417665D185D441004DD1841117521D54D2FD27542047D8188BE42417D81C43B59445041110417';
wwv_flow_imp.g_varchar2_table(2) := 'C117445D5F76D1D515F542D69D9DD95919E739B2077738EE398C0B82CCC27F9FE7FFCC39CFF9F1708ED6FDF3B77396D270C6BF002098403001A509388E03339F4343BDC622F95ABD5E2580A259C0837B77D17EA79545F256C140634463A2DC2F90120035';
wwv_flow_imp.g_varchar2_table(3) := 'D7359D02CAF1EAE5263C7BF288E99A9BB3A9944CDCBF7D037023F36C47F53F2580BA4814338B4B5848AE62666119E443A110EFACBB394DE5DBE7B7F8F0FA292892E70BAA244A00B66522B76F606D6B1BB97C1E966920BBB387B1C4B4AB2996D319E1F011';
wwv_flow_imp.g_varchar2_table(4) := '5439524D2629001DD6DED6828EC70FB96E355F81E15ECA646A1DC95406960BA887C2F8D713476FFF28FEFE8FB329C90EA7EF5280926DE352AC89D672D9450B1F3B5FE053E773A6772F3BE0D805A4D6B318184B209DC982A6C6375449A400A2BDB1582374';
wwv_flow_imp.g_varchar2_table(5) := '5DE79FD2994D7477BDC19F1F5FB9BEBC7F05CB7D3D7CD109892F006FAFFDBC81D69BCD15E5B696EB28D9C58A9AC8480122D10B880F8E88F6D6A42605A0CB55571FA9382C313587C9D9F98A9A5F23051035F602D19AAEEFBF287091A7E9F1C209892F0051';
wwv_flow_imp.g_varchar2_table(6) := '2F2F14799A9E68EDF19A1280A6E948AEA4B9C81F6F729A5C09207AB1013B39938BFC46769BDD03BA0B94FB85500210352F1C6858CEEC32514E53E91B1E4759E445FBBC35DF00DE463495A189399445DEBB46E46B06206AAE520B0082099CFF09C85EC221';
wwv_flow_imp.g_varchar2_table(7) := '000000FFFF0F145ECD000000064944415403009B781F90BB94A9F90000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6280974752332182)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260606101629Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101629Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD079C24D77DD8F97F5587E99E9E9C763621EE2267805864100001108CA2682A9D299D2CEB74B62C599275A24FB22C4A1FE94E99D6D99648';
wwv_flow_imp.g_varchar2_table(2) := '8AF649B244F9438914C504522448221004889C01120091364DCE3D3D9DFCFEBD18607676BAAABBA74355BDDF606AA7BBEAD5ABF7FFBEC1D4BF5E5557B93FFF3B1F2D3361C0EF00BF03FC0EF03BC0EF805DBF03AEF08500020820800002960988900058D7';
wwv_flow_imp.g_varchar2_table(3) := 'E5048C0002082080000900BF030820800002085827A0013302A00A4C08208000020858264002605987132E0208208080ED02C7E2270138E6C0BF08208000020858254002605577132C0208208080ED02EBF19300AC4BF0130104104000018B0448002CEA';
wwv_flow_imp.g_varchar2_table(4) := '6C424500010410B05DE0CDF84900DEB4E015020820800002D608900058D3D5048A0002082060BBC0C6F84900366AF01A0104104000014B0448002CE968C24400010410B05DE0F8F849008EF7E01D0208208000025608900058D1CD04890002082060BBC0';
wwv_flow_imp.g_varchar2_table(5) := 'E6F84900368BF01E0104104000010B0448002CE864424400010410B05DE0C4F849004E34610E02082080000291172001887C1713200208208080ED025BC54F02B0950AF310400001041088B8000940C43B98F010400001046C17D83A7E1280AD5D988B00';
wwv_flow_imp.g_varchar2_table(6) := '0208208040A405480022DDBD04870002082060BB40B5F84900AAC9301F010410400081080B900044B873090D01041040C07681EAF1930054B7610902082080000291152001886CD712180208208080ED025EF1930078E9B00C010410400081880A900044';
wwv_flow_imp.g_varchar2_table(7) := 'B463090B01041040C07601EFF84900BC7D588A0002082080402405480022D9AD04850002082060BB805FFC24007E422C470001041040208202240011EC54424200010410B05DC03F7E12007F234A2080000208201039011280C87529012180000208D82E';
wwv_flow_imp.g_varchar2_table(8) := '504BFC2400B52851060104104000818809900044AC43090701041040C07681DAE22701A8CD8952082080000208444A80042052DD49300820800002B60BD41A3F0940AD5294430001041040204202240011EA4C424100010410B05DA0F6F849006AB7A224';
wwv_flow_imp.g_varchar2_table(9) := '02082080000291112001884C5712080208208080ED02F5C44F02508F16651140000104108888000940443A923010400001046C17A82F7E1280FABC288D0002082080402404480022D18D04810002082060BB40BDF19300D42B4679041040000104222040';
wwv_flow_imp.g_varchar2_table(10) := '0210814E24040410400001DB05EA8F9F04A07E33D640000104104020F4022400A1EF42024000010410B05DA091F849001A51631D041040000104422E400210F20EA4F90820800002B60B34163F0940636EAC85000208208040A805480042DD7D341E0104';
wwv_flow_imp.g_varchar2_table(11) := '1040C0768146E3270168548EF510400001041008B1000940883B8FA62380000208D82ED078FC24008DDBB126020820800002A1152001086DD7D1700410400001DB05B6133F09C076F45817010410400081900A900084B4E368360208208080ED02DB8B9F';
wwv_flow_imp.g_varchar2_table(12) := '04607B7EAC8D0002082080402805480042D96D341A01041040C07681EDC64F02B05D41D6470001041040208402240021EC349A8C0002082060BBC0F6E32701D8BE2135208000020820103A011280D075190D4600010410B05DA019F193003443913A1040';
wwv_flow_imp.g_varchar2_table(13) := '000104100899000940C83A8CE62280000208D82ED09CF849009AE3482D082080000208844A80042054DD456311400001046C176856FC2400CD92A41E0410400001044224400210A2CEA2A90820800002B60B342F7E1280E6595213020820800002A11120';
wwv_flow_imp.g_varchar2_table(14) := '01084D57D1500410400001DB059A193F09403335A90B0104104000819008900084A4A368260208208080ED02CD8D9F04A0B99ED4860002082080402804480042D14D341201041040C0768166C74F02D06C51EA430001041040200402240021E8249A8800';
wwv_flow_imp.g_varchar2_table(15) := '02082060BB40F3E3270168BE29352280000208201078011280C077110D4400010410B05DA015F19300B442953A11400001041008B8000940C03B88E62180000208D82ED09AF849005AE34AAD082080000208045A800420D0DD43E310400001046C176855';
wwv_flow_imp.g_varchar2_table(16) := 'FC2400AD92A55E041040000104022C400210E0CEA1690820800002B60BB42E7E1280D6D9523302082080000281152001086CD7D0300410400001DB055A193F09402B75A91B010410400081800A900004B46368160208208080ED02AD8D9F04A0B5BED48E';
wwv_flow_imp.g_varchar2_table(17) := '0002082080402005480002D92D340A01041040C0768156C74F02D06A61EA470001041040208002240001EC149A840002082060BB40EBE3270168BD315B400001041040207002240081EB121A840002082060BB403BE22701688732DB4000010410402060';
wwv_flow_imp.g_varchar2_table(18) := '02240001EB109A830002082060BB407BE22701688F335B410001041040205002240081EA0E1A830002082060BB40BBE22701689734DB410001041040204002240001EA0C9A820002082060BB40FBE22701689F355B420001041040203002240081E90A1A';
wwv_flow_imp.g_varchar2_table(19) := '820002082060BB403BE3270168A736DB420001041040202002240001E9089A810002082060BB407BE3270168AF375B430001041040201002240081E8061A810002082060BB40BBE3270168B738DB430001041040200002240001E8049A800002082060BB';
wwv_flow_imp.g_varchar2_table(20) := '40FBE3270168BF395B440001041040A0E30224001DEF021A800002082060BB4027E22701E8843ADB440001041040A0C30224001DEE00368F0002082060BB4067E22701E88C3B5B450001041040A0A30224001DE567E30820800002B60B742A7E12804EC9';
wwv_flow_imp.g_varchar2_table(21) := 'B35D0410400001043A284002D0417C368D0002082060BB40E7E22701E89C3D5B460001041040A0630224001DA367C30820800002B60B74327E12804EEAB36D0410400001043A244002D02178368B0002082060BB4067E32701E8AC3F5B470001041040A0';
wwv_flow_imp.g_varchar2_table(22) := '230224001D6167A30820800002B60B743A7E12804EF700DB6F58A05C2E4BB15090DC6A565696166579614E16E766647E664AE6A627646EEAE8B1C9BC5E989DAA2CD332D9E5455933EBE8BA0D6F9C1511400081900B900084BC036D6B7EA9549242212FAB';
wwv_flow_imp.g_varchar2_table(23) := 'D9E5CA0E7DDEECD8E7A72765697E5696171724BBBC24B9EC8AD9C1AFCA5A2E776C5A5D95D59595CA322DB338372B95F566276561765AB22B4B2691C84BB95CB28D93781140A063029DDF300940E7FB8016D420503647FBCB8BF3A247F633470FCBC2CCB4';
wwv_flow_imp.g_varchar2_table(24) := 'D9A92F4B616DAD86B54F2C522E95CDBA2691583189C4EC8C4C9B3A67278F9A24615134C938710DE620800002D112200188567F462E9AB2392AD71DFFF4D183B2BC306F76DA8DEDF06B8129E4F366546156668E1E12DD66D98C36D4B21E65104000817A05';
wwv_flow_imp.g_varchar2_table(25) := '82509E042008BD401B4E1028958A95A3713D32D71D7FA9D8BEE1791D01D06DCE4C1EA95C5BA0EF4F68203310400081900B900084BC03A3D87CBDA86F6E6A4216CD79FD52B1D8B110F52241BDB6607E66B272A161C71AC2861140206202C10887042018FD';
wwv_flow_imp.g_varchar2_table(26) := '402B5E17585D5932E7F7A74487E3A5FCFACC0EFFC8E772B2303B55B9B8B0C34D61F308208040D30448009A464945DB15D0F3EE0BB333522E0764CFBF21A072A92CFAF1426DE386D9BC44000104EA1608CA0A240041E9098BDBA13BFCC5B969D1F3EE8D30';
wwv_flow_imp.g_varchar2_table(27) := 'F4F464E4F4534F964B2F3A5FAEBEE22D72FDD557C88DD75D2DB7DC789DDC7AD3F595D7D75D7D40AE3A70995C62CA68D9BEBE9E46365569A39E1290A00C4F3414052B21800002222400FC1674544077FE4BF333925D5EAEAB1D0383FD72F699FB4577ECD7';
wwv_flow_imp.g_varchar2_table(28) := '981DFB3967EE933DBBC66564684006FA7BA5B7A75BD2A92E4975252BAF07FBFB64747850F69A32679BB2575C7649255138FFDCB36460B04FC4919ABF72D96C6534A0E6152888000208BC21109C172400C1E90B2B5BA277E5AB67E7DF954ACAB9679F2157';
wwv_flow_imp.g_varchar2_table(29) := '5C72919C71FA29A23BF62EB39377DDDA7F9563AE5B490E064CA270DAC97B4D5D17CB05E79E23994CBAE63ED02460697EB6E6F21444000104822650FB5FCDA0B59CF6845E40EFC0B7343F57531C31D791B3CFDA2F375C7DA5EC33C3FDBAD3AF69C51A0A69';
wwv_flow_imp.g_varchar2_table(30) := '5DA79EB45BAEBBEA0A39F38CD325914CD4B096543E22B89AAD6FE4A2A68A298400029115085260240041EA0D8BDA925FCBC9E2DC4C4D11F79A73FCD75F73A59C71DA29A23BEB9A566AA050321197B3F69D26D75D7979CDA3018BB333B2965B6D606BAC82';
wwv_flow_imp.g_varchar2_table(31) := '00020874568004A0B3FE566E5D3F5F5FB990AE868BFD47478645CFD76B12D02EAC9E4CB749020EC8F0D0A0EF268F5DC3307BEC638BBEA529800002760B042B7A128060F547E45BB3BEC3ACE5CE7E3BC777C825179E27DDDDA9B6BB24CD698003975E24E3';
wwv_flow_imp.g_varchar2_table(32) := '3B467DB7ADF72C585EACED54866F651440000104DA244002D0266836734C4087FEF54E7FC7DE55FF77C7E888D9F99F5BB98ABF7AA9D62E49985302975E787E4D4980C6945D5E6A6D839A517BB95CB9CF42B95CAA3CF4A8542A9AF7253399E118B3AC199B';
wwv_flow_imp.g_varchar2_table(33) := 'A00E0410D85A206873490082D623116E8FDED6B7962BE7F56A7C3DF28FC7621DD788C76372A91985E8EBEBF56E8BD97FAE2C2F88D9937A97EBC05275D7EB14F42E8BCB8BF3B2383F23F3D353323775D44C13958F346ABF2C2F2D8826316BAB59D1D3341D';
wwv_flow_imp.g_varchar2_table(34) := '682A9B440081360A9000B411DBF64DADAE2CFB9E2B4FA5BAE4B28B2E141D820F8A573C1E97B75C7C81E88880579B8AF982E8271BBCCAB46359B190373BF245B3639F147D8AE2F4D143A28F515E989B11DDC9AF2E2F572E5CD453173AADADAE9AF24BB29E';
wwv_flow_imp.g_varchar2_table(35) := '1CCCCD4CCACCC421B3EEA14A1DFA514D2DD78EB6B30D04A22B10BCC8480082D727916C51B954AA69E778E1B9E7546EE4133404BD30F0A2F3CF15BF1B062D2F2E5486D6A5CD5FC562A1F2B1C49989C3326B8EEC17E7672597D523791DE237C313E6BB72F3';
wwv_flow_imp.g_varchar2_table(36) := '42FD59AD6DBAECF549CF06E82880D6A1A3039A4068DD9A24E8FC6A55301F0104C2234002109EBE0A754B5796174577525E41ECDE3D2E3B4687BD8A7474D9AEF131191EF4FE644065B8DD0CA1B7ABA17A2E5F8FD07507AD3B6A3D52AF5C60A93BF2263542';
wwv_flow_imp.g_varchar2_table(37) := '93018D4BEBD6DB35EB2738569616CDD98E266EA4496DA51A04822A10C476910004B15722D8A65C76C59C1FF70EECCCD34F13C775BC0B7578E9D967EEF7BD51D06A765974C4A3D54DD5532AB3934765716E56F4F443ABB7B75EBF26029A6CE83504B955D3';
wwv_flow_imp.g_varchar2_table(38) := 'AFEB0BF8890002A112200108557785B3B17AE45F30E7A5BD5A7FCA297BA59D9FF5F76A8BD7B2E1C17ED9BB6BA75711D14F3A68CC9E85B6B150930B3DE25F989DF6BDA6621B9BF15D35BFB656B998509F92A82311BE2B5000016B05821938094030FB2552';
wwv_flow_imp.g_varchar2_table(39) := 'ADD2ABCA2BE79FAB44158BB972C669A756591ABCD927EFDD2DDDE9EACF0D2897CAB296CBB5A4E19A5CCC4E1F15BD70AF251B68A0D29C19DD999938D2D164A48166B30A02D60B900058FF2BD0620073023997CD7A6E647868A8F2701ECF42015AD8D7DB23';
wwv_flow_imp.g_varchar2_table(40) := '3B7C6E10945F6BFEED8157CDA98585992929ACE503A471AC297A61A08E4AE4B92DF23110FE45608340505F920004B56722D2AE62A9541912AF164E2CE6C8DEDDDE43EAD5D6EDE4FCB111EF8B15F53C7921BFD69426964D12A557DF2F9A21FF62B158579D';
wwv_flow_imp.g_varchar2_table(41) := 'AE195D49A75272D29E5D951B2B5D73E052B9E1DA0372CB0DD7C83B6F7EABBCEB96B7CAAD375E23D75F7D40AEBCFC62B9E88273E4D453F6483A9D125DB79E8DE98582B3D313B2B2B420DAE67AD6A52C0208B45F8004A0FDE6566DB190CF79EE0CD2E96E19';
wwv_flow_imp.g_varchar2_table(42) := '1CE80F9DC9607F9FC44CF252ADE1C562C1243EDB4F007447AA17DCE9D5F7260FA8B6B913E6337D987F0000100049444154EB3D0B2E38F74C79EFDB6F949FF891F7CABB6FB95EAEBCF402B9F0DC33E49CFDA7C9FE53F7CA297B77CAC97B76CABE53F6CA79';
wwv_flow_imp.g_varchar2_table(43) := '679E26979C77965C7DD985F28E1BAF951FFFA1F798756E90F34D1D75DD8AB92CA24F785C9A9FF1EC77E10B016B04821BA81BDCA6D1B2280814F2DEC3D5FD7DBD92E94E872E54DDC18EEFD851BDDD6647E877E163F595DF5CA247FEF5DC5C484F4F5C77D5';
wwv_flow_imp.g_varchar2_table(44) := 'E5F241B303BFF6C025B2CB9CAA88B9F5FF6FAE7761DCB3734CAE33757CF003EF362304974B7F5FCF9B0DF379955D5996E5059E8FE0C3C462043A2A50FF5F868E36978D874DA06C4E0178B579A0BFDF6B716097B98EEBFBB4C0921905D84E00D99525D1CF';
wwv_flow_imp.g_varchar2_table(45) := 'F87B5D40B95E7FB719B2BFF8C273E503EFB945CE3FEB74497775AD2FDAF6CF782C6E46084E3775BF5DAE78CBC5924ED550B74980F4DE0FAB593E26B8ED0EA082500B04B9F1240041EE9D08B4AD542E7946A1E7A73D0B0475A12366E4A25BBCEE0C58F249';
wwv_flow_imp.g_varchar2_table(46) := '7EC4E3AB905FAB1C41974B664FEA514E17E90D8AF43CFE5566883FD5C41DBFD6BD71EA4A26E4D2F3CFAA5C3F3056CB0D9B4CD317E7A6A51923211BDBC16B0410688E000940731CA9650B013D0F5EF6D909EA4700B7583514B3BABA92E2382613A8D6DA7A';
wwv_flow_imp.g_varchar2_table(47) := '4EDA6FA8431387F99949A9DCD16FC3FCAD5E9EB1EF5479FB8DD75486FAB75ADE8A797A6AE09D6FBB4E4E3D798F6FF56593C02C9858F477C1B7300510889C40B00322010876FF84BA75FAC75F7766558330FB4E7DD04ED5E5015FD0954C7AB6502FE0F32C';
wwv_flow_imp.g_varchar2_table(48) := '5065A19E3B2F16FCAFF63F70E98572F37557D436245F655B8DCED6530EEFB8E95AB9DC8C3AF8D551C81764697ED6AF18CB1140A0CD0224006D06B76B7365D127D3558BD9711C89B9E1FD15D44705EBB500D2C4AFB5DCAAE8E7FDFDAABCECE2F3E5B20BCF';
wwv_flow_imp.g_varchar2_table(49) := 'F12BD6F2E5975D704EE5BA00BF0D695C3AF9950BCA724DDE34792D958A7C9A21289D12C27604BDC9E1FDEB1B7459DA67041C3344EEFD2B566A7098DC54DEF96F33BC2D3ED738D4D3C8B2A92BAB0FD9D17A3D563CFBCCD303B1F3D7263A8E23E79FB54FCE';
wwv_flow_imp.g_varchar2_table(50) := '3E639FBEAD3A954D4CFA8986AA053AB0A06C4E4FE5F36B95A7542E2DCC89DE5A594FBDE80D8DF43907C7A689CAD315E7A626449769191DCD585D5912BD4E43EBE840D3D924024D11F0FEEBDC944D5089AD028EEB482C1E976A5F65B353289923AC6ACB83';
wwv_flow_imp.g_varchar2_table(51) := '3E3F5F2C8AD7258E8EE3D41542767959723E4F12DCB5734CAEB8E482408D9C2413713970E9F932E67361607E2D57D3E8465D6875162E9B84B390CF573E5D313F3B2DBA635F9C9D9195C505595D31FED96CE536CBFA9C032D5799D6D644472F7266999659';
wwv_flow_imp.g_varchar2_table(52) := '3149DA8259471FBBBC60EAD04F6A5446BA4CDD753687E29116087E702400C1EFA3D0B6D0715C717D86F88B05AF5D68B043CF9B1D89570B357EAFE51B97E98E6965717EE3AC135E6732DD72E3350744CFBF9FB0B0C33332E994DCFCD6AB442F8CACDA94B2';
wwv_flow_imp.g_varchar2_table(53) := '48A74601D45777D4BAD39E99385C7982A23EA3A26C4601AAB6D76741D924B09AB02DCECDCAF4D1C3A27741D40441B7E5B32A8B11088400094020BA219A8DD09DBF1BAB3E02A05117433C0290334786BA13D038B69A1C9FE467E33AD9E525D173CE1BE76D';
wwv_flow_imp.g_varchar2_table(54) := '7E7DC56517497F6FED37E3D9BC7EABDF0F98B65D7EF1059E9BD1C716AF66973DCB3473A1EE8CD5767DA75F307DD6CCFA37D695CFE52AA711745BABE614816E7BE3725EDB251086684900C2D04B216EA326015ECD5F5C6ADFCEC0AB1D8D2C9B5B58F45CCD';
wwv_flow_imp.g_varchar2_table(55) := '2FF68D2BEB0E63E3FBCDAFF5E8FF8C53F76E9E1DB8F767EE3B5906FAFB3CDBB56A929D56EF1CB5FE5C76456627CDD1FEFC8C140B05CF363573A16E6B616EC66CFB88AC9A64A7BC8D518666B68BBA10D82C4002B05984F74D15F01B01985F5868EAF6DA55';
wwv_flow_imp.g_varchar2_table(56) := '59B15892A9A969CFCD795DFFB071C552B1E87BB39CF3CEDAEF7B3A65639D9D7AAD1F8DDC77DA499E9B5F5BCB492BEF0BA0D71A2CCC4EC9BC99F42388B5DC49D1B3C18D2C34A73BF4FA8185D9E94A3BB44D8D54C33A61150847BB4900C2D14FA16DA5DFE7';
wwv_flow_imp.g_varchar2_table(57) := 'FC97965664D14C610B30975B939999EAF7BA7763AEC41309A9E54B2F30F3DA4965326939E7CCD36AA92A1065F69F7AB2F49AD301551BA33B479304545DBE8D053973D43F3F3D29B96C56BC4CB7B189FA5635B1AEADAECAB136715BE4FAF028DD6A011280';
wwv_flow_imp.g_varchar2_table(58) := '560B5B5E7F2C1697583C5655216BFE38CECE795FFC5675E50E2E989D5F90823972AFD6048D3B1EF7BE5190AE5B19AA5EF5DE319CB467B774A7525A3C14D3405F8FECD9B5C3B3AD6BE67CB934F9AA793DD73F3F33E57B2D8557C31CC791B8F97D4DA7BB64';
wwv_flow_imp.g_varchar2_table(59) := '60A0570607FA449F86A8F3BCD6F35BA6D77768DBB48D7E65591E7E81B044E086A5A1B4339C027A215C2299AADAF8A2D9894ECFCE545D1ED405533E6D8E2792E2C662BECDD7F3C37A84E85570F7F898D7E2C02D735D574E3BD9FB7A857C3E2785269E97D7';
wwv_flow_imp.g_varchar2_table(60) := '4F172C9AF3EEF562A4524939EFECFDF2133FF46EF9AD5FFE3FE53F7DF897E423BFF18BF287BFF6F3F23BE6FD6FFFF2CFC81F98D73AEF4F7EF397E437CDFB1FFFC0BB2BEB742513F56E4EB48D7AA7C7BA576405045A204002D00254AA3C5E20E973F43A31';
wwv_flow_imp.g_varchar2_table(61) := '3965CE0987E7E3807ACA62D2B4F9F8288F7F9748761D3FA3CA3B7D508E8E0254596C8E40FB656C64A8DAE2C0CE1F3247CE8964BC6AFBF4D30095CFCE572D51FB02DDF92F2FD4378A343E362C7A2BE35FFDB97F213FF713EF979BAFBE544EDB3B2EC37AD4';
wwv_flow_imp.g_varchar2_table(62) := '6F4630FA7B33F2C6D4D32D8366DEB089E9F4BD3BE5966B2E155DE7D77EFEA7E45DB75C2F3B4C5DB5B7563F0AB9207AE3A17AD6A16C9804C2D356373C4DA5A561154876A5C471AADF146775754D9E7BFEC5D08477F0F011595E36E798ABB5D884AA2300D5';
wwv_flow_imp.g_varchar2_table(63) := '166F9CAF578C6F7CBFF9B5DE5C67B0BF77F3ECC0BFD75316A79CB4C7B39DC5E2F6AFCCAF77E79F48C4E4FDEF7A9B7CE85FFFB8FCD87B6E92D3F68C8BDEC3C0B3A15B2CD4753461F89177DE201FFA573F2E3FF8CEB7493D23022B4B0B1DBB27C216E130CB';
wwv_flow_imp.g_varchar2_table(64) := '520112004B3BBE9D61BB6E4CFCAE887FF1A5576435B7D6CE6635B4AD85C56579E9E5573DD7D5842756C3F0BF5652F2B90FC2F8D888160BDDA4E7CC4FD9B3DBB3DDFAE907CF023E0B73D9959A77A2B1982B375F7FA5FCD1AFFF82BCEFE66B6474B0DFA7F6';
wwv_flow_imp.g_varchar2_table(65) := 'DA178F0DF5CB0FDE728DFCDEAFFE9C5C7FD565E6D48FEBBF72592A6DD71B09F917A6449804C2D4D61A7E53C3140E6D0DAA4057BADBB369C562513409F02C1480852FBEFC8AE80D80BC9AD295EA16BDF6C1ABCCFAB2B2CF67C407FAC277F4BF1EDBA01932';
wwv_flow_imp.g_varchar2_table(66) := '5F7FBDD5CF924FF2B3D53AEBF3F463757A515D2D57FAEFDA395A39BFFF133F78AB0CB570346564B04F7EFA87DF25FFF117FEA58C0C0DAE37B5FA4F93042CCC4E493E1FFCC4B77A102C09B3000940987B2F446D4F77F748DCE763719A001C9DF4FE6C7D27';
wwv_flow_imp.g_varchar2_table(67) := '439E9A9993D70E1EF26C82EBBA92F249763656A057876F7CBFF9752251FD3CFAE6B2417BEF37245E2E993D60038D2E9A53077A315D2DAB5E74DE59F22B3FF3413979D7582DC59B5266DF49BBE4D7FFED4FCA05E79CE15B9F1A2CCE4D8BDFA920DF8A2810';
wwv_flow_imp.g_varchar2_table(68) := '108170358304205CFD15DAD6BAB198A4BA339EED2F9A5180679EFB9E2C2C2E7996EBC4C2EC6A4E1E78F8512916BD2F56CCF4F5D77CF4AF71943D46001CD7F1BC7642D70FF214377DEED5BE72D9DB72AB75CBE57265E85C6FB2B3D5F2F5796ECC91DB6EBC';
wwv_flow_imp.g_varchar2_table(69) := '467EF683EF133D325F9FDFAE9FC366F4E3DFFEE407E496B75E29AEE947AFED16D6F2B2B2342F1A9B57399621D06C011280668B525F55014D0012C964D5E5BA607E61519E7CE6BBB2E6F3A01D2DDBAE496FFAF39D471E9335F387DA6B9B6ECC35494E8F57';
wwv_flow_imp.g_varchar2_table(70) := '911396953C76828E63128013D608CF0CDDF1391E3BBF4676787ACE7C75D9FFF6D1375D7385FCD87BDE26E95457C7C07404E4833F708BBCEDBA2B7DDB903531E9350DBE0529106881B0358E04206C3D16E2F6BA6E4CD23DFEE7B427A7A6E5F1A79E354744';
wwv_flow_imp.g_varchar2_table(71) := '9D0F568FF81F303BFFB9599F8F9939223D7D834D3D62AFEC204D12D07985C65AE038E6CF8BD7287F9DB1E968C9F242F5BB2FAEB7F2D20BCF911F79D78D5267F5EBAB37F5A7E33895B65C76D1B9BEF5EA271A2A7DEE5B9202083447C0FC1FDA9C8AA80581';
wwv_flow_imp.g_varchar2_table(72) := '5A04BABAD292ECEAF22D7AF0D011B9DF0CB9EBD0BB6FE11615D023FFFB1E7A44A6CDB97FBF4D24925DE277A1E35675B8BA93DC6A81995736E7C80BE6B4887919CAEFBC19C5F1DAA1999CA9AEB8B22B4BE6148CF74707CFDA77AAFC8B1F7A97E8D1775D95';
wwv_flow_imp.g_varchar2_table(73) := 'B7B0703211376D7AA79C76B2FFC7227359FFD18D163695AAB72510BE954900C2D767A16EB15E1DDFD35FDB91F2D1A393F2D0A38F8BDE76B7DD41EB7508F7DCFFA04C4DCDF86EDA755DC9F49A73FFE668CFB7F0A602EAB169D6716F8B85E271EFC3F426AB';
wwv_flow_imp.g_varchar2_table(74) := 'B7FBF56A703D5EE6DC7F767949BCAEFA8FC55CF949B3F3EFEFE9F6DA6A4796F565BAE55FFFF8FB2511F7B83BA4192D595E5C30319A171D69251BB54D8004C0B61E0F40BCF144527AFA07446A3804D4A3EF071E7E5C0E1E3E2AEDF82A99A3EE4326F1B8FB';
wwv_flow_imp.g_varchar2_table(75) := 'BEEFC8528D8F2ACEF40D98518D5443CD734DF2E0B56290AE85F06AE756CB56B2B9AD66BF31CF2FF6370A9A175973645CF4B975F0AD6FBD5A76EF1836A583F93D3E3228D75FF516CFC6698CABAB1E3799F25C9B859D1408E3B64900C2D86B1168733AD32B';
wwv_flow_imp.g_varchar2_table(76) := 'DD3D7D524B1290CD66E5C1471E97471E7F4AB2ABADFBCC7436BB2A8F3EF9943CF0D0A352C8D776E49DE9EB9774A6BE0BFF64C397EB7A1C119A72AB7E47D1A64C50BFD5D3AB6D7EB16F5C37BBB4B8F1ED09AF63E6C8FAEDD75F7EC2FCA0CD78E70D574ACA';
wwv_flow_imp.g_varchar2_table(77) := 'E7C2C4ECF2A2789D3A095A4CB427BC022400E1EDBBD0B75C87CDF5FE00B506F2CA6B87E49B77DF2BDF7DF1A56D3DF16DF3F60A66985DEBFCEA9DF7C8ABAF1DDEBCB8EA7BFD5483C650B5400D0B1C8FABE475F519BF8B0FB5500027DD814D4ECF7AB6CC8D';
wwv_flow_imp.g_varchar2_table(78) := '79273FEB2BEBC743F59909EBEFB7FAF9B66BAF68E94D7EB6DA6623F34687FAE5AD575DE6B96A7E2D27658F8F877AAECCC20E098473B32400E1ECB748B4DA711CD1E173DD91D61A900E893FF3ECF7E49BDFBA5FBE67128109738EBE910B05D7F205999A99';
wwv_flow_imp.g_varchar2_table(79) := '95A79F7B5EEEBCF73ED13ACB66F8BFD676E8517FDFE0F6879BF57488D7368F4C4EC9D24AF8868457CC68CAAB073D922973FA27168B7B85FEC6B27C6ED59C177FE3ED092F0607FAE4A6AB2E3D617E50675C77F945A26DAEDABEB2C89A4902AA2E6701024D';
wwv_flow_imp.g_varchar2_table(80) := '122001681224D53426E09A73E03DFD83E67440AFD4723A405EFF5A5C5C92A74D22F0E0238F552E147CE299EFCACBAF1E12BD93A01E794ECFCEC9ECDC4265D2D793D33372E4E8942973509E34EB7DC70CF37FE7E1C7E47B2F7CDF9CEB5F79BDD61A7E981D';
wwv_flow_imp.g_varchar2_table(81) := '57774FAF689B6B28ED5B4477825EA300474D9BA77C8EA47D37D281025366E46276AEFA4727E3F184C47CEE0CA9CDD69184B59C770274F6FED364D758789E9878D2CE5139EFACFD1A5ED5696D352B1A7BD5022C089440581B430210D69E8B50BBD79380DE';
wwv_flow_imp.g_varchar2_table(82) := '8121F1DA196E1572DE1CC9EB85822F7EFF6579F489A7E4BE071E967BEF7F50EEF9F60372D7BDF7CB5DDFBEBFF2FADEFB1F92FB1F7AC494795A5E302307D3E6E83FEF73639FADB6D7D33750D9F93B8EC904B62A50E73CFD1440B22BEDB9D62B078F782E0F';
wwv_flow_imp.g_varchar2_table(83) := 'E2423D5DE3D52E1DF9D024C0AB8C2ED30706ADE90880BEA9325D788EF7CEB4CA6A1D9DEDD7661DF52815BD3FF26F0C424C0000100049444154D8D100D8782404480022D18DD10842AF07181C191737166B5E406638B51995B9315706477798918ABE6654';
wwv_flow_imp.g_varchar2_table(84) := 'F7461D8EE34857DA3B0178E1A5974587D4DF5829E02F169696E5559FA445EF9B504B1845B3132C79DC7E797CC7889CBA67672D5505AACCC9BB76C8D0E040D536158B45F1BBEEA1EACA2C68B3407837E786B7E9B43C8A02FAC0A0A1D171496732E238CD39';
wwv_flow_imp.g_varchar2_table(85) := 'CADE969369829EEF1F346DAA75A755EFF67404C071CC86AAACB8B2B22A8F3DFDDD2A4B8337FBE9E75E30A75EAA0FFF3B8E23B5DC0C4A23D30BE2F467B569FFA927C9F080397D54AD4040E70FF665E4CC7D277BB6AEB0D6BA4FBC786E9885D608B8D6444A';
wwv_flow_imp.g_varchar2_table(86) := 'A0A111706331E935A703F4883B994A8954DF374ACBBECC36135D5D32303C26BDFD8312ABF182B546DAE3BAAEC49349F1FAD2E723F8DE58C7AB82362D9B5B5C92E75EF8BEE7D6B44FDD58DCB3CCFAC292CF23834F3B6977A0EEFAB7DE6EBF9FA9AEA4EC3F';
wwv_flow_imp.g_varchar2_table(87) := '65AF67B1129F04F0F409CAC230B7830420CCBD17E9B63BA2E7897507ACE7DD63F1DA7618CD2089C563D267129081E15173A4AA0988C9069A51B1471DE98C398AF5D8CCDA5A5E1E7CEC19F17A789047F56D5BF4E0234FFA5E54A9B13A8E47B01B5AEB7721';
wwv_flow_imp.g_varchar2_table(88) := 'DC8E91C10DA5C3F572C7C8906783FD62F75C998508D4204002500312453A2BA0370CD2D180744F8FB8B1D6FDCA6ADDDDBD7D3234B6B3F2543FC769DDB6368BA6D2DD128BC536CF3EEEFD134F3F2B078F4C1E372F486F5E3E78589E7BDEFBE83F6E463A92';
wwv_flow_imp.g_varchar2_table(89) := '5D26A9AAB1E1659FA3E08CCFF513356EA623C57A33DD9EDB2D7B3C29D2734516B65120DC9B6ADF5FB8703BD1FA0E0BB8AE392DD03F24C33B761FBB18AFB7579A312AA047FBDD66A7AF09C6C8F86ED1D18676EEF837B266FACCD1ACC78171B954966FDC7D';
wwv_flow_imp.g_varchar2_table(90) := 'BF4C7B7CBC6E637DED7C3D39332B5FBDF35EEF4D9AD832BDFDDE65362DD59837CD3AEE6D32193FEE7D98DEF4747B2742659FE4274CB1D2D6600A900004B35F68551501C7712491EC323BEA4193088C578ED67B0706A5BBA75752998CA4BABB2B57D5EB79';
wwv_flow_imp.g_varchar2_table(91) := '66BDD0AC32A5529579BA2C9DE9A994D55BF8EA4E7F6874A7A96BA052A788239DFCEA4AA54527AF362C2E2DCBDDDF7E4882748BE0E59555B9E7BE8725E7739B663DF2F78BEFF8D8F5231C3A1D3F77FD9D1B73C575C3FB274CDBEEF8DC09723D567E065320';
wwv_flow_imp.g_varchar2_table(92) := 'ECAD0AEFFF3D6197A7FDDB16D03FA0FAA981B4397FAE37E6E91B1896BEC111E91F1A15BD766060648754A6E1B1CA3C5DD66BCEED6BD98C3912D544423F87BFED8634A902C771443F0AE938DE89883E18E9CE7B1F0AC48D62F28582DCFFC81372E8C884A7';
wwv_flow_imp.g_varchar2_table(93) := '82EEE8F4548E67A11316AA834E272C787D86490ECCF7EB6F42F9C3BBABBD620F65B8343A6002240001EB109A63B740D28C02A4BA33BE08CF7FFF65F9EA5DF74927AF14D79DFF5DF73D24CF3CF7BC6F7BF5C85F47007C0B6E2EE0B1872C15CB12F48B2237';
wwv_flow_imp.g_varchar2_table(94) := '87B3F17DA96CDA6F62D838EFB8D7ECFF8FE308DE9BF0B7880420FC7D48041113D0D3136E2CE61BD5F75E78493EFDC5AFC9E2721DB732F6ADB5B6027AB39F4F7DEE2BF2EC775FF45D41476974D4C5B7E016055C9F21F27CA1B6A7366E5175C76765B339CF';
wwv_flow_imp.g_varchar2_table(95) := '36380E7F9E3D8158B86D017EC3B64D4805083457C07563E694C588383E3B3FDDEAC4E4B47CF6F63BE4FBAF1ED2B76D995E7AF5B07CC6241E73730BBEDBD318F4A1491A936FE12D0AF8ED041797DA9FFC6CD1CC8666E93D13BC56F44B7EBCD66559EB05A2';
wwv_flow_imp.g_varchar2_table(96) := 'B005128028F42231444E40AF4FD04F24480DC3C00B0B4B72C75DF7CAFD8F3E29F38BCB5236FF351B44EB5C303BDB6F3FF4B839F5F02D59AE65D4C1B4BDB77F48F47E0E8DB6C7EF1A8D89103E2869DDE2C8D4CCFACB2D7F3A2611DC720133116892000940';
wwv_flow_imp.g_varchar2_table(97) := '9320A90681660BE8C58DE91AAE07D0EDE6727979F0E127E41FBF7C87DCF7D01332393327C5267C8C4CEB985B5894FB1F7E523EF7956FC8C38F3D256B665BBA4DBF492F68ACE57A06AF7A623EA74274E4431FEDEC55471097ADAEE5E5C5970F7A36CD2F76';
wwv_flow_imp.g_varchar2_table(98) := 'CF9559D8628168544F02108D7E248A880AF49823E864CAFBF3E21B435F342300BA93FED4676F97AF7CF35E79F2B917CCA8C092D473B1A01EEDCFCE2FCA13CF3E2FB7DF718FFCED3F7C491ED2D18579FF21FFF5B66CE7BCFF7A1DFAD36FF4E0B9E75F92E9';
wwv_flow_imp.g_varchar2_table(99) := '1A4E45685D419AE6CCA8CD33DFAB7ED3243D75128B2782D464DA124101128008766A68422A9B5D4DC8A7565B3B8E230343A3A2F738A8775BDF7FE955B9F35BDF91BFFEBBCFCB5F99E9F6AFDF23F73FF2A43CF3FCF7E5B5C313B2B0B42C4B2BD9CA6B9DA7';
wwv_flow_imp.g_varchar2_table(100) := 'C3FB5FFCDADDF23F4CD94F7EFA0B72D7BD0FC8CBAF1E9492C7D3F8B66A533AD32383233BC471CC3980AD0AD4312F168B4BCCE336D04727A7E5E0D1A93A6A0C46D1A353B332333B57B53171B3F3F78ABBEA8A2C688B405436420210959E0C701CC5424156';
wwv_flow_imp.g_varchar2_table(101) := '9616647E664A66278FC8CCC421993A7250268FBC667E9AE97078A7C9C3AF9A780ECBFCF4A42CCDCF4A767949F2B9D5BA8EB87DBBCEEC48F51E077AB323C7696CA7AAE7EC5F3409C1838F3C51D9B1FFD337EE31A70BBE2E9FBDFDEBA2AFEFBAF7C1CAF0FE';
wwv_flow_imp.g_varchar2_table(102) := '4BAFBC263A8AE0DBA62D0AE8516BEFC0A0F4F40F8AE336E74F8B1B8BF9DE1CE9D1A7BF2761FB7AFCD9173C9BACD78068F2E3598885086C53A039FF976EB311AC1E3D8162B120AB2B4B959DFEDCF451595A98935C7645F26B6B52C817CC516551CAA5F2B1';
wwv_flow_imp.g_varchar2_table(103) := '29CCA3002686423E2FB9D5AC4972162B49C0FCEC94CC4D1D91D9A9A395F965135F337A5877ACBD83439E47C4B56CA750284A7635277AF1E0BC19D6D7D70593A4D5B26EB53231B3A3EE1B1C9174A6B72947FE1BB7934CA537BE3DE1F553E654C58C396571';
wwv_flow_imp.g_varchar2_table(104) := 'C28280CE989C9997C77D1EEF9CACE3B44F40C38C70B3A2131A094074FA321091E8CE4E8F82E7CCCE6F6176A6B2D32F9A1D4E0B2E4C0F44BC9B1BA1F1EB90B92639F95CAE3232B060128235332AB0B96C23EF53E94CE5238289AEAE46566FC93AFA809F3E';
wwv_flow_imp.g_varchar2_table(105) := '739A426FF6D38A0D54AE03F018F8989C9E953BEF7FAC159B6E499D773DF0B81C3E3A59B56EC7C41A4F04A77FAB369405A1172001087D17062780AC39E29F397A4816E766A4B2D30F4ED33ADA925C366B46042664C69CFE58332305DB6D4C3C91AC9C63EF';
wwv_flow_imp.g_varchar2_table(106) := '1B1A964E9E27D60BFDB40D43A3E3924826B71B56D5F55D733A2191F4DE21DE6E4E69AC98518DAA950464817E94F28B5FBDCBB33589AE54D347513C37C8C2BA04A2549804204ABDD9A158F40A733DFF5DD9F117C37B67B656F315CCE98FCAE981E9092936';
wwv_flow_imp.g_varchar2_table(107) := 'C14947038677EC9281E15149E8888039726C750C5ABFDED2B77F68A4F220266D83CE6BF5D46D4E2D786D636565553E7F87CFD308BD2A68D3B2CF7EF51E5933A78CBC36D78AD3285EDB6399BD022400F6F67D53222F14F266987BA272FEDB9661FEEDC0E9';
wwv_flow_imp.g_varchar2_table(108) := '750F6BABAB323F33296AB79DBAD6D74D9A73E4FA49017D0052AABBBBE9A3023A241D4BC445EBD664A37F7844BAD2DDD2CE2FDD9E8E38786DF30B5FBB4B5E7CF5B057918E2E7BF5C8A47CEDEEFB3CDBA031B6EA548AE7865958A340B48A910044AB3FDB1A';
wwv_flow_imp.g_varchar2_table(109) := 'CDEACA72E5AA7EBDB0AFAD1B8EC0C67434403F11512C169A128D5E75AF47E67A219EEEA4F5F6BBA9EE8CB8B19838AE638694EBD88C239575F4F482EE787B0786646068ACF2A4454D361CA7337F36F469828E699B54F9D2E4EABF7FEA0B3235BB50A544E7';
wwv_flow_imp.g_varchar2_table(110) := '664FCF2DCA9FFDD56744AF0FA9DA0A139B3EA5B2EA721620D06481CEFC9FDCE420A8AEFD027AA1DFE2FC4CE52AFE46B6EE388E388E23AED939E939DEB04E8E732C0E69E04B77583313872B9F8C6860F5AAABC4E20973B49E313BEC61D15304FD43A392E9';
wwv_flow_imp.g_varchar2_table(111) := '1B9074A64792A994E8457BB1B82606AE38C63F168F4B2299143DF24C6732A23BA1FEC16343FCFD66A83FD5DDD3F45185AA8DF758A0C9885EFFE051445E7AE5A0FCD567BE2441BA1E60259B93FFFEA9CFCB2B07BD4727F4B3FFDA075EF1B1ACB30251DBBA';
wwv_flow_imp.g_varchar2_table(112) := '1BB58088A7F5027AC4AF1FEBD31D58AD5B8BC55D191B1D9273CFDA27575F7EB1DC70CD1572EB0DD7C8AD375E77ECA7BE0ED974CB0D57CBCDD75F25D75FF5163970C905729E89EDA4DDE392EA4AD6CA5249A016F47480CF79E19A2BDC54D0711CD191013D';
wwv_flow_imp.g_varchar2_table(113) := '7AAE1CC90F8F895EB4A789C1C8F86E1919DF6392849D32383A2EFDC3A3D23B305C490092E6B482E3389B6AEBEC5BC7712A898CE378B7EBE1C79F954F7EEE6BCDBD174383A1EBAD94FFE2335F96C79EFAAE670D1AD2B1673F78C7E659090B11A853C0ADB3';
wwv_flow_imp.g_varchar2_table(114) := '3CC52D1728160A95F3D7E51AEF33DFD7DB23E79E7D96DC74DDD572E0D24B64DF69A7CAC8C888F49AF95DE66834698E3C935D5D662715BEA9AB2B256973CEBDBFBF5FC6C777C8E926B68B2E385F6EB8F64AB9E8BCB365A0AFA7A6DF9662B15831ADA970D3';
wwv_flow_imp.g_varchar2_table(115) := '0A39951118C7714C8D3A991F21F8D664464732FC9A7AE7B71F908FFDEDE72B773AF42BDBAAE53A0AF1D1BFF947B9F73B8FF86E229DE935A33369DF7214E8A440F4B64D0210BD3E6D5944FA19F7E5C539731ED3FF4AFF645742CE396BBF5C79F9A5B2EFD4';
wwv_flow_imp.g_varchar2_table(116) := 'BD92363B7B1DEE6F59E30252B1EE4F35A939F9A43D26F6CBE4920BCE95542A297E5FC5624156B3CB7EC5586E04BA7BFA2AA72CCCCBAADFE592C8B7CC8EF74FFEE2EFE5C8D46CD572AD5A30313D277FF4F1BF956F3FF898EF2612C9A4684CBE0529804093';
wwv_flow_imp.g_varchar2_table(117) := '0548009A0C1AE5EAB2CB8BB2BAB2E21B622AD525975F7C91EC3FED14A96738DCB7E29015482613B277CF2E73CAE332C9647C8EEECA22CB0BF3A24956C8C26C7B73DD584C7A07872B23187E1B7FE6B917E4239FF85BF9EE4BDE4FDEF3ABA79EE52FBC7258';
wwv_flow_imp.g_varchar2_table(118) := 'FEE0E37F2DCFBDF092EF6A8EE348CFC090B8B1986F590A7456208A5B27018862AFB620261DF25F5E9CF7ADB9A72723D75CF116191E1AF02D6B4B818AC981B748AFB1F18A594FAFE8C5955E6558764C402F98EB353B4EA9E1ECC5C1C313F25B1FF973734A';
wwv_flow_imp.g_varchar2_table(119) := 'E073A257E31FABA1F9FF4ECF2FCA9FFFCFCFCB873FF271397CA4B60714690C8984FF0851F35B4B8D08889000F05B509380EEFCCB257398EA51BACB1CF95F76F18592E9F639DAF5A823AA8B2AA322975E243D996ECF107594454F077816626145403FE698';
wwv_flow_imp.g_varchar2_table(120) := '31A7032A6F6AF8E7EEFB1E965FF8CD3F96FFFFD3B7CBAB87ABDF8AB786AA8E2BF2F2A109F9C4A7BE28BFF8E13F963BBFFD90947DFE3F595FB9BBA7B7F2698DF5F7FC0CB24034DB460210CD7E6D6A54A562B1F2943BAF4AE3F1B85C78DE39D2DF9BF12A66';
wwv_flow_imp.g_varchar2_table(121) := 'F532DDF95F74FE399E068C0278F29CB050CF9DA7BABD93AA8D2BE9CEF98EBBEE97DFFDB3BF94FFEF2F3E2DDFBCFF3179E1D5C3B2B89CDD58CCF3F5D2CAAA3CFFCA21F9C67D8FCA7FFECB4FCBEF7FF4AFE49BDF7A404A35EEF8B5726D73A6B75F5F3221D0';
wwv_flow_imp.g_varchar2_table(122) := '310112808ED18767C3ABD915F13B37BD7FDF69B2736C243C4175A8A5C34383B26BE7B8E7D6B34B8BB296CB8A8E04944A25B36309E754366DF7FBBDF184A861A1E3BAD2D33F24DDBDBD35947EB3C8FCFC927CE79127E4139FFC07F9FD3FFB1FF2D1BFF9AC';
wwv_flow_imp.g_varchar2_table(123) := '7CEA4BDF947B1E7AB29210BC6246080E1E9D169DF408FFF1E7BE2F773DF084FCFDED77CAC73EF959F9E38FFD8DFCB7BFFDACDCFFF013A275BD59B3FFAB74A6A7D2666DBB7F694A044120AA6D2001886ACF3631AEFC5ACEB3B6DEBE5E3975EF6ECF322C7C';
wwv_flow_imp.g_varchar2_table(124) := '53E0BCB3CE9058BCFA455FBAD39C9B9EACDC6551EF1618D6491F7EA4373AD29F73D313958744AD2C2E887EDA417FA734CE37551A7FFE8ABF7D0000100049444154A53791EAE91B944C5F6347D4CBCB2BF2D853CFC9E7BEF24DF9E85FFDBDFCC61F7E4C7E';
wwv_flow_imp.g_varchar2_table(125) := 'F577FFABFCDFBFF75FCCF45FE5D77EEF4FE5F7FFF42FE5E37FFD69F9EC97BF218F3CF1AC2C2C2D37D4606D63EFC090689B1BAA80951068A20009401331A3585521BF263A79C5A657FB271271AF222CDB20A0D703EC1C1BDD30678B976511BD6DAC9E1208';
wwv_flow_imp.g_varchar2_table(126) := 'FBA4B73DD6E71FE8058E7A03A98599E9CA7D0FF431C99A0C6C117D43B33266485D6F66D4AC9D6BA958AEF441438DD9B4921B73A57F78A47293A54D8B781B7881E836900420BA7DDB94C8F4AE7F3A145DAD32FDA89BEFCEACDACA16CECFADE52BB7849D98';
wwv_flow_imp.g_varchar2_table(127) := '99B330FA37432E154B92CB66459381E98943925BCDBEB9701BAFBA5269191819133DC75ECB2704B6B1A9DA5675C4B42523FAA0A6AE54776DEB500A8136099000B4093AAC9BA91CFD9BA3D16AED1F191996B8C77076B5F56C9B5F2A95CDF9E449B9FFA1C7';
wwv_flow_imp.g_varchar2_table(128) := 'E4D1279E143D22B6CDA05ABCC57CA13222A0A70B72355C6F52AD9EF5F9F144527A07862B3BDD4432298ED9094B9BBF1CC711BD6BA1EEF87BCD90BFB6A9CD4D60734D128872356E948323B6ED0B781DFD3BAE23A34343DBDF48C46BD05BC23EFAD4B3F2C8';
wwv_flow_imp.g_varchar2_table(129) := '634FC8ECECAC88474215718AEAE11993423E2FF3B353956B058A857CF5B2352C711CA7B203D6671CE84D83E2C9440D6B35A7483C99AC3C88499FCAA84980E338CDA9985A1068B280DBE4FAA82E62027A2577B59062B198F4F5D577F575B5BAA23A7F6E61';
wwv_flow_imp.g_varchar2_table(130) := '59BEF59D87E5D5575F9362C1FF16CA5175A8392E9308E863A6E7A627C52BF9ACB93E533095CEC8D0E84ED1271B26BABA445AB03FD67D7C3295123DFD30343A2EFAE442D199C257B805A2DD7A37DAE111DD7605BCAED48EB931B1F956BF7EB69333F366C8';
wwv_flow_imp.g_varchar2_table(131) := 'FF1159595AF22BCAF24D02C54241E6A68E8A7E5A60D3A286DFEA4E797064878CECD85D490652DD197163B186EB7363E6F7DFD4A189C5F0F8EECA29073DE26FB8425644A0CD0224006D060FD7E6CCE1984783DD982BC978DCA384BD8BF422BF471F7F5256';
wwv_flow_imp.g_varchar2_table(132) := 'B3F55FDCA6078E8E39BDD2D3D32DA3238332363A1CCA69746448FAFB7A44631147EAFE2A9A1193C5B999A62601DA083716AB1CA1F79A73F39A10E8507D4FFFA074F7F6897E463FD5DD2D7A34AFA3053AE94E5D93075DA665B4ACAEA3EB6A1DBACC35C9B0';
wwv_flow_imp.g_varchar2_table(133) := 'F0153981A807440210F51EDE467C65EFFDBFB88E6BFEB8BBDBD84234579D5B5C96279E7C5A566A7870D2BA40D29CA3DEB37B5C2EBBF87CB9E9BAABE4B6B75D2FB7BCF51AB9FEAA0372F35BAF96F7BEFD86504DB7DD74AD5C7FF5E572E3B557C9AD375E27';
wwv_flow_imp.g_varchar2_table(134) := 'D75E71995C72E1B972C6E9274B77774A1CA7B68CA0725DC0CC946CF79A8075E78D3F1DC79198496093A9B4E86D797BFA064477E87D8323A217EFBD318D8C55460C749996D1B2BA8EAEEB38B5C5217C2110400137806DA2492111E06FDF891D553047AD7A';
wwv_flow_imp.g_varchar2_table(135) := 'B1DF528D378A4967BAE5CACB2F95F7BFFB5679EFAD6F9503179F27679E7EB29CBA67A7EC1C1B961D660460A03723C9442254534F775A760C0FCAAE1DC372FA49BBE482B3F7CB95975E20375F7FA5FCC80FBC43AE3E7049CDD78FE8ADA8E7A6272A77443C';
wwv_flow_imp.g_varchar2_table(136) := '51BC75731CC7A93951695D2BA8B97302D1DFB21BFD1089B071011D02D0A9F11AAC5AD3503D6C86FD1716167DC3D607275D73C5A5F2CF7FF01D72C97967C8507FAF59C73153D4BF1D49A7BAE4C273CE901F7DDFDBE5C6EBAE904C26ED1BB49E0E585DE15A';
wwv_flow_imp.g_varchar2_table(137) := '0A5F280A2050870009401D581445C04B60627A460E1F99F02A5259B6636C44FED9BB6EAEEC04F5C8BE32D3C27FE2B1B89CBDEF54F981DB6E92B151FF8F93669717454F09584845C81D10B06193240036F43231B65C606D2D2FDF7DFE45DFEDECD9B34BDE';
wwv_flow_imp.g_varchar2_table(138) := '73EB0D32C0C727DFB0528B5B6FB8464EDEBBEB8D795BBDD051004D02B65AC63C0410A85F8004A07E33D640E0048143E6C87F7A66F684F91B67EC181B95DB6EB8CA9CCB8F6F9CCD6B23D0D793911BAF39207B778F9B77D5BF73AB2BD2ACFB0354DF0A4B10';
wwv_flow_imp.g_varchar2_table(139) := 'B0438004C08E7E26CA160AE4727979E995573DB7A057BEDF74ED01B3F34F7896B37961773A25375D7785E82722AA39E833049617E6AB2D663E0208D42140025007164511D84A60D29CFB5FF0B9D9CFD5975F2283950BFDB6AA8179EB0299745A2E38F7AC';
wwv_flow_imp.g_varchar2_table(140) := 'F5B75BFE5C5D5996A5F959D10755ADAD662B0F12CA85F0A7B65DAF69F0BADBE69600CC6CB9802D1B2001B0A5A789B36502AFBE7650CAA572D5FA77EE1895534FDA5D75390B8E17B8E0EC7D92EE4E1F3F73D3BB95E54559989D94459308CCCF4CCAFC7478';
wwv_flow_imp.g_varchar2_table(141) := 'A6859929595A98ADB45D63989D3E2AB35347453FEA386F62595A9893B5DCAAF99D2A6D8A9AB70834578004A0B99ED46699403E5F90D9798F216947E4CACB2E94449CF3FEB5FE6A742593B2636CCCBBB8C9B7F4A2C062A110BA872BE9EDB5F50988DAF682';
wwv_flow_imp.g_varchar2_table(142) := 'F9FD29ACE5259FCB893E213297CDCACAE282CC4D4D5492027D5D2E910878FF32347BA93DF59100D8D3D744DA0281A9D905D19BFF54ABBAAFB757C6C786AB2D66FE2601DD39BE76F8A82C2D7A24559BD689EA5B3D3DA0A30153470FC9E2DC8CF93DDBDE13';
wwv_flow_imp.g_varchar2_table(143) := '12A3EA445C8D0B9000346EC79A08889EFBD79D56358A5D3BC7C471F8DFAC9ACFC6F953B373F2C5AFDD255FF8A73B656A7A6EE322AB5FEB08407679A9322AB0B2B4285EBF6F56433529789BAAE12F934DBD4DACCD1530C3D04B1EF7FB775D57C64638FAF7';
wwv_flow_imp.g_varchar2_table(144) := '435F5CCECA5DF73D2CFFF0C5AFC9CBAF1E620757054C6F89AC173FEAB5027AFAA04A31662350B3000940CD541444E07801B3FF97D5D5D5E3676E78178FB9323CD0BF610E2F370BBC74F088FCE3ED5F93279E7E4EF4664A9B97F3FE4401BD5E6076F288E8';
wwv_flow_imp.g_varchar2_table(145) := 'A7214E5CCA9CED09D8B53609805DFD4DB44D1428974BB2965BAB5A632C16939E1AEE735FB582882F78D9ECFCBFFACD7B657E817BFCD7DBD5A5524916E6A62BD706D4BB2EE511581720015897E02702750AE8B9D9B5B5EA09403C11936482ABFF658BAFA3';
wwv_flow_imp.g_varchar2_table(146) := 'D3B372C7DDF799042AB7C5D21A6639A68C991CC711D79C6A09E564DA2FEB9334F06586A0F4DA00FDA440036BB3CA1602B6CD2201B0ADC789B76902E572D9F3E134093302A0A3004DDB60442A9A9A9D972FDD71B76457B23547143389D4D9679C2E3FF203';
wwv_flow_imp.g_varchar2_table(147) := '6F970FFDECFF2EFFEFBFFF37F267BFF321F9D3DFF915F92FBFFD7F8572FACFBFFD2BF2271FFE77F2BB26967FFF6F7E527EF47DEF90B3F69F2EB13A3F32BAB438C7E9809A7F9328B851800460A306AF11A8434013009DAAADE238AEE8015EB5E536CE5F5C';
wwv_flow_imp.g_varchar2_table(148) := '5E91DBBFFE2D59595AAE29FC5DBB76C87BDF7EA3FCEE877E567EF1A77E48DE71FD0139FF8C5364EFF888F49AD32B3AF5999F619CFA7BBA6578A057F69858CEDB7FB2DC76FD5B2A31FE3F1FFA57952724EE1A1F939A7E81CC48C0B24902F4E641C2D73604';
wwv_flow_imp.g_varchar2_table(149) := 'EC5BD5B52F64224600814E08AC150AF28D7B1F9405AF1B27BDDEB044322EEFBDED46F9E59FFE31F9C06DD7C9CED141E94E7589EB4637A572CDE98C4CBA4B768F0DCB3F7BFBB5F2CB3FF3BFC9FBDFF936731A29F1BA4AF51FC54251F49E01E532370DAAAE';
wwv_flow_imp.g_varchar2_table(150) := 'C492CD0224009B45788F00022D1178FEFBAFC96B070FF9D63D3A3224FFE1E77F4A3EF0F6EB646CA8DFB77C540B68ECEFBBF91AF9D59FFF49191AF47728ACADC9D23CF74F68F4F7C1C6F548006CEC756246A0CD024B2BABF2C893CF48D9E39909DAA4B3F7';
wwv_flow_imp.g_varchar2_table(151) := '9F2ABFF54B3F2DA7EFDDA96F998CC0BE9376C96FFDBBFF43CEDC778A79E7FDAD1705E6D71ABCB0D2BB6A964650800420829D4A4808044DE0E9E75F92B9B939CF669DBC675CFEE58FBEB7726EDFB3A0850B077A33F2D3C6E6E43DFE8991260116126D3364';
wwv_flow_imp.g_varchar2_table(152) := '3B572701B0B3DF891A81B609E8857F2F7CFF65CF87F6643269F9B1F7DD263B8607DAD6AEB06D687C6450FEF90FDE26E9749767D3F36BAB9E9F4EF15C99855609900058D5DD048B40FB055E7AEDB0CC4CCF786EF887DF7DB39CBBEF64CF322C1439FBF493';
wwv_flow_imp.g_varchar2_table(153) := 'E487DF738B27855E10C827023C894E5868EB0C12005B7B9EB8116893C0775F3047FF1EDBDAB963446EB8E2628F122CDA2870C3818B656C6468E3AC135EAFE56ABFC7C2092B33C31A0112006BBA9A401168BFC0C2F28ACCCF2F786EF883EF7FA7388EE359';
wwv_flow_imp.g_varchar2_table(154) := '86856F0AC462AE7CF0FDB7799AE5D772522EF191C037D5BC5ED9BB8C04C0DEBE2772045A2E3031352BF97CF5DB258F8F0DCB79FBFDAF6E6F794343B6818BCED92FBBC747ABB7DAE72E95D55764894D02240036F536B122D04681B29465626A468A1E47A2';
wwv_flow_imp.g_varchar2_table(155) := 'E79FBD3FD237F76915B78E97787D2CB06C36EC957899C57CBF2E60F30F12009B7B9FD81168A140D91C85CE99E17FFDB9D56692C9849CBA77D7568B985783C0DE9DE39EA58AC5BC54B3F75C9185D608900058D3D5048A407B05F4AEB4ABABB9AA1FFFEB4E';
wwv_flow_imp.g_varchar2_table(156) := 'A76464908FFD35DA2B2343FDD2D793D97A753304502A14B75EC6DC0D0276BF74ED0E9FE81140A055027A0A60255BFD6AF4B44900768C900034EADF954C7ADE13A0582C3002D028AE25EBB996C449980820D06681923905B09A33230055B69B4C24444701';
wwv_flow_imp.g_varchar2_table(157) := '84AF86044606FB249988575DB7542A9A04804F0254051211DB979100D8FE1B40FC08B448A05C2A4BA9587D183A1E8B49CC755BB4F5E857DBD7D32D8978A26AA095F3FF2609AB5A8005D60BF07F9FF5BF020020D01A81B298FF4C1250AD763716ABB688F9';
wwv_flow_imp.g_varchar2_table(158) := '3508B826794AC43D0CCDCEDF7CD75093AD45889B0480DF010410400001042C142001B0B0D30919010410B05D80F8454800F82D400001041040C0420112000B3B9D9011400001BB05885E054800548109010410400001CB0448002CEB70C2450001046C17';
wwv_flow_imp.g_varchar2_table(159) := '20FE63022400C71CF817010410400001AB044800ACEA6E82450001046C1720FE7501128075097E2280000208206091000980459D4DA808208080ED02C4FFA60009C09B16BC420001041040C01A0112006BBABAF981561E36D2FC6AA911010410689100D5';
wwv_flow_imp.g_varchar2_table(160) := '6E142001D8A8C1EBBA040AC582143D9EF656576514460001041068AB0009405BB9C3B63147BC9E26B6965B93A9E919595C5A929595AC2C2FAFD43C69F9B5B57CD840682F0208845880A61F2F400270BC07EF3608388E238EE36C9873FC4B4D0E1E7CE471';
wwv_flow_imp.g_varchar2_table(161) := 'B9EBDEEFC89DF7DE2F777FFB3B354D5AFE8EBBBE254F3CF39CE40BC5E32BE51D02082080405B044800DAC21CDE8DB8B19867E3CB6669C1ECC4F5683E678EE86B99D6F2792995CA32313129BA9EA9826F041040A0C50254BF59800460B308EF8F13482492';
wwv_flow_imp.g_varchar2_table(162) := 'C7BD6FE69B42A924453335B34EEA4200010410A84D8004A036276B4B25536971DDD6FC9A38E258EB4AE00820D05E01B676A2406BFEB29FB81DE684542091EC92AEEEEE90B69E66238000020854132001A826C3FC37047AFB0725D9957AE33D2F10400081';
wwv_flow_imp.g_varchar2_table(163) := '7009D0DAAD044800B65261DE260147FA8747259DE911C761D87E130E6F11400081500A900084B2DBDADF68C771A4776048FA874624994A492C113F766D80C9071CC7A924068EB3FED3B4CF3113DF08208040000468C2D60224005BBB30B78A4032959681';
wwv_flow_imp.g_varchar2_table(164) := 'E131191EDB2523E3BB6574E75E19D9B9E7B86974D7493266264D181CD7A95213B311400001043A294002D049FDB06FFB8D237EE7B81180F5B0BA4CB2108BC5D7DFF213010410E880009BAC264002504D86F9DB16705C5774DA7645548000020820D07401';
wwv_flow_imp.g_varchar2_table(165) := 'B7E93552210208208000020111A019D5054800AADBB004010410400081C80A900044B66B090C010410B05D80F8BD044800BC745886C0360472F9BC144BAC8999680000100049444154FAB8A46D54C2AA082080408B0448005A044BB508AC6457E585575E';
wwv_flow_imp.g_varchar2_table(166) := '9399F945999A9D9789E9D99AA6C99939999E5B107D6A228A0820D0B8006B7A0B900078FBB0148186054AC5927CE3EEFBE4EF3EF715F9F417BE2AFFF0A53B6A9E3EFBE5AFCBB71E7CC224018586B7CF8A0820808097000980970ECB10D8AE8039035030A7';
wwv_flow_imp.g_varchar2_table(167) := '02EA99F26B6BB2BA9295175F7A5996B3D9EDB680F511B05480B0FD044800FC84588E4087044AC5A2E828428736CF66114020E202240011EF60C20BAF40B95C16FD2FBC11D072043A27C096FD054800FC8D2881000208208040E404480022D7A504840002';
wwv_flow_imp.g_varchar2_table(168) := '08D82E40FCB5089000D4A244190410400001042226400210B10E259C6009388E881B8B89EBBAC74F669E2E0B566B690D02D110208ADA04DCDA8A510A0104EA167044FA86466478C72E191C1D3F6ED279BA4C4C99BAEB6505041040A0090224004D40A40A';
wwv_flow_imp.g_varchar2_table(169) := '04B612701C4792C994388E23B178FCB8C971DE5C267C2180401305A8AA5601B7D682944300813A05CA22C562B1EA4A95656553A86A091620800002AD132001689D2D352380000208B45980CDD52E400250BB1525114000010410888C00094064BA924010';
wwv_flow_imp.g_varchar2_table(170) := '0897409947256FABC3F4141267903613F2BE1E0112807AB4288B00024D1358CBAF49B1586A5A7DB655B4B0B422F9024F8BB4ADDF9B192F09403335A90B01046A16989A9995C79E7D41B2B935C9ADE5EB9EF285EA1758D6DC880E176C24EE55E3356F76FE';
wwv_flow_imp.g_varchar2_table(171) := 'DF7BE9A04CCDCE558FC0712A9F40A95E207A4B88A83E011280FABC288D00024D12585959958FFFF567E4D7FFF063F21B1FF973F9F0473E51D3F46B7FF051F9D0EFFEA9FCCD3F7E4D0A1E9FB26852335B564DC98CDFFFB7BFBB5DFEE31F7F427EFD8F3E5E';
wwv_flow_imp.g_varchar2_table(172) := '53ECEB46BF69ACFEFC939F91459308546BA0E3900054B361FE31011280630EFC8B00021D1058CBE7E5C8C4B4BC7668425E3D74B4A649CB4F4DCFCA234F3E2B4B2689E840B39BB2C9EC6A4E9E7AEE793978F8A81C3A325953EC6AF4DAE10999989A9182CF';
wwv_flow_imp.g_varchar2_table(173) := '08483C9E14C7B5E94F7C53BAC5AA4AF8EDB0AABB091681E808ACE672B29ACB8736206D7B3EDFA273F88E4857BA9B5300A1FDED684FC34900DAE3CC561040A0C9028E63F6724DAEB3DDD5B5EA085D9F3D91320940BBE3E9E4F6D876FD022400F59BB10602';
wwv_flow_imp.g_varchar2_table(174) := '08201068814CDF80B42AB90874E034AE2E011280BAB8288C000208045BA0BBB74FD2DD3DC16E64D35B47858D08900034A2C63A08208040C0041CC7919EFE01E93147FF016B1ACD09A8000940403B866621608380D967492C1E33D3F14F4B74633171DCF0';
wwv_flow_imp.g_varchar2_table(175) := '9FE3DF6E1F3A8E73824D3C9190642A255DE9B4A4BABB25DDD32BBD03833238362EDD3D7D62E317313726E036B61A6B21800002DB13D073D4993EB3E31A199781913119181EAD4C83233B64D0BCEFED1F12B13C07E8571363B16EA33FFB8746A4B77FD01C';
wwv_flow_imp.g_varchar2_table(176) := 'E90F9A1DFF70E5753AD32BF17842F842A01E0112807AB4288B00024D1388C5E395A358371693582C6E8E741395C98D99F76667964CA525665E376D8321ABC81CFC4BB22B650CDEB489199737A7B8388EE51952A54FF9A75101B7D115590F010410D88E80';
wwv_flow_imp.g_varchar2_table(177) := 'EEBA5CA7FA9F205D2E72EC5FB1F2CBC45E2E5B193941B747A0FAFF7DEDD93E5B4100015B05F4E855A76AF19BFD9FD7E26AAB45693EBB7FFFDEA444E30224008DDBB126020820800002A1152001086DD7D170041040C07601E2DF8E0009C076F458170104';
wwv_flow_imp.g_varchar2_table(178) := '10400081900A900084B4E3683602082060BB00F16F4F8004607B7EAC8D0002082080402805480042D96D341A010410B05D80F8B72B4002B05D41D6470001041040208402240021EC349A8C000208D82E40FCDB172001D8BE2135208000020820103A0112';
wwv_flow_imp.g_varchar2_table(179) := '80D075190D460001046C1720FE660890003443913A1040000104100899000940C83A8CE622800002B60B107F730448009AE3482D082080000208844A80042054DD456311400001DB0588BF59022400CD92A41E0410400001044224400210A2CEA2A90820';
wwv_flow_imp.g_varchar2_table(180) := '8080ED02C4DF3C011280E6595213020820800002A1112001084D57D150041040C07601E26FA60009403335A90B0104104000819008900084A4A3682602082060BB00F137578004A0B99ED4860002082080402804480042D14D3412010410B05D80F89B2D';
wwv_flow_imp.g_varchar2_table(181) := '4002D06C51EA430001041040200402240021E8249A88000208D82E40FCCD17200168BE29352280000208201078011280C077110D440001046C1720FE56089000B442953A6B12284B5962B1F0FE0ABAB19894CBE59A62A510020820103481F0FEF50D9A24';
wwv_flow_imp.g_varchar2_table(182) := 'EDA95BC0D17DA7D981EA4EB4542C4968A652C9ECF8458A85BC94CCEBAA813B228E63FE11BE1040603B02ACDB1A011280D6B852AB11701CEF9D5FD1EC3CEFB8EB5BF295AFDF2D5FBDF39EF04CDFBCC7B4F94EF9F237EE315156FF761C8704A03A0F4B1040';
wwv_flow_imp.g_varchar2_table(183) := 'A0C30224001DEE80A86FDE75BD7FC5CAA5B2E47239595D0DD794CBAD89B6DDABFFE289A4383EF17BADCF3204105001A6560978FF756ED556A9D71A816457CA9A588F0BD411E94A753302701C0A6F1040204802240041EA8D08B6A52BDD2D6E2C16C1C8BC';
wwv_flow_imp.g_varchar2_table(184) := '43D2918F9489DDBB144B1140C04F80E5AD132001689D2D351B01D78D494FDF807965D777C6C4CCF0BF5D7D4EB408844D8004206C3D16C2F6A6BA33D2954E87B0E58D35B9BBB74FD2DD3D8DADCC5A0820B0418097AD14200168A52E75BF21D03F342299BE';
wwv_flow_imp.g_varchar2_table(185) := 'FE489F13771C477AFA07C4C6118F373A9A170820101A011280D07455D81BEA48A6B75F0647C7457792E94C8FA4BABBA52B9596783229B1783C34533C9190642A253AAAA131A47B7AA577605006C7C6A5BBA72FEC1D45FB11088C000D69AD0009406B7DA9';
wwv_flow_imp.g_varchar2_table(186) := '7D9380EE3C7527D93B3064128141E9313BCEFEC16119181E0DCDA4A319BDFDA6ED7D8366C73F2CFA3A9DE995783CB1295ADE22800002C1152001086EDF44BE657A81602C163747FE89904EF1489FD288FC2F2001065C80E6B55A8004A0D5C2D48F000208';
wwv_flow_imp.g_varchar2_table(187) := '2080400005480002D8293409010410B05D80F85B2F4002D07A63B680000208208040E004480002D7253408010410B05D80F8DB214002D00E65B681C05602CE563337CC33CB535D5D1B6684EB65329110F1FA0B532E872B205A8B40C404BCFEF78C58A884';
wwv_flow_imp.g_varchar2_table(188) := '8340B0041C714C8374323FB6F82EE48B727472464AA59259AA3BCBF04C65B3739F9E5D905241DB6E9ACF3702750850B43D022400ED71662B089C20E0388E38AE73C2FCF519BA13BDF7FE87E4F35FF9867CE12BDF0CD5F48F5FBE43FEE9EB7749C92402EB';
wwv_flow_imp.g_varchar2_table(189) := 'F16CFEE9388E388EB37936EF1140A04D0224006D826633086C16705CB772FF83CDF337BE5F585A96D70E4FC8CB078F846A3A787852E61696368672C26B37163B611E331010C1A05D022400ED92663B086C12701C47BABAD29BE6DAF3369E48DA132C9122';
wwv_flow_imp.g_varchar2_table(190) := '10400137806DA24908582390EACE881BB3EF7F438D3995CE58D3CF045ABB0025DB2760DF5F9EF6D9B225047C05DC58ECD803846C3A156E62EDED1F32890FA7007C7F412880400B0548005A884BD508D422A00F474A77F7D45234FC65CCCE5F1F9CD495EE';
wwv_flow_imp.g_varchar2_table(191) := '0E7F2C44D00201AA6CA70009403BB5D9160255047A0786A46F70585C37BAFF4B3AAE5389519F9E588581D90820D04681E8FEB56923229B42A019027A3DC0D0D84EE91D1C92642A25FAE8E4583C2EB1B8192A3747CECDD846BBEA701CC7B43B2EF164B212';
wwv_flow_imp.g_varchar2_table(192) := '4BA6B74F3436CEFB0B5F1E022C6AAF0009407BBDD91A029E026E2C267A3A6060784CFA87474547067ACCF9F2FEA1D1CA7B9D1786A96F68A4D2F67E33AAA1B164FA0624168B7BC6CE42041068AF0009407BBDD91A02350BE80E33D99592AE543A9493B63D';
wwv_flow_imp.g_varchar2_table(193) := '164FD41C2F056D1720FE760B9000B45B9CED21800002082010000112800074024D400001046C1720FEF60B9000B4DF9C2D228000020820D0710112808E77010D4000814604F461498944AC915503B14E3C66FEFC7A3C2C29108D6C5B23D8502704CC6F60';
wwv_flow_imp.g_varchar2_table(194) := '2736CB36114000013F0147CA1E454AA5927816F05837088BF44989E5B28921088DA10D560A900058D9ED048D4048043C328042B1204F7DEF25999C9997B985E5104D4B32393B2F4F9BB6E7F3058F8E284BC86EFFE0118BF7229676468004A033EE6C1501';
wwv_flow_imp.g_varchar2_table(195) := '047C041CC711C771AA96CAAF15E4CF3FF919F90F7FF051F9F07FFA44A8A65FFFC38FC947FFFAD392CFE7ABC6E7BAE6F48647FC5557640102350A9000D4084531041068BF801B333B418FCD964B65595EC9CAD4F46C88A639595A5A116DBB476862CF3D14';
wwv_flow_imp.g_varchar2_table(196) := 'BC1458D64A01128056EA523702086C4B209E486E6BFD30AFACB7820E73FB697BF005480082DF47B410016B0552E96E7163DEA30051C489C5E392CED8F18448E1AB630224001DA367C30820E027A0230099BE7EBF62D15AEE88D9F9F7720A205ABD1AC868';
wwv_flow_imp.g_varchar2_table(197) := '480002D92D340A0104D605F4E148DDBD7DEB6F23FFB3BBA74FBA7B7A231FE7B100F9B7930224009DD467DB08205093404FDF80F40F8D4894CF8BC713F1CA131435D69A502884C03605DC6DAECFEA082080405B04BAD2DDD23F3C263DFD03924CA5CC1079';
wwv_flow_imp.g_varchar2_table(198) := 'DC4C3133E9CF304EC7DA9E48262B31696CB69DF717BE3A2AE07674EB6C1C010410A84320168B99E1F13E193089C0F08E5D3238BAD34CE3219D76CAB118C62B31C562F13A24288AC0F6054800B66F480D0820D02101D77525CC5387D802B2599AD1690112';
wwv_flow_imp.g_varchar2_table(199) := '804EF700DB470001041040A0030224001D40679308208080ED02C4DF79011280CEF7012D400001041040A0ED0224006D27678308208080ED02C41F0401128020F4026D400001041040A0CD0224006D06677308208080ED02C41F0C01128060F403AD4000';
wwv_flow_imp.g_varchar2_table(200) := '01041040A0AD0224006DE5666308208080ED02C41F14011280A0F404ED400001041040A08D0224006DC4665308208080ED02C41F1C011280E0F4052D410001041040A06D0224006DA3664308208080ED02C41F2401128020F5066D410001041040A04D02';
wwv_flow_imp.g_varchar2_table(201) := '24006D82663308208080ED02C41F2C01128060F507AD410001041040A02D0224006D61662308208080ED02C41F34011280A0F508ED410001041040A00D0224006D40661308208080ED02C41F3C011280E0F5092D420001041040A0E50224002D27660308';
wwv_flow_imp.g_varchar2_table(202) := '208080ED02C41F4401128020F60A6D420001041040A0C50224002D06A67A041040C07601E20FA600094030FB8556218000020820D05201128096F2523902082060BB00F10755800420A83D43BB10400001041068A10009400B71A91A010410B05D80F883';
wwv_flow_imp.g_varchar2_table(203) := '2B400210DCBEA165082080000208B44C8004A065B4548C000208D82E40FC411620010872EFD0360410400001045A244002D02258AA450001046C1720FE600B900004BB7F681D0208208000022D11200168092B9522800002B60B107FD005480082DE43B4';
wwv_flow_imp.g_varchar2_table(204) := '0F01041040008116089000B400952A11400001DB05883FF8022400C1EF235A88000208208040D30548009A4E4A8508208080ED02C41F0601128030F4126D440001041040A0C90224004D06A53A041040C07601E20F8700094038FA8956228000020820D0';
wwv_flow_imp.g_varchar2_table(205) := '54011280A672521902082060BB00F187458004202C3D453B11400001041068A20009401331A90A010410B05D80F8C3234002109EBEA2A5082080000208344D8004A069945484000208D82E40FC6112200108536FD1560410400001049A244002D02448AA';
wwv_flow_imp.g_varchar2_table(206) := '410001046C1720FE7009900084ABBF682D0208208000024D112001680A239520800002B60B107FD8044800C2D663B417010410400081260890003401912A10400001DB058893E014FC0000047A494441543F7C022400E1EB335A8C0002082080C0B60548';
wwv_flow_imp.g_varchar2_table(207) := '00B64D480508208080ED02C41F4601128030F61A6D460001041040609B022400DB046475041040C07601E20FA700094038FB8D56238000020820B02D0112806DF1B13202082060BB00F18755800420AC3D47BB114000010410D8860009C036F058150104';
wwv_flow_imp.g_varchar2_table(208) := '10B05D80F8C32B400210DEBEA3E5082080000208342C4002D0301D2B22800002B60B107F98054800C2DC7BB41D010410400081060548001A846335041040C07601E20FB7000940B8FB8FD6238000020820D090000940436CAC84000208D82E40FC611720';
wwv_flow_imp.g_varchar2_table(209) := '01087B0FD27E0410400001041A10200168008D5510400001DB05883FFC022400E1EF4322400001041040A06E011280BAC95801010410B05D80F8A320400210855E2406041040000104EA142001A8138CE208208080ED02C41F0D01128068F42351208000';
wwv_flow_imp.g_varchar2_table(210) := '02082050970009405D5C14460001046C1720FEA808900044A52789030104104000813A044800EAC0A22802082060BB00F147478004203A7D4924082080000208D42C40025033150511400001DB05883F4A02240051EA4D62410001041040A0460112801A';
wwv_flow_imp.g_varchar2_table(211) := 'A12886000208D82E40FCD112200188567F120D02082080000235099000D4C44421041040C07601E28F9A000940D47A9478104000010410A8418004A006248A20800002B60B107FF4044800A2D7A74484000208208080AF0009802F110510400001DB0588';
wwv_flow_imp.g_varchar2_table(212) := '3F8A02240051EC5562420001041040C0478004C00788C508208080ED02C41F4D01128068F62B51218000020820E0294002E0C9C342041040C07601E28FAA000940547B96B8104000010410F0102001F0C0611102082060BB00F14757800420BA7D4B6408';
wwv_flow_imp.g_varchar2_table(213) := '208000020854152001A84AC302041040C07601E28FB2000940947B97D8104000010410A8224002500586D908208080ED02C41F6D01128068F72FD1218000020820B0A50009C0962CCC440001046C1720FEA80B900044BD87890F0104104000812D044800';
wwv_flow_imp.g_varchar2_table(214) := 'B640611602082060BB00F1475F800420FA7D4C840820800002089C2040027002093310400001DB0588DF060112001B7A9918114000010410D8244002B00984B708208080ED02C46F870009801DFD4C940820800002081C274002701C076F10400001DB05';
wwv_flow_imp.g_varchar2_table(215) := '88DF160112005B7A9A38114000010410D8204002B001839708208080ED02C46F8F0009803D7D4DA4082080000208BC214002F006052F10400001DB0588DF260112009B7A9B58114000010410785D8004E075087E20800002B60B10BF5D02240076F537D1';
wwv_flow_imp.g_varchar2_table(216) := '22800002082050112001A830F00F02082060BB00F1DB264002605B8F132F020820800002468004C020F08D000208D82E40FCF6099000D8D7E7448C0002082080809000F04B80000208582F00808D02240036F63A312380000208582F400260FDAF000008';
wwv_flow_imp.g_varchar2_table(217) := '2060BB00F1DB2940026067BF13350208208080E502240096FF02103E0208D82E40FCB60A9000D8DAF3C48D0002082060B5000980D5DD4FF0082060BB00F1DB2B4002606FDF13390208208080C502240016773EA1238080ED02C46FB3000980CDBD4FEC08';
wwv_flow_imp.g_varchar2_table(218) := '20800002D60A900058DBF5048E0002B60B10BFDD02FF0B0000FFFF36244FEB00000006494441540300FE9BCFF0D04264760000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6282045896332201)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(6284915668332259)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:3yhrn6vMomFS9lJSiUELavVJBvfPg1Nm_2g2zEGMqLs'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(6285130696332259)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>'SH256:ciFz4rcxddalYIUr3Jinzh7tWbPXCTrEEDvj0GvJb6Y'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(6285024586332259)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>'SH256:rraFlo6EMInHtSUuxfoZXPob0ulO3Y_yKNkQ5x_t8NI'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(6284529690332223)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'SH256:dheqzA6FvJpxO1XvRjEkdmp8Sopp4a5_9FwX9SJ6d2A'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(6284709136332254)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>'SH256:E1I9yvnWl7TTVCZZdLycGZM5J4upKtPrWG-og_uLylc'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(6284848410332257)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>'SH256:vmP-ozbK0YK2PWJBw-FIve6SxhPxsqFi7yI6JPE-efc'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(6286185256332318)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>'SH256:wtFSXAJO6ZfBIDZaLT-NWeHYfr8jXR6d7K_DuhjTxbQ'
,p_created_on=>wwv_flow_imp.dz('20260606101631Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101631Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(6285949566332300)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_version_scn=>'SH256:zBoHxELbCF64JiYwSzQdItfu58AlSVUWmbfwVhVGpyo'
,p_created_on=>wwv_flow_imp.dz('20260606101631Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101631Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6408965914335684)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6294840767332609)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(6294840767332609)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260606101634Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101634Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6295441990332631)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6295015348332625)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6308518516334537)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_static_id=>'desktop-theme-styles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:BV99rFiD2E3hUCMQwqdJUP9mSBtytAbj6XTz8AGFmsA'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6416095958335740)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(6416095958335740)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:og77UyB456nZ1KlCr4DAkFaNaKZm9jBHGC16mBmSJsk'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6416349235335742)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6431856258335820)
,p_lov_name=>'FEEDBACK_RATING'
,p_static_id=>'feedback-rating'
,p_lov_query=>'.'||wwv_flow_imp.id(6431856258335820)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:QHID2_AL91pivdhRvWMf8rTxRdNvsqexHwq5MFyhCN4'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6432995766335826)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_static_id=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6432552743335823)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_static_id=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6432123177335821)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_static_id=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6443651512335860)
,p_lov_name=>'FEEDBACK_STATUS'
,p_static_id=>'feedback-status'
,p_lov_query=>'.'||wwv_flow_imp.id(6443651512335860)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:PpuBEbIoOUhSzFsElNFuOJRnL162R3kqFnYCQDsmzNw'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6443930626335862)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
,p_static_id=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6444363788335864)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
,p_static_id=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6444718609335865)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
,p_static_id=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6445152440335867)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
,p_static_id=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6326250838334770)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_static_id=>'timeframe-4-weeks'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>'SH256:MHjq8a1C6UKgUTdUiXoLyw_rytnwJPhwCeLln9D4WW8'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6309166557334612)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(6309166557334612)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:DLn_dOJ7xpnm9CVvk5HeeBDxUDGi5ktqZfERlWXvyAE'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6309454701334615)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
,p_static_id=>'yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6375645297335256)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(6375645297335256)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:-NiiYPWYjIc3Pc-aCWde6UlxvjCf8ukbfArqZU7onD4'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6376316431335259)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6375933228335257)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_static_id=>'report'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(6286434532332325)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(6487492397336134)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(6278692670331942)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6470967275336037)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6278847455331950)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(6279514261331982)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101629Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6277989623331903)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6282944897332203)
,p_build_option_name=>'Feature: About Page'
,p_static_id=>'feature-about-page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:XJT0LyDPwECBH8IlgFn2KNvjd0rsRDXoOWkE0Llo7dI'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6282219691332203)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:oflPhSoxb6RLGIrI0NPG8HuaDVyLNnJobFXxm8ThcXA'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6282390402332203)
,p_build_option_name=>'Feature: Activity Reporting'
,p_static_id=>'feature-activity-reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:lzgblhVTHdsLZ2SVZQtKCpccbHJ-NIdtYcemlW_ATts'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6282636287332203)
,p_build_option_name=>'Feature: Configuration Options'
,p_static_id=>'feature-configuration-options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:9DZMtxxhBz9UCnZNQtIbo0Dy2HGKowerd3vWs4_gEhU'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6282411958332203)
,p_build_option_name=>'Feature: Feedback'
,p_static_id=>'feature-feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:4w9c61-62VcsI0g96MpTWgQTDraGR_8MLzAozytdVqo'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6487676587336135)
,p_build_option_name=>'Feature: Push Notifications'
,p_static_id=>'feature-push-notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:3WlknQG5FntlPjuOlArqfjFp2TNiokODRfRu8mMBFuw'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6283013965332203)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_static_id=>'feature-theme-style-selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:QRbJopHL0jPGfJBmzVDfxlGvtK3A5q4-lkLWnG9Vv6I'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
,p_created_on=>wwv_flow_imp.dz('20260606101630Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101630Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6487901382336137)
,p_build_option_name=>'Feature: User Settings'
,p_static_id=>'feature-user-settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:JnASmz458-j5t7kNO3o77354WxlsY67o7JM4yPsoWsg'
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(6278204466331926)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260606101627Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101627Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260606101629Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101629Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'HRMS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260606101633Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6294216882332526)
,p_plug_name=>'HRMS'
,p_static_id=>'hrms'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101633Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Employees'
,p_alias=>'EMPLOYEES'
,p_step_title=>'Employees'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this page to search, sort, filter, and manage employee records.</p>',
'<p>Click the edit icon to update or delete an employee. Click <strong>Add Employee</strong> to create a new employee.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9001000000000010)
,p_plug_name=>'Employees'
,p_static_id=>'employees'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee_id,',
'       first_name,',
'       last_name,',
'       email,',
'       created_on',
'  from employees'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9001000000000011)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows. Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No employees found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9001000000000011
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9001000000000012)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9001000000000013)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9001000000000014)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9001000000000015)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9001000000000016)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9001000000000017)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FIRST_NAME:LAST_NAME:EMAIL:CREATED_ON'
,p_sort_column_1=>'LAST_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'FIRST_NAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9001000000000018)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9001000000000010)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9001000000000019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9001000000000010)
,p_button_name=>'ADD_EMPLOYEE'
,p_static_id=>'add-employee'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Employee'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP,11::'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9001000000000020)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9001000000000010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9001000000000021)
,p_event_id=>wwv_flow_imp.id(9001000000000020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9001000000000010)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Employee'
,p_alias=>'EMPLOYEE'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6285130696332259)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'<p>Use this form to create, update, or delete an employee record.</p>'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9001000000000022)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9001000000000023)
,p_plug_name=>'Employee Details'
,p_static_id=>'employee-details'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'EMPLOYEES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9001000000000024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9001000000000022)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(9001000000000025)
,p_button_id=>wwv_flow_imp.id(9001000000000024)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9001000000000026)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9001000000000022)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9001000000000027)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9001000000000022)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9001000000000028)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9001000000000022)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9001000000000029)
,p_name=>'P11_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_item_source_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_source=>'EMPLOYEE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9001000000000030)
,p_name=>'P11_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_item_source_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>2042262243893469891
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9001000000000031)
,p_name=>'P11_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_item_source_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>2042262243893469891
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9001000000000032)
,p_name=>'P11_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_item_source_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>2042262243893469891
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9001000000000033)
,p_name=>'P11_CREATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_item_source_plug_id=>wwv_flow_imp.id(9001000000000023)
,p_prompt=>'Created On'
,p_source=>'CREATED_ON'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2042262243893469891
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9001000000000034)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(9001000000000023)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee'
,p_static_id=>'initialize-form-employee'
,p_internal_uid=>9001000000000034
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9001000000000035)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9001000000000023)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee'
,p_static_id=>'process-form-employee'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9001000000000035
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9001000000000036)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9001000000000036
,p_created_on=>wwv_flow_imp.dz('20260606110000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606110000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
<<<<<<< HEAD
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Lookup Types'
,p_alias=>'LOOKUP-TYPES'
,p_step_title=>'Lookup Types'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this page to maintain reusable application lookup types.</p>',
'<p>Click the edit icon to open the master-detail form for a lookup type and its values.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9002000000000010)
,p_plug_name=>'Lookup Types'
,p_static_id=>'lookup-types'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_type_id,',
'       lookup_type_code,',
'       lookup_type_name,',
'       display_sequence,',
'       is_active,',
'       created',
'  from hrms_lookup_types'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9002000000000011)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows. Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No lookup types found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_LOOKUP_TYPE_ID:\#LOOKUP_TYPE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>9002000000000011
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9002000000000012)
,p_db_column_name=>'LOOKUP_TYPE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Lookup Type ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9002000000000013)
,p_db_column_name=>'LOOKUP_TYPE_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9002000000000014)
,p_db_column_name=>'LOOKUP_TYPE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9002000000000015)
,p_db_column_name=>'DISPLAY_SEQUENCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9002000000000016)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9002000000000017)
,p_db_column_name=>'CREATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9002000000000018)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOOKUP_TYPE_CODE:LOOKUP_TYPE_NAME:DISPLAY_SEQUENCE:IS_ACTIVE:CREATED'
,p_sort_column_1=>'DISPLAY_SEQUENCE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LOOKUP_TYPE_CODE'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9002000000000019)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9002000000000010)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9002000000000020)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9002000000000010)
,p_button_name=>'ADD_LOOKUP_TYPE'
,p_static_id=>'add-lookup-type'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Lookup Type'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP,21::'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9002000000000021)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9002000000000010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9002000000000022)
,p_event_id=>wwv_flow_imp.id(9002000000000021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9002000000000010)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Lookup Type'
,p_alias=>'LOOKUP-TYPE'
,p_step_title=>'Lookup Type'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6285130696332259)
,p_protection_level=>'C'
,p_help_text=>'<p>Use this master-detail form to maintain a lookup type and its lookup values.</p>'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9002000000000023)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9002000000000024)
,p_plug_name=>'Lookup Type'
,p_static_id=>'lookup-type'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'HRMS_LOOKUP_TYPES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9002000000000025)
,p_plug_name=>'Lookup Values'
,p_static_id=>'lookup-values'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'HRMS_LOOKUP_VALUES'
,p_query_where=>'LOOKUP_TYPE_ID = :P21_LOOKUP_TYPE_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P21_LOOKUP_TYPE_ID'
,p_prn_page_header=>'Lookup Values'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000027)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000028)
,p_name=>'LOOKUP_VALUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOOKUP_VALUE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000029)
,p_name=>'LOOKUP_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOOKUP_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P21_LOOKUP_TYPE_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000030)
,p_name=>'LOOKUP_VALUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOOKUP_VALUE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000031)
,p_name=>'LOOKUP_VALUE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOOKUP_VALUE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000032)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000033)
,p_name=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_SEQUENCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_default_type=>'STATIC'
,p_default_expression=>'10'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000034)
,p_name=>'IS_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ACTIVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Active'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'UPPER'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000072)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9002000000000073)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9002000000000074)
,p_internal_uid=>9002000000000074
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9002000000000075)
,p_interactive_grid_id=>wwv_flow_imp.id(9002000000000074)
,p_static_id=>'lookup-values-grid'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9002000000000076)
,p_report_id=>wwv_flow_imp.id(9002000000000075)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000077)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9002000000000027)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>42
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000078)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9002000000000030)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000079)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9002000000000031)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>220
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000080)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9002000000000032)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>260
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000081)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9002000000000033)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000082)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9002000000000034)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000083)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9002000000000072)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9002000000000084)
,p_view_id=>wwv_flow_imp.id(9002000000000076)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9002000000000073)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9002000000000035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9002000000000023)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:RP,20::'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9002000000000036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9002000000000023)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_LOOKUP_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9002000000000037)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9002000000000023)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_LOOKUP_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9002000000000038)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9002000000000023)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_LOOKUP_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9002000000000040)
,p_name=>'P21_LOOKUP_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_source_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_source=>'LOOKUP_TYPE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9002000000000041)
,p_name=>'P21_LOOKUP_TYPE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_source_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_prompt=>'Code'
,p_source=>'LOOKUP_TYPE_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9002000000000042)
,p_name=>'P21_LOOKUP_TYPE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_source_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_prompt=>'Name'
,p_source=>'LOOKUP_TYPE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9002000000000043)
,p_name=>'P21_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_source_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>1000
,p_cHeight=>3
,p_field_template=>2042262243893469891
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9002000000000044)
,p_name=>'P21_DISPLAY_SEQUENCE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_source_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_default=>'10'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_field_template=>2042262243893469891
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'start',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9002000000000045)
,p_name=>'P21_IS_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_source_plug_id=>wwv_flow_imp.id(9002000000000024)
,p_item_default=>'Y'
,p_prompt=>'Active'
,p_source=>'IS_ACTIVE'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9002000000000048)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(9002000000000024)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Lookup Type'
,p_static_id=>'initialize-form-lookup-type'
,p_internal_uid=>9002000000000048
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9002000000000049)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9002000000000024)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Lookup Type'
,p_static_id=>'process-form-lookup-type'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9002000000000049
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9002000000000085)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9002000000000025)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Process grid Lookup Values - Save'
,p_static_id=>'process-grid-lookup-values-save'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9002000000000037)
,p_internal_uid=>9002000000000085
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9002000000000086)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9002000000000025)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Process grid Lookup Values - Create'
,p_static_id=>'process-grid-lookup-values-create'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9002000000000038)
,p_internal_uid=>9002000000000086
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9002000000000050)
,p_branch_name=>'Back to Lookup Types'
,p_branch_action=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:RP,20::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(9002000000000036)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260606112000Z')
,p_updated_on=>wwv_flow_imp.dz('20260606112000Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
=======
>>>>>>> parent of 68b792e (Add Lookups)
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'HRMS - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260606101631Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6287056048332360)
,p_plug_name=>'HRMS'
,p_static_id=>'hrms'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101631Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101631Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6288936159332448)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6287056048332360)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6287809186332432)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6287056048332360)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6288603912332445)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6287056048332360)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6288202827332443)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6287056048332360)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6287470937332426)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6287056048332360)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6292969106332490)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6292969106332490
,p_created_on=>wwv_flow_imp.dz('20260606101633Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6292521720332489)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6292521720332489
,p_created_on=>wwv_flow_imp.dz('20260606101633Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6289336364332460)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6289336364332460
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6290381837332478)
,p_page_process_id=>wwv_flow_imp.id(6289336364332460)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6290844398332479)
,p_page_process_id=>wwv_flow_imp.id(6289336364332460)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6289894726332475)
,p_page_process_id=>wwv_flow_imp.id(6289336364332460)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6291220778332482)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6291220778332482
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101633Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6292223960332487)
,p_page_process_id=>wwv_flow_imp.id(6291220778332482)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6291723701332485)
,p_page_process_id=>wwv_flow_imp.id(6291220778332482)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260606101632Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101632Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6480151701336068)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(6479720938336067)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6484444081336100)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(6480151701336068)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6476078652336054)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6480995497336070)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(6480151701336068)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6479302260336065)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(6478139007336060)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6472711815336045)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6470317915336031)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6278692670331942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6478139007336060)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6479720938336067)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6478503898336064)
,p_plug_name=>'Configuration'
,p_static_id=>'configuration'
,p_parent_plug_id=>wwv_flow_imp.id(6478139007336060)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6471114992336039)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6282636287332203)
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6484832788336101)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(6479720938336067)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6487038654336131)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(6484832788336101)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6477331347336059)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6485297524336103)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(6484832788336101)
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value                              as feedback_status, ',
'       (select count(*)',
'          from apex_team_feedback f',
'         where f.application_id  = :APP_ID',
'           and f.feedback_status = l.return_value ) as feedback_count ',
'  from apex_application_lov_entries l',
' where l.application_id      = :APP_ID',
'   and l.list_of_values_name = ''FEEDBACK_STATUS''',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6486360876336128)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6485991852336125)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6481353300336071)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(6480151701336068)
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6482849507336093)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6482055903336089)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6482446824336092)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6478929388336064)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(6478139007336060)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6471903815336042)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6283013965332203)
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6480548468336070)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6480151701336068)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6483516427336096)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6480548468336070)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6483937377336098)
,p_event_id=>wwv_flow_imp.id(6483516427336096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6481353300336071)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282636287332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101634Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6295843260332639)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6296013620332676)
,p_plug_name=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from sys.dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6296685888334325)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6296685888334325
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6298247724334460)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6300258757334481)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6299099540334468)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6297830592334434)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6298652986334465)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6299488171334473)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6299879299334476)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101652Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6302964807334500)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6304343215334509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6295843260332639)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6303686506334506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6296013620332676)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6305203705334515)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6304751616334512)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_static_id=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>6304751616334512
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6283013965332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6305532316334517)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6305620591334517)
,p_plug_name=>'Configure Appearance'
,p_static_id=>'configure-appearance'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6306619529334525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6305532316334517)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6307155217334528)
,p_button_id=>wwv_flow_imp.id(6306619529334525)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6307648749334535)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6305532316334517)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6308139785334535)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260606101653Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101653Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6308498761334537)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6305620591334517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6309063692334612)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6305620591334517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_grid_label_column_span=>0
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6310599134334625)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_static_id=>'save-end-user-style-preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>6310599134334625
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6310172710334623)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_static_id=>'save-theme-style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>6310172710334623
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6311706928334634)
,p_plug_name=>'Filters'
,p_static_id=>'filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6310993355334634)
,p_plug_name=>'Hourly Page Events'
,p_static_id=>'hourly-page-events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6311034061334634)
,p_region_id=>wwv_flow_imp.id(6310993355334634)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6313049777334646)
,p_chart_id=>wwv_flow_imp.id(6311034061334634)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from sys.dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6314247832334668)
,p_chart_id=>wwv_flow_imp.id(6311034061334634)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6313613089334664)
,p_chart_id=>wwv_flow_imp.id(6311034061334634)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6311673430334634)
,p_name=>'Latest Activity'
,p_static_id=>'latest-activity'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6323014828334753)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6322693155334748)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6311122029334634)
,p_plug_name=>'Most Active Pages'
,p_static_id=>'most-active-pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6311222137334634)
,p_region_id=>wwv_flow_imp.id(6311122029334634)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6318003767334682)
,p_chart_id=>wwv_flow_imp.id(6311222137334634)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6318642379334682)
,p_chart_id=>wwv_flow_imp.id(6311222137334634)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6319210115334684)
,p_chart_id=>wwv_flow_imp.id(6311222137334634)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6311595856334634)
,p_name=>'Recent Errors'
,p_static_id=>'recent-errors'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6320397330334707)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6320705355334723)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6311359968334634)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6311477199334634)
,p_region_id=>wwv_flow_imp.id(6311359968334634)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6315557333334673)
,p_chart_id=>wwv_flow_imp.id(6311477199334634)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6316173788334675)
,p_chart_id=>wwv_flow_imp.id(6311477199334634)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6316781215334676)
,p_chart_id=>wwv_flow_imp.id(6311477199334634)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260606101654Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101654Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6324336058334765)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6310993355334634)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6325105362334767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6311359968334634)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user-2'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6324790232334767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6311122029334634)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6325512016334768)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6311595856334634)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6311802664334634)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6311706928334634)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6311936099334634)
,p_name=>'Change Filters'
,p_static_id=>'change-filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6327113103334781)
,p_event_id=>wwv_flow_imp.id(6311936099334634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6310993355334634)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101655Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101655Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6327554382334787)
,p_event_id=>wwv_flow_imp.id(6311936099334634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6311359968334634)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6328098208334789)
,p_event_id=>wwv_flow_imp.id(6311936099334634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6311122029334634)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6328532630334790)
,p_event_id=>wwv_flow_imp.id(6311936099334634)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6311595856334634)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6329053302334792)
,p_event_id=>wwv_flow_imp.id(6311936099334634)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6311673430334634)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6363406469335098)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6363390377335098)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6364483404335100)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6364483404335100
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6368129637335187)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6366100071335165)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6367731147335182)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6366978116335175)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6368536289335193)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6366514234335170)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6367330989335179)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6365759062335150)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6371613737335225)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6363670565335098)
,p_plug_name=>'Top Users Chart'
,p_static_id=>'top-users-chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6363785164335098)
,p_region_id=>wwv_flow_imp.id(6363670565335098)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6375059740335251)
,p_chart_id=>wwv_flow_imp.id(6363785164335098)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_series_type=>'donut'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6372338816335231)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6363390377335098)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6364062613335098)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6363406469335098)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6363827837335098)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6363406469335098)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6363576954335098)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6373641859335240)
,p_event_id=>wwv_flow_imp.id(6363576954335098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6363390377335098)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6377019716335265)
,p_event_id=>wwv_flow_imp.id(6363576954335098)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6363390377335098)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101700Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6355900397335040)
,p_plug_name=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6356599799335042)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6356599799335042
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6358609205335068)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6359065690335075)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6359860777335084)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6359439176335079)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6357838351335056)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6358228457335064)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6362290043335095)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6362945029335098)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6355900397335040)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101659Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101659Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6341446128334898)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6341303872334898)
,p_plug_name=>'Page Performance'
,p_static_id=>'page-performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6341983199334898)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6341983199334898
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6345679098334981)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6348481944335007)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6345259815334976)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6344871720334973)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6347686195335000)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6346439105334987)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6344005198334957)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6348058288335004)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6343279463334928)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6343610281334935)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6346061125334984)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6347273930334995)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6346897993334992)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6344492593334968)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6353366927335029)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6354017286335032)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6341303872334898)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6341230890334898)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6341446128334898)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6341540305334898)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6355396562335039)
,p_event_id=>wwv_flow_imp.id(6341540305334898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6341303872334898)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101658Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101658Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6329748508334795)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6329602496334795)
,p_plug_name=>'Page Views'
,p_static_id=>'page-views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6330266453334795)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6330266453334795
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6333946507334862)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6332791147334850)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6335171431334873)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6334741439334870)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6334375416334865)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6333131436334854)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6333558426334857)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6331579739334832)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6332322193334843)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6331986033334839)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101656Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6338848670334887)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260606101656Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6339408512334889)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6329602496334795)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6329569417334795)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6329748508334795)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6329866946334795)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6340761265334896)
,p_event_id=>wwv_flow_imp.id(6329866946334795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6329602496334795)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101657Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101657Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101700Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6377613243335267)
,p_plug_name=>'Automations Log'
,p_static_id=>'automations-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101701Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6378207798335268)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6378207798335268
,p_created_on=>wwv_flow_imp.dz('20260606101701Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6380139393335393)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6382517091335434)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6381352299335414)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6379451411335368)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101701Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6382166324335425)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6381770801335418)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6379890000335378)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6380593862335401)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6380901590335407)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101702Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101702Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6385937656335487)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6386535949335509)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6377613243335267)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282390402332203)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6387280987335517)
,p_plug_name=>'Automation Execution'
,p_static_id=>'automation-execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6389672253335534)
,p_name=>'Messages'
,p_static_id=>'messages'
,p_template=>2102002977963900996
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6390707733335575)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6390363514335573)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6391106551335579)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6391528486335582)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6388072395335521)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6387280987335517)
,p_prompt=>'Automation'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6387658822335520)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6387280987335517)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6388452452335523)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6387280987335517)
,p_prompt=>'Started'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6388811662335528)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6387280987335517)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6389228689335532)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_static_id=>'get-log-detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6389228689335532
,p_created_on=>wwv_flow_imp.dz('20260606101703Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101703Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6393302440335593)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6393400098335593)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6394535929335596)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6393400098335593)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6394971412335598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6393400098335593)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6395497651335598)
,p_button_id=>wwv_flow_imp.id(6394971412335598)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6396065574335601)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6396322413335601)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6393302440335593)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6396779793335606)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>6396779793335606
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6397149753335607)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6397908114335607)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6397908114335607
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6400098806335645)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6399261957335634)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6399648914335640)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6401630806335657)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6402743920335662)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6397149753335607)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6403154506335664)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6397149753335607)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6402379419335660)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6397149753335607)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6397291304335607)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6397149753335607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6403809662335665)
,p_event_id=>wwv_flow_imp.id(6397291304335607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6397149753335607)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6404474446335667)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6404305559335667)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6405426717335671)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6404474446335667)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6405928935335673)
,p_button_id=>wwv_flow_imp.id(6405426717335671)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6407240028335678)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6404474446335667)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6406441168335675)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6404474446335667)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6406815192335678)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6404474446335667)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6408098144335681)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_item_source_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6407610524335679)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_item_source_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6408893735335684)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_item_source_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6408492960335682)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_item_source_plug_id=>wwv_flow_imp.id(6404305559335667)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101704Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101704Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6409971506335709)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_static_id=>'cannot-remove-yourself-from-administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6411194720335720)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6411194720335720
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6410372401335715)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(6404305559335667)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>6410372401335715
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6410720739335718)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6404305559335667)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6410720739335718
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6411593714335721)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6411652377335721)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6413732765335729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6411593714335721)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6414241943335731)
,p_button_id=>wwv_flow_imp.id(6413732765335729)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6411779035335721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6411593714335721)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6414731393335735)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6411779035335721)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6415566285335739)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6411652377335721)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6415184800335737)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6411652377335721)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6415977513335740)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6411652377335721)
,p_prompt=>'Username Format'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6417087320335745)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_static_id=>'create-collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6411779035335721)
,p_internal_uid=>6417087320335745
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282219691332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6411839153335721)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6412169528335721)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(6411971733335721)
,p_template=>2665811232373458102
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6419319223335776)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6418928988335775)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6412384283335721)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6422215287335790)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6412246986335721)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_static_id=>'p10044-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(6411971733335721)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6421558727335789)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6411971733335721)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101705Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101705Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6423358565335795)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6411839153335721)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6423897768335796)
,p_button_id=>wwv_flow_imp.id(6423358565335795)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6422945073335793)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6411839153335721)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6412464637335721)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6411839153335721)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6425199128335803)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6412384283335721)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6424395845335798)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6412384283335721)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6424763646335800)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6412384283335721)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6425585779335803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6412464637335721)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>6425585779335803
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6425963538335804)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6425963538335804
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6426404014335806)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6426368497335806)
,p_plug_name=>'Form on Feedback'
,p_static_id=>'form-on-feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6429598203335814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6426404014335806)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6430064053335815)
,p_button_id=>wwv_flow_imp.id(6429598203335814)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6426552680335806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6426404014335806)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6436951710335839)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6430568111335817)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6426368497335806)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6433622524335829)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6426368497335806)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6430976165335818)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6426368497335806)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6431777200335820)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(6426368497335806)
,p_prompt=>'Experience'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6431332781335818)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6426368497335806)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from sys.dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6436494096335837)
,p_validation_name=>'At least One Feedback Required'
,p_static_id=>'at-least-one-feedback-required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6434043110335831)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_static_id=>'submit-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'SUBMIT_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6426552680335806)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>6434043110335831
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6435093494335832)
,p_page_process_id=>wwv_flow_imp.id(6434043110335831)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6434533138335832)
,p_page_process_id=>wwv_flow_imp.id(6434043110335831)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6435566873335834)
,p_page_process_id=>wwv_flow_imp.id(6434043110335831)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6436082717335834)
,p_page_process_id=>wwv_flow_imp.id(6434043110335831)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6426966437335806)
,p_plug_name=>'Feedback Submitted'
,p_static_id=>'feedback-submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6426858676335806)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6426966437335806)
,p_button_name=>'CLOSE'
,p_static_id=>'close'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'w40p'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6438159558335842)
,p_button_id=>wwv_flow_imp.id(6426858676335806)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6428298134335806)
,p_plug_name=>'Manage Feedback'
,p_static_id=>'manage-feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6450848950335882)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6450848950335882
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6452836638335929)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6453265832335937)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6453631667335940)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6452006426335904)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6456840288335971)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6452469831335912)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6454008591335945)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6431856258335820)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6454419274335948)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6455225188335956)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6454852419335951)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(6443651512335860)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6456067223335965)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6456461516335968)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6455662341335960)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260606101707Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101707Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6461472634335989)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6462108134335990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6428298134335806)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6428114730335806)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6428298134335806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6462851113335992)
,p_event_id=>wwv_flow_imp.id(6428114730335806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6428298134335806)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6284915668332259)
,p_required_patch=>wwv_flow_imp.id(6282411958332203)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6427606375335806)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6427566807335806)
,p_plug_name=>'Form Items Region'
,p_static_id=>'form-items-region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6439835980335848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6427606375335806)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6440325801335850)
,p_button_id=>wwv_flow_imp.id(6439835980335848)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6427944017335806)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6427606375335806)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6427705764335806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6427606375335806)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6442738103335857)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6443592030335860)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6441950413335854)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'Filed'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6441182946335851)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6441559967335853)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'Page'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6442317989335856)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'Rating'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6443113455335859)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'Response'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6445803857335870)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6427566807335806)
,p_prompt=>'User Agent'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6449456195335879)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6427944017335806)
,p_internal_uid=>6449456195335879
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6449837796335881)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6449837796335881
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6448596671335876)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_static_id=>'delete-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'DELETE_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6427944017335806)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>6448596671335876
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6449058364335878)
,p_page_process_id=>wwv_flow_imp.id(6448596671335876)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6446234875335871)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_static_id=>'load-data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6446234875335871
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6446696932335871)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_static_id=>'reply-to-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'REPLY_TO_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6427705764335806)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>6446696932335871
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6447184929335873)
,p_page_process_id=>wwv_flow_imp.id(6446696932335871)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6448152360335876)
,p_page_process_id=>wwv_flow_imp.id(6446696932335871)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6447622337335875)
,p_page_process_id=>wwv_flow_imp.id(6446696932335871)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260606101706Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101706Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6286434532332325)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6282944897332203)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6463802530336000)
,p_plug_name=>'About Page'
,p_static_id=>'about-page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6282944897332203)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6464574931336001)
,p_plug_name=>'Search Dialog'
,p_static_id=>'search-dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6464979074336003)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6464574931336001)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101708Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101708Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6487492397336134)
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(6487901382336137)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6492655769336156)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6493020313336159)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user-2'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER and workspace_id = :WORKSPACE_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6493587373336162)
,p_region_id=>wwv_flow_imp.id(6493020313336159)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6494064593336165)
,p_plug_name=>'Settings'
,p_static_id=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6491571784336153)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6487492397336134)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(6487676587336135)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_last_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6489323978336145)
,p_plug_name=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6488955938336142)
,p_plug_name=>'Push Notifications Not Supported'
,p_static_id=>'push-notifications-not-supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6488500728336140)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6489894002336146)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6489323978336145)
,p_prompt=>'Enable push notifications on this device'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6490105568336148)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_static_id=>'change-p20010-enable-push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6490502708336148)
,p_event_id=>wwv_flow_imp.id(6490105568336148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_static_id=>'subscribe-to-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.subscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6491058617336150)
,p_event_id=>wwv_flow_imp.id(6490105568336148)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_static_id=>'unsubscribe-from-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.unsubscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260606101709Z')
,p_updated_on=>wwv_flow_imp.dz('20260606101709Z')
,p_created_by=>'NUMAN'
,p_updated_by=>'NUMAN'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
