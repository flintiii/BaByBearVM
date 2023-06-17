<p>VMEMulater</p>
<p>The Dreaded Demonstration</p>
<p> </p>
<p>    This is <span class="T12">the</span> guidance to help get <span class="T1">a Visual Bash Shell script </span>"tsg.sh" from github.com <span class="T1">to a local directory and repository.</span></p>
<p> </p>
<p><span class="T8">S</span><span class="T3">tep by step:</span></p>
<p> </p>
<p><span class="T2">Open a terminal - Copy and paste:</span></p>
<ol>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">1.</span>rm -rf main.zip tsg tsg-main<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">2.</span>Wget https://github.com/flintiii/tsg/archive/refs/heads/main.zip<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">3.</span>mv tsg-main tsg<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">4.</span>Unzip main.zip<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">5.</span>mv tsg-main tsg<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">6.</span>cd tsg<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">7.</span>sudo tsg.sh <span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">8.</span>sudo ./tsg.sh sane<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">9.</span>sudo ./tsg.sh vmem<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">10.</span>/usr/sbin/vm/bin/rvm370.sh<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">11.</span>/usr/sbin/vm/bin/rvm370.sh<span class="odfLiEnd"></span> </p>
<p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0cm"></span><span class="odfLiEnd"></span> </p></li>
</ol>
<p>Open another terminal - Copy and paste:</p>
<ol>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">1.</span>sudo ./tsg.sh gandt<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">2.</span>sudo ./tsg.sh ibmgh<span class="odfLiEnd"></span> </p></li>
</ol>
<p> </p>
<p><span class="T6">Observe that you have a working VM </span><span class="T8">client</span><span class="T6"> attached to a local copy of docker. Type:</span></p>
<p><span class="T6"></span></p>
<p>Observe that you have a working VM <span class="T12">3270 </span>client attached to a local copy of docker. Type:</p>
<ol>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">1.</span>logon maint<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">2.</span>cpcms<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">3.</span>i cms<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">4.</span>l * * a<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">5.</span>&lt;alt&gt; 2<span class="odfLiEnd"></span> </p></li>
<li><p><span class="Numbering_20_Symbols" style="display:block;float:left;min-width:0.635cm;">6.</span>logoff<span class="odfLiEnd"></span> </p></li>
</ol>
<p> </p>
<p>Additional Info</p>
<p>    See &lt;http://docbox.flint.com:8081/vmulater&gt; for supporting docs.</p>
<p>Author</p>
<p>    Paul Flint &lt;flint@flint.com&gt;</p>
<p>Date</p>
<p><span> 2023-06-17</span></p>
<p>Revision</p>
<p><span> 0.008</span></p>
<p>    This is released under GPL <span class="T10">II</span>I</p>
<p> </p>
