{% if theme.alipay or theme.wechatpay %}
  <div id="reward">
    <div reward_comment>
      <p>{{ theme.reward_comment }}</p>
    </div>
    <button id="reward_button" disable="enable" onclick="var qr = document.getElementById('reward_qr'); if (qr.style.display === 'none') {qr.style.display='block';} else {qr.style.display='none'}">
      <span>我很欣赏你</span>
    </button>
    <div id="reward_qr" style="display: none;">
      {% if theme.wechatpay %}
        <div id="wechat" style="display: inline-block">
          <img id="wechat_qr" src="{{ theme.wechatpay }}" alt="{{ theme.author }} WeChat Pay"/>
          <p>微信支持</p>
        </div>
      {% endif %}
      {% if theme.alipay %}
        <div id="alipay" style="display: inline-block">
          <img id="alipay_qr" src="{{ theme.alipay }}" alt="{{ theme.author }} Alipay"/>
          <p>支付宝支持</p>
        </div>
      {% endif %}
    </div>
  </div>
{% endif %}
