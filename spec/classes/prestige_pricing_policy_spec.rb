require 'rails_helper'

RSpec.describe PrestigePricingPolicy, type: :model do
  describe "#margin" do
    it "returns the count of pubDate elements in the response" do
      policy = PrestigePricingPolicy.new
      allow(policy).to receive(:response).and_return(XML_TEST_DATA)
      expect(policy.margin).to eq(4)
    end
  end
end

XML_TEST_DATA =<<-EOF
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="/resources/xsl/"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Your Local Guardian | Rugby Union</title>
    <link>http://www.yourlocalguardian.co.uk/sport/rugby/</link>
    <description>Your Local Guardian /sport/rugby/</description>
    <language>en-gb</language>
    <pubDate>Wed, 30 Dec 2015 14:56:48 +0000</pubDate>
    <lastBuildDate>Wed, 30 Dec 2015 14:56:48 +0000</lastBuildDate>
    <docs>http://www.yourlocalguardian.co.uk/sport/rugby/rssterms/</docs>
    <generator>M6</generator>
    <managingEditor>nvincent@newsquest.co.uk (Nigel Vincent)</managingEditor>
    <webMaster>webmaster@digitalmedia.newsquest.co.uk (Tim Joy)</webMaster>
    <image>
        <url>http://www.yourlocalguardian.co.uk/resources/images/3702867/?type=rsslogo</url>
        <title>Your Local Guardian | Rugby Union</title>
        <link>http://www.yourlocalguardian.co.uk/sport/rugby/</link>
    </image>
    <atom:link href="http://www.yourlocalguardian.co.uk/sport/rugby/rss/" rel="self" type="application/rss+xml" />
<item>
           <title>PICTURE GALLERY: Harlequins dominate but cannot win at rugby HQ</title>

           <link>http://www.yourlocalguardian.co.uk/sport/rugby/14170489.PICTURE_GALLERY__Harlequins_dominate_but_cannot_win_at_rugby_HQ/?ref=rss</link>


           <description><![CDATA[
  Harlequins dominated the statistics at rugby HQ on Sunday, but the one that mattered proved beyond them as they drew 39-39 with Gloucester at Twickenham on Sunday.
]]></description>
           <pubDate>Mon, 28 Dec 2015 18:52:00 +0000</pubDate>
           <guid isPermaLink="false">759f88cb0109ac2f4a9893d189c3fc2f</guid>
    </item>


    <item>
           <title>Harlequins: Nobody gets stage fright for Big Game any more, says O'Shea</title>

           <link>http://www.yourlocalguardian.co.uk/sport/rugby/14150146.Harlequins__Nobody_gets_stage_fright_for_Big_Game_any_more__says_O_Shea/?ref=rss</link>


           <description><![CDATA[
  Director of rugby Conor O’Shea believes the club’s Christmas Big Game no longer gives them the edge it once did.
]]></description>
           <pubDate>Wed, 23 Dec 2015 03:40:00 +0000</pubDate>
           <guid isPermaLink="false">b68542bb97dc0ddc26e2861c55c76e5a</guid>
    </item>


    <item>
           <title>Richmond: Rob Kirby fails to put foot wrong as Richmond complete historic win at Rosslyn Park</title>

           <link>http://www.yourlocalguardian.co.uk/sport/rugby/14158053.Richmond__Rob_Kirby_fails_to_put_foot_wrong_as_Richmond_complete_historic_win_at_Rosslyn_Park/?ref=rss</link>


           <description><![CDATA[
  Richmond won at Rosslyn Park for the first time since 1995 to leave director of rugby Steve Hill's men top of the National Division One table at Christmas.
]]></description>
           <pubDate>Mon, 21 Dec 2015 00:42:29 +0000</pubDate>
           <guid isPermaLink="false">5ed8c3e6c402c98097a948eb8f98bd31</guid>
    < </channel>
</rss>/item>
EOF
