<div id="left_menu_wrapper">
  <script language="JavaScript">
  function f(target_url,win_name) {
    var new_win = window.open(target_url,win_name,'resizable=yes,scrollbars=yes,menubar=no,toolbar=no,width=550,height=280,top=0,left=0');
    new_win.focus();
  }
  </script>

  <table width="100%" cellspacing="0" cellpadding="0" id="left_menu">
    <tr><th id="server_name">{servername}</th></tr>

    <tr><td align="center"><img border="0" src="../design/images/supernova.png" alt="supernova.ws"></td></tr>

    {ADMIN_LINK}
    <tr><th>{L_m_h_rules}</th></tr>
    <tr><td><a href="{C_rules_url}">{L_sys_game_rules}</a></td></tr>
  <!--  <tr><td title="{m_faq_hint}"><a href="http://forum.supernova.ws/phpBB3/viewtopic.php?f=3&t=333">{m_faq}</a></td></tr> -->
  <!--  <tr><td><a href="faq.php">{m_faq}</a></td></tr> -->
    <tr>
      <td><a href="announce.php">{L_news_title}
      <!-- IF new_announce_count -->
      <font color=red><strong><blink>{L_lm_announce_fresh}</blink></strong></font>
      <!-- ENDIF -->
      </a>
      </td>
    </tr>
    <tr><th><a href="affilates.php" id="lm_affilates">{L_m_affilates}</a></th></tr>

    <tr><th>{L_sys_planet}</th></tr>
    <tr><td><a href="overview.php" id="lm_overview">{L_Overview}</a></td></tr>
    <tr><td><a href="resources.php">{L_Resources}</a></td></tr>
    <tr><td><a href="fleet.php" id="lm_fleet">{L_Fleet}</a></td></tr>
    <tr><td><a href="buildings.php" id="lm_buildings">{L_Buildings}</a></td></tr>
    <tr><td><a href="buildings.php?mode=fleet" id="lm_shipyard">{L_Shipyard}</a></td></tr>
    <tr><td><a href="buildings.php?mode=defense">{L_Defense}</a></td></tr>

    <tr><th>{L_Imperium}</th></tr>
    <tr><td><a href="imperator.php" style="color: purple">{L_imp_imperator}</a></th></tr>
    <tr><td><a href="imperium.php">{L_imp_overview}</a></th></tr>
    <tr><td><a href="techtree.php" id="lm_techtree">{L_Technology}</a></td></tr>
    <tr><td><a href="buildings.php?mode=research" id="lm_techtree">{L_Research}</a></td></tr>
    <tr><td><a href="officier.php">{L_tech[600]}</a></td></tr>
    <tr><td><a href="market.php">{L_rinok}</a></td></tr>
    <tr><td><a href="galaxy.php?mode=0" id="lm_universe">{L_sys_universe}</a></td></tr>

    <tr><th>{L_m_communication}</th></tr>
    <tr><td><a href="{forum_url}" id="lm_forum">{L_m_forum}</a></td></tr>
    <tr><td><a href="messages.php">{L_Messages}</a></td></tr>
    <tr><td><a href="chat.php" id="lm_chat">{L_Chat}</a></td></tr>
    <tr><td><a href="alliance.php">{L_Alliance}</a></td></tr>
    <tr><td><a href="chat.php?chat_type=ally" id="lm_chatally">{L_AllyChat}</a></td></tr>
    <tr><td><a href="buddy.php">{L_Buddylist}</a></td></tr>
    <tr><td><a href="search.php" id="lm_search">{L_Search}</a></td></tr>

    <tr><th>{L_navig}</th></tr>
    <tr><td><a href="stat.php?start=%7Buser_rank%7D">{L_Statistics}</a></td></tr>
    <tr><td><a href="records.php">{L_Records}</a></td></tr>
    <tr><td><a href="banned.php">{L_lm_banned}</a></td></tr>
    <tr><td><a href="contact.php">{L_commun}</a></td></tr>
    <tr><td><a href="server_info.php">{L_lm_server_info}</a></td></tr>

    <tr><th>{L_m_others}</th></tr>
    <tr><td><a href="simulator.php" id="lm_simulator">{L_m_simulator}</a></td></tr>
    <tr><td><a href="notes.php">{L_Notes}</a></td></tr>
    <tr><td><a href="fleetshortcut.php">{L_lm_shortcuts}</a></td></tr>

    <tr><th><a href="options.php" id="lm_options">{L_Options}</a></th></tr>
    <tr><th><a href="javascript:top.location.href='logout.php'" id="lm_logout">{L_Logout}</a></th></tr>

    <tr><td align="center"><a href="http://games.triolan.ua" target="_blank"><img border="0" src="../design/images/banners/bannergtu.gif" alt="Games @ Triolan.UA"></font></a></td></tr>
    <tr><th><a href="http://wow.triolan.com.ua/" target="_blank"><img border="0" src="../design/images/banners/wow.gif" width="130" height="25" alt="Wow Triolan Server"></a></th></tr>
    <!-- IF ADV_LEFT_BOTTOM -->
    <tr><td align="center">{ADV_LEFT_BOTTOM}</td></tr>
    <!-- ENDIF -->
  </table>
</div>