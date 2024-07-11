<ArticleHeader @article={{this.model}} />

I've spent some time in the past few months trying to block specific Infinity Pools without losing their core utility. This has been really great for me. It's not so much that I have increased my productivity--more importantly, I've reduced how often I regret how I spent time.

> Infinity Pools are endless sources of passive entertainment.

Their entire purpose is to capture your attention for as long as possible. This used to sell advertising to you or to sell your data as a product (usually to sell advertising you) or both.

But ultimately, they are time vampires.


## Identifying the Infinity Pools: YouTube, Reddit

Everyone's pools may be different. For me, it's been YouTube and Reddit.

Everyone's devices may be differ. For me, it was an issue on my Windows desktop, Mac laptop, Linux laptop, and Android phone.

So, I need to block:

- YouTube home (without blocking Subscriptions, Search Results, Videos, or Watch Later)
- Reddit home, subreddit feed (without blocking posts, custom feeds)

On the platforms:

- Windows
- Mac
- Linux
- Android


## Blocking the Bad Parts

Finding a tool that was cross-platform enough and precise enough was hard. Mobile blocking of just the Home tab on YouTube seemed unreasonably difficult, for example.

I tried various OS-level and browser-level tools. Here's what I ended up with.


### News Feed Eradicator

This browser extension ([firefox](https://addons.mozilla.org/en-US/firefox/addon/news-feed-eradicator/))([chrome](https://chromewebstore.google.com/detail/news-feed-eradicator/fjcldmjmjhkklehbacihaiopjklihlgg?pli=1)) does exactly what I'm looking for. It disables only the infinite recommendations/feed parts of a platform.

It supports:
- Facebook
- Instagram
- Twitter
- YouTube
- LinkedIn
- Reddit
- HackerNews
- Github

I only really needed it for YouTube, which is blocks really well. I especially like that I can still use the site navigation or search.

On the home page, you will see:

![screenshot of YouTube home page with no video results](/assets/news-feed-eradicator-blocked.png)


### uBlock Origin

I already use uBlock Origin ([firefox](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/))([chrome](https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)) for general ad blocking. It turns out that you can add custom rules to entirely block certain patterns of URLs, which is exactly what I want to do.

Because YouTube is handled well by News Feed Eradicator, I only needed rules for Reddit.

In the uBlock Origin extension's dashboard, in the "My filters" section, you can paste the following:

```
||reddit.com^|$all # block root
||reddit.com/?feed=home^|$all # block root
||reddit.com/r/all^$all # block /r/all
||reddit.com/r/popular^$all # block /r/popular
```

When this blocks a path, you will see:

![screenshot of uBlock Origin blocked page message](/assets/ublock-origin-blocked-path.png)


### Mobile Blocking

On my phone, I've not had Reddit for years. The only thing I needed to block on mobile was YouTube.

I couldn't find a great way to block only the home feed on YouTube mobile. So, I tried disabling YouTube entirely, which has been working out quite well.


## Results

With these blocks in place, I've been breaking the reflexive habbits I had. I'm less often reaching for these infinity pools--and when I do, I'm met with a clear block. 

Overall, as I said up top, I've been regretting how I spent my time far less. I highly recommend minimizing how long you spend in the infinity pools.
