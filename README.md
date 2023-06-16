<h1 id="vmulater---the-dreaded-demonstration">VMulatER - The Dreaded Demonstration</h1>
<dl>
<dt>Info</dt>
<dd><p>See &lt;<a href="http://docbox.flint.com:8081/vmulater">http://docbox.flint.com:8081/vmulater</a>&gt; for supporting docs.</p>
</dd>
<dt>Author</dt>
<dd><p>Paul Flint &lt;<a href="mailto:flint@flint.com">flint@flint.com</a>&gt;</p>
</dd>
<dt>Date</dt>
<dd><p>$Date: Fri 16 Jun 2023 07:45:13 AM EDT $</p>
</dd>
<dt>Revision</dt>
<dd><p>$Revision: 0.007 $</p>
</dd>
<dt>Description</dt>
<dd><p>This is a "docinfo block"</p>
</dd>
</dl>
<p>This is the code you need to type to do the demo:</p>
<p>Step by step:</p>
<pre><code>git clone https://github.com/flintiii/tsg.git
cd ~/tsg
./tsg.sh</code></pre>
<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>**<strong>*DOCUMENTATION</strong>***</p>
</blockquote>
<div class="line-block">You get this when you put in the wrong number or type of arguments...<br />
The name of this program is tsg.sh, an extention of unix find.<br />
Theis is released under GPL I<br />
The syntax is:<br />
- tsg.sh sane - Checks that you have the stuff you need.<br />
- tsg.sh vmem - installs VMulator.<br />
- tsg.sh gandt - terminal to VMulator.<br />
- tsg.sh ibmgs - terminal to VMulator.<br />
- tsg.sh uvmem - removes VMulator.<br />
- tsg.sh flink - Patches to current user path.<br />
- tsg.sh flunk - Removes from current user path.<br />
- tsg.sh getgh - install gh github cli<br />
   in all of these, Output is delivered to the screen...<br />
<strong>* NOTE</strong>* These commands need not be run as root, but installing sane code! For structure information type "grep '^#*' tsg.sh"</div></td>
</tr>
</tbody>
</table>
<p>Next steps:</p>
<pre><code>./tst.sh sane
sudo ./tst.sh getgh
sudo ./tst.sh vmem
Open another terminal window
./tst.sh ibmgs</code></pre>
<p>Note that runing</p>
