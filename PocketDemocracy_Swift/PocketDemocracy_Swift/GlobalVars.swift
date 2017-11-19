//
//  GlobalVars.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/13/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation

struct GlobalVars {
    
//    static let taxActions: [Action] = [
//        [Action(title: "Call your local representative", duration: "30 Minutes", eventDescription: "Call your local representative to express your thoughts on this issue")]
//    ]
    static var action: [Action] = [
        Action(
            title: "Call your local representative",
            duration: "30 Minutes",
            eventDescription: "Call your local representative to express your thoughts on this issue"),
        Action(
            title: "Do a sick kick flip",
            duration: "Eternity",
            eventDescription: "Yes")
    ]
    
    static var newsArticles: [Article] = [
        // Taken from https://www.nytimes.com/2017/11/13/business/economy/corporate-tax.html?hp&action=click&pgtype=Homepage&clickSource=story-heading&module=first-column-region&region=top-news&WT.nav=top-news
        Article(
            title: "Haste on Tax Measures May Leave a Trail of Loopholes",
            author: " Patricia Cohen",
            source: "New York Times",
            cellImage: nil,
            detailedImage: nil,
            summary: "When moving a bill at breakneck speed, one law that cannot be repealed is the law of unintended consequences, as corporate tax provisions may prove.",
            body: "\"Slow down\" is the last thing that supporters of the Republicans\' proposed tax overhaul want to hear. \"My donors are basically saying get it done or don’t ever call me again,\" Chris Collins, a representative from New York, said last week.\n\nBut the rush to \"get it done\" — particularly on the business side, where the most sweeping changes are planned — is alarming tax specialists who warn that new and unforeseen complexity, loopholes and glitches could come back to haunt tax collectors and taxpayers.\n\n\"All of this is happening in an incredible rush, and frankly it’s absurd and incredibly poor governing to push a bill of this significance in the time frame they’re doing,\" said Stephen E. Shay, a senior lecturer at Harvard Law School who worked in the Treasury Department during the Reagan and Obama administrations.\n\nWith accountants, lawyers and lobbyists still poring over the varying versions of the bills released by the House of Representatives and the Senate, some of the loopholes and tax dodges spotted so far — whether unintended or not — include these:\n\n• A tax designed to prevent giant multinationals from shifting profits offshore also creates new opportunities for small and medium-sized firms to use tax havens to slice their tax rate in half.\n\n• A provision aimed at helping small business could turn into a windfall for wealthy investors who use it to lower their tax rate on rental and interest income.\n\n• An incentive to invest in slipshod, money-losing ventures would be created by the combination of a new proposal to immediate expense investments with the Senate’s suggested delay in the corporate tax cut.\n\n• Rules designed to prevent highly paid doctors, lawyers and other service providers from cashing in on new benefits aimed at small businesses can be easily circumvented.\n\nEven those who applaud the aim of reducing the corporate tax rate and transforming the way global profits are taxed worry that specific provisions will miss the mark.\n\nRepublican leaders, responding to political pressure to move quickly, defend the process, saying Congress has held dozens of hearings on tax reform in recent years.\n\nTax bills, by nature complex, are shaped by a galaxy of competing pressures. And withholding details until the final vote as a way of shielding the legislation from special interests is not a new strategy.\n\nYet several veterans of previous tax battles argue what is different this time is the mix of breakneck speed and enormous scope.\n\nConsider the plan’s shift from a worldwide system, where profits are taxed no matter where they are earned, to a territorial system, which exempts profits earned outside the United States, brings the American tax system in line with those in most other nations.\n\nBecause the switch could end up encouraging American companies to move even more profits offshore to avoid paying any domestic income tax, both the House and Senate versions of the bill impose rules to deter most multinationals with annual revenues of more than $100 million from exploiting such tactics.\n\nBut the effort to catch the giants under the new territorial system sets a financial bar that small and medium-sized businesses can limbo under. Mr. Shay said accounting firms were likely to start marketing off-the-shelf tax shelters allowing companies to set up foreign offices in low-tax countries like Bermuda or Luxembourg to shrink their tax bills.\n\n\"They’re just opening us up to the next round of tax shelters on the international side,\" he said. \"And the I.R.S., underfunded as it is, isn’t going to be able to check anything.\"\n\nAt the same time, he said, some safeguards aimed at multinationals could still be bypassed. To reduce their home tax bill, companies like Google and Pfizer, for instance, often relocate patents and copyrights in tax havens and then sell use of that intellectual property back to their American subsidiaries at eye-popping prices. These are the higher-than-normal profits — which Senate bill drafters have cunningly dubbed \"Gilti\" (for global intangible low-tax income) — that Republican bills are trying to stop from leaking out of tax system.\n\nMultinationals, though, could avoid some of the Gilti tax by shifting more tangible property like production and research facilities abroad.\n\nOther problems arise from the push to reduce the rate on pass-through businesses (sole proprietorships, partnerships and S corporations that currently pay taxes at the individual rate). Lawmakers have advertised the cut as relief for smaller businesses, but high-income investors in hedge and private-equity funds could use the provision to reduce the tax paid on rent and interest income by as much as a third.\n\nHedge-fund investors have an additional opportunity for a windfall with a simple reporting technique, said Steven M. Rosenthal, a senior fellow at the nonpartisan Tax Policy Center and former legislation counsel with Congress’s nonpartisan Joint Committee on Taxation. The funds’ decision to mark their trading positions at their market price (instead of their initial purchase price) would enable any gains to qualify for pass-through treatment at the newly reduced rate of 25 percent instead of being treated as short-term capital gains, at a top rate that nears 40 percent.\n\nThe pass-through changes present other tax dodges. Benefits for pass-throughs that provide services — like doctors, lawyers and accountants — are supposed to be phased out for individuals with incomes above $75,000 and for married couples with income above $150,000. But a firm could skirt that limit by creating multiple partnerships with different functions, with one providing services, and the other handling, say, licensing or leasing, said Dan Shaviro, a professor of taxation at New York University Law School who helped write the 1986 tax overhaul.\n\n\"There is not a single advantage this has, except for students of people like me, who will get paid more to figure out how to game the system,\" he said.\n\nIndividual proposals that might make sense on their own can also set off unintended consequences when paired together. Although the Senate plan to wait until 2019 to cut the corporate tax rate to 20 percent from 35 percent has infuriated some shareholders, it saves money so that Congress can reach its budget goals. Some tax experts go further and argue that any cut should be phased in over a 10 year period to smooth out investment and reduce windfall gains.\n\nYet enacting a 20 percent corporate tax rate to take effect one year in advance while allowing investors to immediately deduct their expenses at 35 percent operates like a subsidy, and could encourage investing in money-losing projects simply for a tax gain.\n\n\"That could lead to silly stuff where you have a loss before the tax, but a gain after the tax,\" Mr. Shaviro said.\n\n(He offered an example for the mathematically inclined. Normally no one would invest $100 to earn only $90 back. But under the Senate plan where some business expenses could be immediately deducted at a 35 percent rate, you would get $35 back in 2018. So your actual cost is $65. By the time your $90 earnings are paid in 2019, though, the tax rate would be 20 percent. That would cost you $18 in taxes, and leave $72 in your wallet. So even though your investment lost $10, you are still coming out ahead: with $72 on a net investment of $65.)\n\nOther experts pointed to constantly shifting cost estimates of proposals that suddenly gained or lost tens of billions of dollars overnight.\n\nAt the end of 10 years, the very safeguards that are supposed to prevent international tax avoidance actually lose money, according to the Joint Committee’s revenue estimates of the House bill, said Kimberly Clausing, an economist at Reed College. \"This is a big giveaway in future years,\" she said. \"On net, the whole system is ineffective.\"\n\nThe shortcomings are fixable to some degree, critics say, but the Republican strategy of pushing through a bill without Democratic votes before the end of the year — on tax rules that take effect a few weeks later — will not leave sufficient time.\n\nTo some supporters, though, that’s the price of success.\n\n\"Will they find things that need to be fixed afterwards because the process was moving so fast? Yes,\" said Rachelle Bernstein, vice president and tax counsel at the National Retail Federation, which represents big chains like Macy’s and Saks Fifth Avenue.\n\nBut there are always technical corrections to tax bills after they pass, Ms. Bernstein said, and retailers have been waiting so long for a corporate rate cut that they don’t mind if it finally happens with an imperfect bill.\n\n\"It’s part of how the sausage is made, but it’s better to make this sausage than cut it off,\" Ms. Bernstein said.",
            timeStamp: Date(),
            actions: [
                Action(title: "Call your local representative", duration: "30 Minutes", eventDescription: "Call your local representative to express your thoughts on this issue", issues: ["Environment", "Business"]),
                Action(title: "Donate to the Sierra Club", duration: "10 Minutes", eventDescription: "Proin quis dolor sapien. Quisque malesuada nibh non ante egestas egestas. Phasellus fringilla nibh volutpat sagittis cursus.", issues: ["Environment", "Business"])
            ],
            issues: ["Environment", "Business"]
            
        ),
        Article(
            title: "Pollution Levels on the Rise",
            author: "Austin Prince",
            source: "CNN",
            cellImage: nil,
            detailedImage: nil,
            summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus turpis augue, interdum sit amet tempus nec, gravida vitae ipsum. In diam ipsum, convallis vel ligula vel, dignissim sagittis libero. Nulla.",
            body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sollicitudin quis purus et fringilla. Fusce tempus lectus sapien, vitae euismod enim aliquet ac. Sed eget lacus eget sem aliquam auctor ut in nulla. Aenean aliquam vehicula purus, aliquet pulvinar arcu egestas sed. Proin quis dolor sapien. Quisque malesuada nibh non ante egestas egestas. Phasellus fringilla nibh volutpat sagittis cursus.\n\nAenean aliquet augue vel felis dapibus, ut consequat nulla eleifend. Ut a diam condimentum, tempor risus id, tincidunt justo. Fusce hendrerit ex sed nulla tincidunt dictum. Sed porttitor, felis sit amet congue semper, tortor orci ultrices enim, nec scelerisque ex nulla et lectus. Aliquam pretium ac odio et vestibulum. Praesent ullamcorper, leo pharetra dapibus eleifend, nisl magna facilisis risus, sed vestibulum libero quam eget augue. Aliquam posuere finibus justo, et vestibulum nisi scelerisque id. Vivamus a ex vitae ligula sollicitudin eleifend nec sollicitudin magna. Cras hendrerit urna convallis tempus vehicula. Vestibulum non ante leo. Mauris eu porttitor risus. Morbi ac mollis ligula, ut aliquet eros. Duis sodales, quam vitae tempor tincidunt, enim metus volutpat nunc, in porta nunc elit in sapien. Praesent cursus justo id erat scelerisque vulputate. Vestibulum ultrices, ipsum ac imperdiet dignissim, dui elit mollis elit, non tempor arcu nisl sed mauris.\n\nSed posuere, urna ut ornare facilisis, tortor velit volutpat felis, a mattis orci mauris vel odio. Vestibulum tincidunt facilisis tellus id semper. Etiam facilisis tempor enim quis faucibus. Curabitur non sem vel erat euismod sagittis eget a felis. Duis sit amet est nec nibh tempor mattis. Curabitur sem felis, luctus et vehicula at, tincidunt ac nulla. Nunc fermentum nulla et nulla tempor, bibendum sagittis mi vehicula. In vitae lacus eleifend, pellentesque erat sit amet, posuere nisl. Pellentesque ac luctus ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam mattis lectus a quam fringilla, et accumsan nulla ultrices. Cras ut vestibulum ante, at malesuada lorem. Phasellus sollicitudin porta tellus eu commodo. Praesent at enim sed est rutrum dapibus.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed accumsan dignissim tincidunt. Curabitur eget lorem vitae nulla aliquam convallis. Aenean sit amet nisi id nibh faucibus pulvinar sit amet nec purus. Integer ac nisl in dui luctus efficitur. Quisque viverra commodo arcu sit amet euismod. Maecenas vestibulum dui vel massa tincidunt venenatis. Cras et sodales arcu, non placerat tellus. Nam diam est, ullamcorper id dignissim quis, imperdiet non ante. Fusce condimentum eleifend neque et lacinia. In in vulputate est.\n\nQuisque consequat risus ac odio pellentesque mattis. Phasellus a lorem porta, ultrices mauris sed, finibus neque. Nullam malesuada risus quis hendrerit auctor. Nulla lacus orci, semper vel nulla quis, bibendum varius eros. Ut dignissim nisi bibendum nunc iaculis iaculis. Mauris nec turpis facilisis, molestie orci vel, commodo diam. Mauris convallis dolor eget nisl pharetra blandit. Morbi quis vestibulum ipsum. Mauris dignissim odio in malesuada porttitor. Donec quis accumsan turpis. Suspendisse ac nulla semper, dignissim nulla mollis, pharetra velit. Sed sed sagittis lorem, sit amet viverra odio. Curabitur luctus auctor faucibus. Suspendisse auctor elit aliquam nunc pharetra, quis pretium dui gravida. Sed vel dolor in odio pretium gravida.",
            timeStamp: Date(),
            actions: [
                Action(title: "Volunteer at a local shelter", duration: "3 Hours", eventDescription: "Nullam malesuada risus quis hendrerit auctor. Nulla lacus orci, semper vel nulla quis, bibendum varius eros. Ut dignissim nisi bibendum nunc iaculis iaculis. Mauris nec turpis facilisis, molestie orci vel, commodo diam. Mauris convallis dolor eget nisl pharetra blandit. Morbi quis vestibulum ipsum. Mauris dignissim odio in malesuada porttitor. Donec quis accumsan turpis. Suspendisse ac nulla semper, dignissim nulla mollis, pharetra velit.", issues: ["Politics", "Social Justice"]),
                Action(title: "Donate to a foundation", duration: "20 Minutes", eventDescription: "Vivamus a ex vitae ligula sollicitudin eleifend nec sollicitudin magna. Cras hendrerit urna convallis tempus vehicula. Vestibulum non ante leo. Mauris eu porttitor risus. Morbi ac mollis ligula, ut aliquet eros.", issues: ["Politics", "Social Justice"])
            ],
            issues: ["Politics", "Social Justice"]
        )
    ]
    
