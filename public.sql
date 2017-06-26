/*
 Navicat Premium Data Transfer

 Source Server         : LOcal
 Source Server Type    : PostgreSQL
 Source Server Version : 90602
 Source Host           : localhost:5432
 Source Catalog        : phx_site_dev
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90602
 File Encoding         : 65001

 Date: 26/06/2017 00:08:54
*/


-- ----------------------------
-- Sequence structure for posts_posts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "posts_posts_id_seq";
CREATE SEQUENCE "posts_posts_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
 START 1
CACHE 1;
SELECT setval('"posts_posts_id_seq"', 21, true);

-- ----------------------------
-- Sequence structure for tags_tags_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tags_tags_id_seq";
CREATE SEQUENCE "tags_tags_id_seq" 
INCREMENT 1
NO MINVALUE 
NO MAXVALUE 
 START 1
CACHE 1;
SELECT setval('"tags_tags_id_seq"', 509, true);

-- ----------------------------
-- Table structure for posts_posts
-- ----------------------------
DROP TABLE IF EXISTS "posts_posts";
CREATE TABLE "posts_posts" (
  "id" int4 NOT NULL DEFAULT nextval('posts_posts_id_seq'::regclass),
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "body" text COLLATE "pg_catalog"."default",
  "inserted_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "teaser" text COLLATE "pg_catalog"."default",
  "date" date,
  "old_url" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "posts_posts" OWNER TO "postgres";

-- ----------------------------
-- Records of posts_posts
-- ----------------------------
BEGIN;
INSERT INTO "posts_posts" VALUES (2, 'Upgrading from v1.0 to v1.1', 'TBA', '2017-06-19 06:50:15.080332', '2017-06-25 05:43:05.470029', 'Please follow these instructions if you need to upgrade from Phoenix 1.0 to 1.1', '2015-12-27', '/v0.13.1/blog/upgrading-from-v10-to-v11');
INSERT INTO "posts_posts" VALUES (6, 'Upgrading from 1.1.1 to 1.1.2', 'Please follow these instructions if you need to upgrade from Phoenix 1.1.1 to 1.1.2', '2017-06-21 20:12:22.880167', '2017-06-25 05:44:56.51718', 'Please follow these instructions if you need to upgrade from Phoenix 1.1.1 to 1.1.2', '2016-01-27', '/blog/upgrading-from-111-to-112');
INSERT INTO "posts_posts" VALUES (9, 'Upgrading from v0.16 to v0.17', 'Please follow these instructions if you need to upgrade from Phoenix 0.16 to 0.17', '2017-06-22 02:16:53.763619', '2017-06-25 05:46:47.93077', 'Please follow these instructions if you need to upgrade from Phoenix 0.16 to 0.17', '2015-08-19', '/v0.16.0/blog/upgrading-from-v016-to-v017');
INSERT INTO "posts_posts" VALUES (14, 'Upgrading from v0.15.0 to v0.16.0', 'Please follow these instructions if you need to upgrade from Phoenix 0.15.0 to 0.16.0', '2017-06-25 05:49:02.593887', '2017-06-25 05:49:08.5086', 'Please follow these instructions if you need to upgrade from Phoenix 0.15.0 to 0.16.0', '2015-08-06', '/v0.16.0/blog/upgrading-from-v0150-to-v0160');
INSERT INTO "posts_posts" VALUES (15, 'Upgrading from v0.14.0 to v0.15.0', 'Please follow these instructions if you need to upgrade from Phoenix 0.14.0 to 0.15.0', '2017-06-25 05:49:28.241315', '2017-06-25 05:50:30.388178', 'Please follow these instructions if you need to upgrade from Phoenix 0.14.0 to 0.15.0', '2015-07-27', '/blog/upgrading-from-v0140-to-v0150');
INSERT INTO "posts_posts" VALUES (16, 'Upgrading from v0.13.x to v0.14.0', 'Please see these instructions if you need to upgrade from Phoenix 0.13 to 0.14.0', '2017-06-25 06:03:32.822555', '2017-06-25 06:03:32.82256', 'Please see these instructions if you need to upgrade from Phoenix 0.13 to 0.14.0', '2015-06-30', '/v0.11.0/blog/upgrading-from-v013x-to-v0140');
INSERT INTO "posts_posts" VALUES (11, 'Phoenix 1.0 – The Framework for the Modern Web Just Landed', '<img src="/images/posts/phx1-intro.png">
<p>After a year and a half of work, 2500 commits, and 30 releases, Phoenix 1.0 is here! With 1.0 in place, Phoenix is set to take on the world whether you''re building APIs, HTML5 applications, or network services for native devices. Written in Elixir, you get beautiful syntax, productive tooling and a fast runtime. Along the way, we''ve had <a href="https://www.youtube.com/watch?v=xT8vDHIvurs&feature=youtu.be" target="blank">many success stories of companies using phoenix in production</a>, and two ElixirConf''s where we showed off Phoenix''s progress.</p>

<h4>Many Thanks</h4>
<p>Before we jump into some of the great things Phoenix has to offer, we owe thanks to the people that helped make this possible.</p>

<h5>José Valim</h5>
Though he''ll try to downplay his efforts, José paved the way for Phoenix with a level of contribution that is simply amazing. He not only wrote Elixir, but bootstrapped Phoenix with the <a href="https://github.com/elixir-lang/plug" target="blank">Plug</a> library, opened database access with <a href="https://github.com/elixir-lang/ecto" target="blank">Ecto</a>, and contributed thousands of lines of code to Phoenix itself. Along the way, he crafted Elixir releases and helped build a community that has been such a pleasure to be a part of. Thank you!

<h5>phoenix-core</h5>
<p>The core team devoted many of their nights and weekends to get where we are today. Whether it''s <a href="https://twitter.com/lance_halvorsen" target="blank">Lance Halvorsen</a> writing the lovely Phoenix guides, <a href="https://twitter.com/peregrine" target="blank">Jason Stiebs</a> helping flesh out the initial channels layer, <a href="https://twitter.com/emjii" target="blank">Eric Meadows-Jönsson</a> working on hex.pm and making sure we have graceful fallback for older browsers, or <a href="https://twitter.com/scrogson" target="blank">Sonny Scroggin</a> contributing in many areas while training newcomers, these people helped make Phoenix what it is today.</p>

<h4>The real-time web</h4>
<p>From the beginning, Phoenix has been focused on taking on the real-time web. The goal was to make real-time communication just as trivial as writing a REST endpoint. We''ve realized that goal with channels. This 90 second clip of a collaborative editor should give you a sense of what''s possible:</p>

<div class="video">
<iframe width="560" height="315" src="https://www.youtube.com/embed/GLa9gtvP13Y" frameborder="0" allowfullscreen></iframe>
</div>
<p>Channels give you a multiplexed connection to the server for bidirectional communication. Phoenix also abstracts the transport layer, so you no longer have to be concerned with how the user has connected. Whether WebSocket, Long-polling, or a custom transport, your channel code remains the same. You write code against an abstracted "socket", and Phoenix takes care of the rest. Even on a cluster of machines, your messages are broadcasted across the nodes automatically. Phoenix''s javascript client also provides an API that makes client/server communication beautifully simple. This is what it looks like:</p>

<img src="/images/posts/phx1-api.png">

<h4>Beyond the browser</h4>
<p>As a "web framework", Phoenix targets traditional browser applications, but the so-called "web" is evolving. And we need a framework to evolve with it. Phoenix transcends the browser by connecting not only browsers, but iPhones, Android handsets, and smart devices alike. <a href="https://twitter.com/mobileoverlord" target="blank">Justin Schneck</a>, <a href="https://twitter.com/eoins" target="blank">Eoin Shanaghy</a>, and <a href="https://twitter.com/davidstump" target="blank">David Stump</a> helped Phoenix realize this goal by writing channel clients for objC, Swift, C#, and Java. To appreciate what this enables, Justin demo''d a Phoenix chat application running on an Apple Watch, iPhone, and web browser all powered by native phoenix channel clients:</p>

<div class="video">
<iframe src="https://player.vimeo.com/video/136679715" width="640" height="400" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<p><a href="https://vimeo.com/136679715">Phoenix Channels on Apple Devices</a> from <a href="https://vimeo.com/user43028328">Justin Schneck</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
</div>

<h4>Productivity in the short term and the long term</h4>
<p>In addition to high connectivity, Phoenix gives you a comfortable feature set to get up and running quickly and be productive with your team. But, Software isn''t just about the short-term. Elixir leverages tried and true patterns for long-term project success and maintainability. The Erlang runtime was designed for systems to run for many years, with minimal downtime. Using these patterns and the runtime innovations, you can deploy systems that self-heal, support hot-code uploading, and have capabilities known to support millions of connected users. Out of the box, Phoenix provides:</p>

<h5>Short-term productivity</h5>
Project generation with mix phoenix.new my_app
Live-reload in development. Make a change to any template, view, or asset and see the results immediately in the browser
Postgres, MySQL, MSSQL, and MongoDB resources through Ecto integration
Resource generators, such as mix phoenix.gen.html User users name:string age:integer to bootstrap a project and learn the ins and outs of phoenix best practices
A precompiled view layer with EEx templates for lightning fast response times, often measuring in microseconds
Channels for realtime communication
and more

<h5>Long-term productivity</h6>
The ability to run multiple phoenix applications side-by-side in the same OS process or break a bigger application into smaller chunks with umbrella apps: <a href="http://blog.plataformatec.com.br/2015/06/elixir-in-times-of-microservices/" target="blank">http://blog.plataformatec.com.br/2015/06/elixir-in-times-of-microservices/</a>
Erlang OTP tooling to get a live look into your running application and diagnose issues:

<img src="/images/posts/phx1-otp.png">

<h4>What''s Next?</h4>
We''re just getting started with 1.0. With a strong and stable core in place, we''ll be building Channel Presence features, internationalization, and more. Be sure to <a href="http://www.phoenixframework.org/blog/phoenix-10-the-framework-for-the-modern-web-just-landed" target="blank">register for ElixirConf</a> in October to find out yet unannounced plans beyond Phoenix 1.1 and other neat things happening in the Elixir ecosystem. José Valim is also hosting a Phoenix webinar on Sept 4 to talk about Phoenix and answer viewer questions.
<ul>
<li><a href="http://pages.plataformatec.com.br/webinar-phoenix-framework-with-jose-valim" target="blank">Phoenix webinar & Q/A with José Valim, Sept 4</a></li>
<li><a href="http://elixirconf.com/" target="blank">ElixirConf, October 1-3 Austin, TX</a></li>
</ul>

<h4>Getting Started</h4>
<p>So how can you join in on all this fun? The Phoenix guides will take you through the basics and get you up and running quickly. If you''re new to Elixir, here''s a few resources to get up to speed before jumping into Phoenix:</p>
<ul>
<li><a href="http://elixir-lang.org/getting-started/introduction.html" target="_blank">elixir-lang.org getting started guides</a></li>
<li><a href="https://howistart.org/posts/elixir/1" target="_blank">How I Start: Elixir</a></li>
<li><a href="http://www.chrismccord.com/blog/2014/05/27/all-aboard-the-elixir-express/" target="_blank">Elixir Workshop</a></li>
</ul>
<p>It has been an amazing ride, and we''re just getting started. Let''s show the world what Elixir and Phoenix can do.</p>
–Chris', '2017-06-22 05:56:46.819075', '2017-06-25 16:03:10.819293', 'After a year and a half of work, 2500 commits, and 30 releases, Phoenix 1.0 is here! With 1.0 in place, Phoenix is set to take on the world whether you''re building APIs, HTML5 applications, or network services for native devices.', '2015-08-28', '/blog/phoenix-10-the-framework-for-the-modern-web-just-landed');
INSERT INTO "posts_posts" VALUES (1, 'The Road to 2 Million Websocket Connections in Phoenix', '<img src="/images/posts/2m-intro.png">

<p>If you have been paying attention on Twitter recently, you have likely seen some increasing numbers regarding the number of simultaneous connections the Phoenix web framework can handle. This post documents some of the techniques used to perform the benchmarks.</p>

<h4>How it Started</h4>

<p>A couple of weeks ago I was trying to benchmark the number of connections and managed to get 1k connections on my local machine. I wasn''t convinced by the number so I posted in IRC to see if anyone had benchmarked Phoenix channels. It turned out they had not, but some members of the core team found the 1k number I provided suspiciously low. This was the beginning of the journey.</p>

<h4>How to Run the Benchmarks</h4>

<h5>The Server</h5>

<p>To benchmark the number of simultaneous web sockets that can be open at a time, the first thing required is a Phoenix application to accept the sockets. For these tests, we used a slightly modified version of the <a href="https://github.com/chrismccord/phoenix_chat_example" target="_blank">chrismccord/phoenix_chat_application</a> available at <a href="https://github.com/Gazler/phoenix_chat_example/tree/bench" target="_blank">Gazler/phoenix_chat_example</a> - the key difference is:</p>

The <code>after_join</code> hook that broadcasts a user has joined a channel has been removed. When measuring concurrent connections, we want to limit the number of messages that are sent. There will be future benchmarks for that.

<p>Most of these tests were performed on <a href="http://www.rackspace.com/cloud/servers#dd-wrap-iov1" target="_blank">Rackspace 15 GB I/O v1</a> - these machines have 15GB RAM and 4 cores. <a href="http://www.rackspace.com/" target="_blank">Rackspace</a> kindly let us use 3 of these servers for our benchmarks free of charge. They also let us use a <a href="http://www.rackspace.com/cloud/servers" targe="_blank">OnMetal I/O</a> which had 128GB RAM and showed 40 cores in htop.</p>

<div class="img"><img src="/images/posts/2m-benchmarks.png"></div>

<p>One additional change you may want to make is to remove <code>check_origin</code> in <code>conf/prod.exs</code> - this will mean that the application can be connected to regardless of the ip address/hostname used.</p>

<p>To start the server just <code>git clone</code> it and run:</p>

<ol>
<li><code>MIX_ENV=prod mix deps.get</code></li>
<li><code>MIX_ENV=prod mix deps.compile</code></li>
<li><code>MIX_ENV=prod PORT=4000 mix phoenix.server</code></li>
</ol>

<p>You can validate this is working by visiting <code>YOUR_IP_ADDRESS:4000</code></p>

<h4>The Client</h4>

<p>For running the client, we used <a href="http://tsung.erlang-projects.org/" target="_blank">Tsung</a>. Tsung is an open-source distributed load testing tool that makes it easy to stress test websockets (as well as many other protocols.)</p>

<p>The way Tsung works when distributing is by using host names. In our example, the first machine was called "phoenix1" which was assigned against the ip in <code>/etc/hosts</code>. The other machines "phoenix2" and "phoenix3" should also be in <code>/etc/hosts</code>.</p>

<p>It is important to run the clients on a different machine from the Phoenix application for the benchmarks. The results will not be a true representation if both are running on the same machine.</p>

<p>Tsung is configured using XML files. You can read about the particular values in <a href="http://tsung.erlang-projects.org/user_manual/index.html" target="_blank">the documentation</a>. Here is the config file we used (however the numbers have been lowered to reflect the number of clients here, for our bigger tests we used 43 clients). It starts 1k connections a second up to a maximum of 100k connections. For each connection it opens a websocket, joins the "rooms:lobby" topic and then sleeps for 30000 seconds.</p>

<p>We used a large sleep time because we wanted to keep the connections open to see how responsive the application was after all the clients had connected. We would stop the test manually instead of closing the websockets in the config (Which you can do with <code>type="disconnect"</code>).</p>

<h4>THE FIRST 1K CONNECTIONS</h4>

<p>Tsung provides a web interface at port <code>8091</code> which can be used to monitor the status of the test. The only chart that we were really interested in for these tests was simultaneous users. So the first time I ran Tsung on my own was on my own machine with both Tsung and the Phoenix chat application running locally. When doing this Tsung would often crash - when this happens you can''t see the web interface - which means there is no chart to show for this, but it was an unimpressive 1k connections.</p>

<h5>THE FIRST 1K CONNECTIONS AGAIN!</h5>

<p>I set up a machine remotely and attempted benchmarking again. This time I was getting 1k connections, but at least Tsung didn''t crash. The reason for this was the system-wide resource limit was being reached. To verify this I ran <code>ulimit -n</code> which returned <code>1024</code> which would explain why I could only get 1k connections.</p>

<p>From this point onwards the following configuration was used. This configuration took us all the way to 2 million connections.</p>

<pre>
  <code>
     sysctl -w fs.file-max=12000500
     sysctl -w fs.nr_open=20000500
     ulimit -n 20000000
    sysctl -w net.ipv4.tcp_mem=''10000000 10000000 10000000''
    sysctl -w net.ipv4.tcp_rmem=''1024 4096 16384''
    sysctl -w net.ipv4.tcp_wmem=''1024 4096 16384''
    sysctl -w net.core.rmem_max=16384
    sysctl -w net.core.wmem_max=16384
  </pre>
</code>

<h4>THE FIRST REAL BENCHMARK</h4>

<p>I had been talking about Tsung in IRC when Chris McCord (creator of Phoenix) contacted me to let me know RackSpace had set up some instances for us to use for the benchmarks. We got to work setting up the 3 servers with the following config file: <a href="https://gist.github.com/Gazler/c539b7ef443a6ea5a182" target="_blank">https://gist.github.com/Gazler/c539b7ef443a6ea5a182</a></p>

<p>After we were up and running we dedicated one machine to Phoenix and two for running Tsung. Our first real benchmark ended up with about 27k connections.</p>

<div class="img"><img src="/images/posts/2m-sim-users.png"></div>

<p>In the above image there are two lines on the chart, the line on the top is labeled "users" and the line on the bottom labeled "connected". The users increases based on arrival rate. For most of these tests we used an arrival rate of 1000 users per second.</p>

<p>As soon as the results were in, José Valim was on the case with <a href="https://github.com/phoenixframework/phoenix/commit/061c69b43c3b8c6fa19fd129d35a3a25ae767850" target="_blank">this commit</a></p>

<p>This was our first improvement and it was a big one. From this we got up to about 50k connections.</p>

<div class="img"><img src="/images/posts/2m-sim-users-improvement.png"></div>

<h4>OBSERVING THE CHANGES</h4>

<p>After our first improvement we realized that we were going in blind. If only there was some way we could observe what was happening. Luckily for use Erlang ships with <a href="observer" target=_blank">observer and it can be used remotely. We used the following technique from <a href="https://gist.github.com/pnc/9e957e17d4f9c6c81294" target="_blank">https://gist.github.com/pnc/9e957e17d4f9c6c81294</a> to open a remote observer.</p>

<div class="img"><img src="/images/posts/2m-changes.png"></div>

<p>Chris was able to use the observer to order the processes by the size of their mailbox. The <code>:timer</code> process had about 40k messages in its mailbox. This is due to Phoenix doing a heartbeat every 30 seconds to ensure the client is still connected.</p>

<p>Luckily, Cowboy already takes care of this, so after <a href="https://github.com/phoenixframework/phoenix/commit/7b252f42cc8552496a5ebd392f59a008ef6c98a9" target="_blank">this commit</a> the results looked like:</p>

<div class="img"><img src="/images/posts/2m-cowboy.png"></div>

<p>I actually killed the pubsub supervisor using observer in this image which explains the 100k drop at the end. This was the second 2x performance gain. The result was 100k concurrent connections using 2 Tsung machines.</p>

<h4>WE NEED MORE MACHINES</h4>

<p>There are two problems with the image above. One is that we don''t reach the full number of clients (about 15k were timing out) and two we can only actually generate between 40k and 60k connections per Tsung client (technically per IP address.) For Chris and I this wasn''t good enough. We couldn''t really see the limits unless we could generate more load.</p>

<p>At this stage RackSpace had given us the 128GB box, so we actually had another machine we could use, using such a powerful machine as a Tsung client limited to 60k connections may seem like a waste, but it''s better than the machine idling! Chris and I set up another 5 boxes between us which is another 300k possible connections.</p>

<p>We ran the benchmarks again and we got about 330k connected clients.</p>

<div class="img"><img src="/images/posts/2m-sim-users-330k.png"></div>

<p>The big problem is about 70k didn''t actually connect to the machine. We couldn''t work out why. Probably hardware issues. We decided to try running Phoenix on the 128GB machine instead. Surely there would be no issues reaching our connection limits, right?</p>

<div class="img"><img src="/images/posts/2m-sim-users-128.png"></div>

<p>Wrong. The results here are almost identical to those above. Chris and I thought 330k was pretty good. Chris tweeted out the results and we called it a night.</p>

<div class="tweet"><blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">To be clear, it was a single 4core server, 16gb. Traffic was pushed from 8 servers to open 333k conns. Out of ports, need more servers</p>&mdash; Chris McCord (@chris_mccord) <a href="https://twitter.com/chris_mccord/status/657721455468269568">October 24, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></div>

<h4>KNOW YOUR ETS TYPES</h4>

<p>After achieving 330k and having 2 fairly easy performance gains, we weren''t sure there could be any more performance gains of the same magnitude. We were wrong. I wasn''t aware of it at the time, but my colleague Gabi Zuniga (@gabiz) at VoiceLayer had been looking at the issue over the weekend. His commit gave us the best performance gain so far. You can see the diff on <a href="https://github.com/phoenixframework/phoenix/pull/1311" target="_blank">the pull request</a>. I''ll also provide it here for convenience:</p>

<pre>
<code>
-    ^local = :ets.new(local, [:bag, :named_table, :public,
+    ^local = :ets.new(local, [:duplicate_bag, :named_table, :public,
</code>
</pre>

<p>Those 10 additional characters made the chart look like this:</p>

<div class="img"><img src="/images/posts/2m-sim-users-10-add.png"></div>

<p>Not only did it increase the number of concurrent connections. It also allowed us to increase the arrival rate 10x too. Which made subsequent tests much faster.</p>

<p>The difference between <code>bag</code> and <code>duplicate_bag</code> is that duplicate_bag will allow multiple entries for the same key. Since each socket can only connect once and have one pid, using a duplicate bag didn''t cause any issues for us.</p>

<p>This maxed out at around 450k connections. At this point the 16GB box was out of memory. We were now ready to really test the larger box.</p>

<div class="tweet"><blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">I called it quits too early on the channel bench’s, with an optimization by <a href="https://twitter.com/gabiz">@gabiz</a> , we have now maxed our 4core/15gb box @ 450k clients!</p>&mdash; Chris McCord (@chris_mccord) <a href="https://twitter.com/chris_mccord/status/658393399821795328">October 25, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></div>

<h5>WE NEED EVEN MORE MACHINES</h5>

<p>Justin Schneck (<a href="https://twitter.com/mobileoverlord" target="_blank">@mobileoverlord</a>) informed us on IRC that he and his company <a href="http://www.livehelpnow.net/" target="_blank">Live Help Now</a> would set up some additional servers on RackSpace for us to use. 45 additional servers to be precise.</p>

<p>We set up a few machines and set the threshold for Tsung to be 1 million connections. Which was a new milestone that was easily achieved by the 128GB machine:</p>

<div class="img"><img src="/images/posts/2m-sim-users-1m.png"></div>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">On a bigger <a href="https://twitter.com/Rackspace">@Rackspace</a> box we just 1 million phoenix channel clients on a single server! Quick screencast in action:<a href="https://t.co/ONQcVWWdy1">https://t.co/ONQcVWWdy1</a></p>&mdash; Chris McCord (@chris_mccord) <a href="https://twitter.com/chris_mccord/status/658767562231185408">October 26, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<p>By the time Justin finished setting up all 45 boxes we were convinced 2 million connections was possible. Unfortunately that wasn''t the case. There was a new bottleneck that only started appearing at 1.3 million connections!</p>

<div class="img"><img src="/images/posts/2m-sim-users-1-3m.png"></div>

<p>That was it. 1.3M connections is good enough, right? Wrong. At the same time we hit 1.3M subscribers, we started getting regular timeouts when asking to subscribe to the single pubsub server. We also notice a large increase in broadcast time, taking over 5s to broadcast to all subscribers.</p>

<p>Justin is interested in Internet of (useful) Things, and wanted to see if we could optimize broadcasts for 1.3+M subscribers since he sees real use cases at these levels. He had the idea to shard broadcasts by chunking the subscribers and parellizing the broadcast work. We trialed this idea and it reduced the broadcast time back down to 1-2s. But, we still had those pesky subscribe timeouts. We were at the limits of a single pubsub server and single ets table. So Chris started work to pool the pubsub servers, and we realized we could combine Justin''s broadcast sharding with a pool of pubsub servers and ets tables. So we sharded by subscriber pid into a pool of pubsub servers each managing their own ets table per shard. This let us to reach 2M subscribers without timeouts and maintain 1s broadcasts. The change is on <a href="https://github.com/phoenixframework/phoenix/compare/c114704...cm-local-pool" target="_blank">this commit</a> which is being refined before merging in to master.</p>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Final results from Phoenix channel benchmarks on 40core/128gb box. 2 million clients, limited by ulimit<a href="https://twitter.com/hashtag/elixirlang?src=hash">#elixirlang</a> <a href="https://t.co/6wRUIfFyKZ">pic.twitter.com/6wRUIfFyKZ</a></p>&mdash; Chris McCord (@chris_mccord) <a href="https://twitter.com/chris_mccord/status/659430661942550528">October 28, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<p>So there you have it. 2 million connections! Each time we thought there were no more optimizations to be made, another idea was pitched leading to a huge improvement in performance.</p>

<p>2 million is a figure we are pleased with. However, we did not quite max out the machine and we have not yet made any effort toward reducing the memory usage of each socket handler. In addition, there are more benchmarks we will be performing. This particular set of benchmarks was set exclusively around the number of simultaneous open sockets. A chat room with 2 million users is awesome, especially when the messages are broadcast so quickly. This is not a typical use case though. Here are some future benchmarking ideas:</p>

<ul>
<li>One channel with x users sending y messages</li>
<li>X channels with 1000 users sending y messages</li>
<li>Running the Phoenix application across multiple nodes</li>
<li>A simulation sending a random number of messages with users arriving and leaving randomly to behave like a real chat room</li>
</ul>

<p>The improvements discovered during this benchmark test will be made available in an upcoming release of Phoenix. Keep an eye out for information on future benchmark tests where Phoenix will continue to push the boundaries of the modern web.</p>', '2017-06-19 06:50:01.117311', '2017-06-25 17:33:34.509519', 'If you have been paying attention on Twitter recently, you have likely seen some increasing numbers regarding the number of simultaneous connections the Phoenix web framework can handle. This post documents some of the techniques used to perform the benchmarks', '2015-11-03', '/blog/the-road-to-2-million-websocket-connections');
INSERT INTO "posts_posts" VALUES (17, 'Upgrading from v0.12.0 to v0.13.0', 'Please see these instructions if you need to upgrade from Phoenix 0.12.0 to 0.13.0', '2017-06-25 06:05:00.224724', '2017-06-25 06:05:00.22473', 'Please see these instructions if you need to upgrade from Phoenix 0.12.0 to 0.13.0
', '2015-06-18', '/v0.12.0/blog/upgrading-from-v0120-to-v0130');
INSERT INTO "posts_posts" VALUES (5, 'Upgrading from 1.1.x to 1.2.0', NULL, '2017-06-21 16:12:48.931168', '2017-06-25 05:41:08.193434', 'Please see these instructions if you need to upgrade from Phoenix 1.1.x to 1.2.0', '2016-08-17', '/blog/upgrading-from-11x-to-120');
INSERT INTO "posts_posts" VALUES (4, 'Phoenix 0.10.0 released with assets handling, generators & more', 'We released Phoenix 0.10.0 this weekend and we''re really excited to
share the new features we''ve been working on. This release brings an
asset build system powered by brunch, live-reloading of
css/js/eex templates, form builders, and new Ecto integration with generators
that lets you get up and running quickly.

There''s so much good stuff packed into this release, that it deserved
a screencast so you can see it in action:', '2017-06-21 15:39:31.855391', '2017-06-25 05:41:45.608112', 'We released Phoenix 0.10.0 this weekend and we''re really excited to
share the new features we''ve been working on. This release brings an
asset build system powered by brunch, live-reloading of
css/js/eex templates, form builders, and new Ecto integration with generators
that lets you get up and running quickly.', '2015-03-09', '/v0.10.0/blog/phoenix-0100-released-with-assets-handling-generat');
INSERT INTO "posts_posts" VALUES (18, 'Upgrading from v0.11.0 to v0.12.0', 'Please see these instructions if you need to upgrade from Phoenix 0.11.0 to 0.12.0', '2017-06-25 06:06:30.116486', '2017-06-25 06:06:30.116492', 'Please see these instructions if you need to upgrade from Phoenix 0.11.0 to 0.12.0', '2015-06-18', '/v0.13.1/blog/upgrading-from-v0110-to-v0120');
INSERT INTO "posts_posts" VALUES (19, 'Upgrading from v0.10.0 to v0.11.0', 'Please follow these instructions if you need to upgrade from Phoenix 0.10.0 to 0.11.0', '2017-06-25 06:08:55.169357', '2017-06-25 06:08:55.169364', 'Please see these instructions if you need to upgrade from Phoenix 0.10.0 to 0.11.0', '2015-06-18', '/v0.12.0/blog/upgrading-from-v0100-to-v0110');
INSERT INTO "posts_posts" VALUES (20, 'Upgrading from v0.9.0 to v0.10.0', 'Please follow these instructions if you need to upgrade from Phoenix 0.9.0 to 0.10.0', '2017-06-25 06:10:18.883582', '2017-06-25 06:10:18.883588', 'Please see these instructions if you need to upgrade from Phoenix 0.9.0 to 0.10.0', '2015-06-18', '/v0.12.0/blog/upgrading-from-v090-to-v0100');
INSERT INTO "posts_posts" VALUES (21, 'Upgrading from v0.8.0 to v0.9.0', 'Please follow these instructions if you need to upgrade from Phoenix 0.8.0 to 0.9.0', '2017-06-25 06:11:25.119488', '2017-06-25 06:11:25.119494', 'Please see these instructions if you need to upgrade from Phoenix 0.8.0 to 0.9.0', '2015-06-18', '/v1.1.3/blog/upgrading-from-v080-to-v090');
COMMIT;

-- ----------------------------
-- Table structure for posts_tags
-- ----------------------------
DROP TABLE IF EXISTS "posts_tags";
CREATE TABLE "posts_tags" (
  "post_id" int4,
  "tag_id" int4,
  "inserted_at" timestamp(6),
  "updated_at" timestamp(6)
)
;
ALTER TABLE "posts_tags" OWNER TO "postgres";

-- ----------------------------
-- Records of posts_tags
-- ----------------------------
BEGIN;
INSERT INTO "posts_tags" VALUES (2, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (4, 2, NULL, NULL);
INSERT INTO "posts_tags" VALUES (2, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (4, 2, NULL, NULL);
INSERT INTO "posts_tags" VALUES (5, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (9, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (14, 2, NULL, NULL);
INSERT INTO "posts_tags" VALUES (15, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (5, 2, NULL, NULL);
INSERT INTO "posts_tags" VALUES (6, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (6, 2, NULL, NULL);
INSERT INTO "posts_tags" VALUES (1, 3, NULL, NULL);
INSERT INTO "posts_tags" VALUES (11, 4, NULL, NULL);
INSERT INTO "posts_tags" VALUES (11, 2, NULL, NULL);
INSERT INTO "posts_tags" VALUES (16, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (17, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (18, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (19, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (20, 1, NULL, NULL);
INSERT INTO "posts_tags" VALUES (21, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS "schema_migrations";
CREATE TABLE "schema_migrations" (
  "version" int8 NOT NULL,
  "inserted_at" timestamp(6)
)
;
ALTER TABLE "schema_migrations" OWNER TO "postgres";

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO "schema_migrations" VALUES (20170619063056, '2017-06-19 06:32:43.265597');
INSERT INTO "schema_migrations" VALUES (20170619063301, '2017-06-19 06:39:50.242135');
INSERT INTO "schema_migrations" VALUES (20170619024100, '2017-06-19 06:44:23.860057');
INSERT INTO "schema_migrations" VALUES (2017061912450, '2017-06-19 16:48:12.272804');
INSERT INTO "schema_migrations" VALUES (20170619124550, '2017-06-19 16:57:39.34443');
INSERT INTO "schema_migrations" VALUES (20170625045611, '2017-06-25 05:01:39.577541');
INSERT INTO "schema_migrations" VALUES (20170625052327, '2017-06-25 05:25:14.67819');
COMMIT;

-- ----------------------------
-- Table structure for tags_tags
-- ----------------------------
DROP TABLE IF EXISTS "tags_tags";
CREATE TABLE "tags_tags" (
  "id" int4 NOT NULL DEFAULT nextval('tags_tags_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "inserted_at" timestamp(6),
  "updated_at" timestamp(6)
)
;
ALTER TABLE "tags_tags" OWNER TO "postgres";

-- ----------------------------
-- Records of tags_tags
-- ----------------------------
BEGIN;
INSERT INTO "tags_tags" VALUES (1, 'Upgrading', '2017-06-19 06:50:25.087912', '2017-06-25 05:50:47.011983');
INSERT INTO "tags_tags" VALUES (2, 'Releases', '2017-06-19 06:50:32.27241', '2017-06-25 05:50:59.287033');
INSERT INTO "tags_tags" VALUES (3, 'Benchmarks', '2017-06-19 06:50:39.626355', '2017-06-25 05:52:11.596103');
INSERT INTO "tags_tags" VALUES (4, 'Presentations', '2017-06-21 04:23:55.471302', '2017-06-25 05:52:27.30794');
INSERT INTO "tags_tags" VALUES (507, 'Events', '2017-06-21 10:11:42.00497', '2017-06-25 05:52:36.976886');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "posts_posts_id_seq"
OWNED BY "posts_posts"."id";
SELECT setval('"posts_posts_id_seq"', 22, true);
ALTER SEQUENCE "tags_tags_id_seq"
OWNED BY "tags_tags"."id";
SELECT setval('"tags_tags_id_seq"', 510, true);

-- ----------------------------
-- Primary Key structure for table posts_posts
-- ----------------------------
ALTER TABLE "posts_posts" ADD CONSTRAINT "posts_posts_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table schema_migrations
-- ----------------------------
ALTER TABLE "schema_migrations" ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");

-- ----------------------------
-- Indexes structure for table tags_tags
-- ----------------------------
CREATE UNIQUE INDEX "tags_tags_name_index" ON "tags_tags" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tags_tags
-- ----------------------------
ALTER TABLE "tags_tags" ADD CONSTRAINT "tags_tags_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table posts_tags
-- ----------------------------
ALTER TABLE "posts_tags" ADD CONSTRAINT "posts_tags_post_id_fkey" FOREIGN KEY ("post_id") REFERENCES "public"."posts_posts" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "posts_tags" ADD CONSTRAINT "posts_tags_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags_tags" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