    static var users: [User] = [
        User(username: "zach", password: "123"),
        User(username: "Lucas Scott", password: "test", interests: ["Basketball", "Soccer", "Chad Michael Murray"], sources: ["New York Times", "Washington Post"], profPicString: "lucas.jpg", organization: "One Tree Hill", actions:[ Action(title: "Call your local representative", duration: "30 Minutes", eventDescription: "Call your local representative to express your thoughts on this issue"), Action(title: "Go see Marshmallo", duration: "3 hours", eventDescription: "Go to a rave")]),
        User(username: "test", password: "test")]
    
    static var currentUser: User?
    
    static var interests: [String] = [
        "Environment",
        "Business",
        "Politics",
        "Technology",
        "Social Justice"
    ]
    
    static var sources: [String] = [
        "New York Times",
        "CNN",
        "Fox News",
        "Washington Post",
        "Wall Street Journal"
    ]
    
    static var searchActions: [Action] = [
        Action(title: "Volunteer at a local shelter", duration: "3 Hours", eventDescription: "Nullam malesuada risus quis hendrerit auctor. Nulla lacus orci, semper vel nulla quis, bibendum varius eros. Ut dignissim nisi bibendum nunc iaculis iaculis. Mauris nec turpis facilisis, molestie orci vel, commodo diam. Mauris convallis dolor eget nisl pharetra blandit. Morbi quis vestibulum ipsum. Mauris dignissim odio in malesuada porttitor. Donec quis accumsan turpis. Suspendisse ac nulla semper, dignissim nulla mollis, pharetra velit.", issues: ["Politics", "Social Justice"]),
        Action(title: "Donate to a foundation", duration: "20 Minutes", eventDescription: "Vivamus a ex vitae ligula sollicitudin eleifend nec sollicitudin magna. Cras hendrerit urna convallis tempus vehicula. Vestibulum non ante leo. Mauris eu porttitor risus. Morbi ac mollis ligula, ut aliquet eros.", issues: ["Politics", "Social Justice"]),
        Action(title: "Call your local representative", duration: "30 Minutes", eventDescription: "Call your local representative to express your thoughts on this issue", issues: ["Environment", "Business"])
    ]
    
//    let d = Date()
//    let x = "http://www.apple.com/euro/ios/ios8/a/generic/images/og.png"
//    let a = Article(title: "Hailing in St. Louis", author: "Zach Polsky", source: "New York Times", cellImage: fetchImage(path: x), detailedImage: nil, summary: "It's hailing when it's 74 degrees. Crazy, right?", body: "It hailed a lot on Sunday, but it eventually stopped", timeStamp: d)
//    let b = Article(title: "Rainbow Bright News is Cool", author: "Austin Prince", source: "CNN", cellImage: nil, detailedImage: nil, summary: "Zela likes rainbow-bright-land styling", body: "Something something ok", timeStamp: d)
}
