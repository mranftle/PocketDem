//
//  GlobalVars.swift
//  PocketDemocracy_Swift
//
//  Created by Zach Polsky on 11/13/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import Foundation
import UIKit

struct GlobalVars {
    
    static var searchActions: [Action] = [
        Action(
            title: "Volunteer at a local shelter",
            duration: "3 Hours",
            eventDescription: "Volunteer at a shelter in your local area to help out.",
            issues: ["Social Justice", "Business"]
        ),
        Action(
            title: "Risk taking workshop",
            duration: "2 Hours",
            eventDescription: "The details on this event are now correct. We hope you can join us on 11/11 from 9:30-12:30! Please understand we have limited capacity based on the space and the number of facilitators.\n\nJoin ARC\'s Mass Movement working group for an exploration of risk taking in organizing. Specifically, we will focus on our relative risk as white activists in direct action organizing. How do we understand our own level of risk? What is our willingness to take risks? How do we strengthen our ability to take risks through practice?\n\nThere will be something for everyone, if you are new to organizing, we particularly welcome you to this space. And it's an opportunity to meet other people and build community! Please RSVP at the link in the \"tickets\" section - it\'s totally free!",
            issues: ["Social Justice"]
        ),
        Action(
            title: "Donate to a foundation",
            duration: "20 Minutes",
            eventDescription: "Research a foundation you're interested in helping out and send a donation to further their mission.",
            issues: ["Social Justice", "Business", "Environment"]
        ),
        Action(
            title: "Call your local representative",
            duration: "30 Minutes",
            eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
            issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
        ),
        Action(
            title: "Taking on Racism: From Charlottesville to the Stockley Verdict",
            duration: "2 Hours",
            eventDescription: "White Supremacy has been discussed nationally and locally from the Charlottesville protests to the St. Louis Jason Stockley protests. This workshop will provide a \"brave space\" where white folks can support and challenge each other to better understand white privilege and institutional racism.",
            issues: ["Social Justice", "Politics"]
        ),
        Action(
            title: "Create a petition",
            duration: "5 Hours",
            eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
            issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
        ),
        Action(
            title: "Attend the St. Louis cityhall meeting",
            duration: "2 Hours",
            eventDescription: "Join the St. Louis biweekly cityhall meeting this Friday and let your opinions be heard as local representatives discuss some the major proposals in the St. Louis community, such as the recent soda-tax bill and a recent proposal for tax breaks for local businesses.",
            issues: ["Politics", "Business"]
        ),
        Action(
            title: "Do independent research on an issue",
            duration: "2 Hours",
            eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
            issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
        ),
        Action(
            title: "Community-building potluck",
            duration: "1 Hour",
            eventDescription: "Instead of our regular mass movement meeting the first Wednesday of the month, ARC is holding a community building potluck for folks who have been involved in recent actions and who are looking to be more connected. Meet a new friend, deepen your commitment, and depending on what's happening later on, we\'ll join people in the streets after we eat!",
            issues: ["Social Justice"]
        )
    ]

    static var newsArticles: [Article] = [
        // Taken from https://www.nytimes.com/2017/11/13/business/economy/corporate-tax.html?hp&action=click&pgtype=Homepage&clickSource=story-heading&module=first-column-region&region=top-news&WT.nav=top-news
        Article(
            title: "Haste on Tax Measures May Leave a Trail of Loopholes",
            author: "Patricia Cohen",
            source: "New York Times",
            cellImage: nil,
            detailedImage: UIImage(named: "taxes.jpg"),
            summary: "When moving a bill at breakneck speed, one law that cannot be repealed is the law of unintended consequences, as corporate tax provisions may prove.",
            body: "\"Slow down\" is the last thing that supporters of the Republicans\' proposed tax overhaul want to hear. \"My donors are basically saying get it done or don’t ever call me again,\" Chris Collins, a representative from New York, said last week.\n\nBut the rush to \"get it done\" — particularly on the business side, where the most sweeping changes are planned — is alarming tax specialists who warn that new and unforeseen complexity, loopholes and glitches could come back to haunt tax collectors and taxpayers.\n\n\"All of this is happening in an incredible rush, and frankly it’s absurd and incredibly poor governing to push a bill of this significance in the time frame they’re doing,\" said Stephen E. Shay, a senior lecturer at Harvard Law School who worked in the Treasury Department during the Reagan and Obama administrations.\n\nWith accountants, lawyers and lobbyists still poring over the varying versions of the bills released by the House of Representatives and the Senate, some of the loopholes and tax dodges spotted so far — whether unintended or not — include these:\n\n• A tax designed to prevent giant multinationals from shifting profits offshore also creates new opportunities for small and medium-sized firms to use tax havens to slice their tax rate in half.\n\n• A provision aimed at helping small business could turn into a windfall for wealthy investors who use it to lower their tax rate on rental and interest income.\n\n• An incentive to invest in slipshod, money-losing ventures would be created by the combination of a new proposal to immediate expense investments with the Senate’s suggested delay in the corporate tax cut.\n\n• Rules designed to prevent highly paid doctors, lawyers and other service providers from cashing in on new benefits aimed at small businesses can be easily circumvented.\n\nEven those who applaud the aim of reducing the corporate tax rate and transforming the way global profits are taxed worry that specific provisions will miss the mark.\n\nRepublican leaders, responding to political pressure to move quickly, defend the process, saying Congress has held dozens of hearings on tax reform in recent years.\n\nTax bills, by nature complex, are shaped by a galaxy of competing pressures. And withholding details until the final vote as a way of shielding the legislation from special interests is not a new strategy.\n\nYet several veterans of previous tax battles argue what is different this time is the mix of breakneck speed and enormous scope.\n\nConsider the plan’s shift from a worldwide system, where profits are taxed no matter where they are earned, to a territorial system, which exempts profits earned outside the United States, brings the American tax system in line with those in most other nations.\n\nBecause the switch could end up encouraging American companies to move even more profits offshore to avoid paying any domestic income tax, both the House and Senate versions of the bill impose rules to deter most multinationals with annual revenues of more than $100 million from exploiting such tactics.\n\nBut the effort to catch the giants under the new territorial system sets a financial bar that small and medium-sized businesses can limbo under. Mr. Shay said accounting firms were likely to start marketing off-the-shelf tax shelters allowing companies to set up foreign offices in low-tax countries like Bermuda or Luxembourg to shrink their tax bills.\n\n\"They’re just opening us up to the next round of tax shelters on the international side,\" he said. \"And the I.R.S., underfunded as it is, isn’t going to be able to check anything.\"\n\nAt the same time, he said, some safeguards aimed at multinationals could still be bypassed. To reduce their home tax bill, companies like Google and Pfizer, for instance, often relocate patents and copyrights in tax havens and then sell use of that intellectual property back to their American subsidiaries at eye-popping prices. These are the higher-than-normal profits — which Senate bill drafters have cunningly dubbed \"Gilti\" (for global intangible low-tax income) — that Republican bills are trying to stop from leaking out of tax system.\n\nMultinationals, though, could avoid some of the Gilti tax by shifting more tangible property like production and research facilities abroad.\n\nOther problems arise from the push to reduce the rate on pass-through businesses (sole proprietorships, partnerships and S corporations that currently pay taxes at the individual rate). Lawmakers have advertised the cut as relief for smaller businesses, but high-income investors in hedge and private-equity funds could use the provision to reduce the tax paid on rent and interest income by as much as a third.\n\nHedge-fund investors have an additional opportunity for a windfall with a simple reporting technique, said Steven M. Rosenthal, a senior fellow at the nonpartisan Tax Policy Center and former legislation counsel with Congress’s nonpartisan Joint Committee on Taxation. The funds’ decision to mark their trading positions at their market price (instead of their initial purchase price) would enable any gains to qualify for pass-through treatment at the newly reduced rate of 25 percent instead of being treated as short-term capital gains, at a top rate that nears 40 percent.\n\nThe pass-through changes present other tax dodges. Benefits for pass-throughs that provide services — like doctors, lawyers and accountants — are supposed to be phased out for individuals with incomes above $75,000 and for married couples with income above $150,000. But a firm could skirt that limit by creating multiple partnerships with different functions, with one providing services, and the other handling, say, licensing or leasing, said Dan Shaviro, a professor of taxation at New York University Law School who helped write the 1986 tax overhaul.\n\n\"There is not a single advantage this has, except for students of people like me, who will get paid more to figure out how to game the system,\" he said.\n\nIndividual proposals that might make sense on their own can also set off unintended consequences when paired together. Although the Senate plan to wait until 2019 to cut the corporate tax rate to 20 percent from 35 percent has infuriated some shareholders, it saves money so that Congress can reach its budget goals. Some tax experts go further and argue that any cut should be phased in over a 10 year period to smooth out investment and reduce windfall gains.\n\nYet enacting a 20 percent corporate tax rate to take effect one year in advance while allowing investors to immediately deduct their expenses at 35 percent operates like a subsidy, and could encourage investing in money-losing projects simply for a tax gain.\n\n\"That could lead to silly stuff where you have a loss before the tax, but a gain after the tax,\" Mr. Shaviro said.\n\n(He offered an example for the mathematically inclined. Normally no one would invest $100 to earn only $90 back. But under the Senate plan where some business expenses could be immediately deducted at a 35 percent rate, you would get $35 back in 2018. So your actual cost is $65. By the time your $90 earnings are paid in 2019, though, the tax rate would be 20 percent. That would cost you $18 in taxes, and leave $72 in your wallet. So even though your investment lost $10, you are still coming out ahead: with $72 on a net investment of $65.)\n\nOther experts pointed to constantly shifting cost estimates of proposals that suddenly gained or lost tens of billions of dollars overnight.\n\nAt the end of 10 years, the very safeguards that are supposed to prevent international tax avoidance actually lose money, according to the Joint Committee’s revenue estimates of the House bill, said Kimberly Clausing, an economist at Reed College. \"This is a big giveaway in future years,\" she said. \"On net, the whole system is ineffective.\"\n\nThe shortcomings are fixable to some degree, critics say, but the Republican strategy of pushing through a bill without Democratic votes before the end of the year — on tax rules that take effect a few weeks later — will not leave sufficient time.\n\nTo some supporters, though, that’s the price of success.\n\n\"Will they find things that need to be fixed afterwards because the process was moving so fast? Yes,\" said Rachelle Bernstein, vice president and tax counsel at the National Retail Federation, which represents big chains like Macy’s and Saks Fifth Avenue.\n\nBut there are always technical corrections to tax bills after they pass, Ms. Bernstein said, and retailers have been waiting so long for a corporate rate cut that they don’t mind if it finally happens with an imperfect bill.\n\n\"It’s part of how the sausage is made, but it’s better to make this sausage than cut it off,\" Ms. Bernstein said.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Politics", "Business"]
        ),

        // Taken from http://www.independent.co.uk/news/world/asia/china-labour-activists-missing-investigating-ivanka-trump-shoe-factory-huajian-police-detention-a7764361.html
        Article(
            title: "China Labour Activists Missing Investigating Ivanka Trump Shoe Factory",
            author: "Simon Denyer",
            source: "The Independent",
            cellImage: nil,
            detailedImage: UIImage(named: "ivanka_trump.jpg"),
            summary: "Concerns grow for operatives probing working conditions at Huajian facility manufacturing footwear for President\'s daughter\'s fashion line", body: "A labour activist researching working conditions in a Chinese factory that makes shoes for Ivanka Trump's label has been detained by police, according to his wife and a labour advocacy group, while two others have gone missing and are presumed also to have been detained. The three activists were investigating labour conditions at Huajian shoe factories for China Labor Watch, a New York-based non-profit organisation that aims to defend workers' rights. Huajian has previously said it has been making shoes for the US President's daughter for nearly a decade, accounting for one-third of her shoes made in China but only a small proportion of its total output. But China Labor Watch said its investigation in working practices at Huajian factories has apparently been closed down by local police. The three activists were placed under investigation and told they were not allowed to leave China back in April, said Li Qiang, CLW's founder - something, he said, was relatively common. Factory used by Ivanka Trump’s brand accused of violating labour laws. But they now all appear to have been detained, he said, something he said was very rare. \"This never happened before in my 17 years' experience, this is the first time,\" he said. \"The only reason we think this case is different is that this is Ivanka Trump's factory.\"White House spokeswoman Hope Hicks referred questions to Ivanka Trump's company, which declined to comment. Huajian did not immediately respond. Marc Fisher Footwear, which manufactures Ivanka Trump shoes but does not own these facilities, said: \"We were unaware of the allegations, this arrest and will look into them immediately.\" Activists Hua Haifeng and Li Zhao had been investigating reports that the Huajian factories in Ganzhou city in Jiangxi province used student labor, while a third activist, Su Heng, was working undercover inside the factory, CLW's Li said. Hua's wife Deng Guilian said she had not spoken to her husband since Sunday. But she said she had received a phone call from the Public Security Bureau in Ganzhou on Monday saying he had been detained on suspicion of \"illegal monitoring.\" Police declined to give further details, she said. Li said Hua had been accused of using \"eavesdropping equipment.\" The other two activists are also unreachable, he said. China Labor Watch has carried out frequent investigations into labor violations in Chinese factories making anything from Disney toys to Apple iPhones. In May it issued an interim report on working conditions at Huajian's factories, citing long hours and low pay among others issues. The group said it had written a letter to the first daughter detailing the allegations in late April, but had yet to receive a reply. In that report, it alleged that employees are forced to work at least 12½ hours a day and at least six days a week - at a monthly salary of about 2,500 yuan ($365). It said pay for some workers amounted to the equivalent of less than a dollar an hour. Li said his investigators had documented long working days, the longest stretching 18 hours from 7.10am to 1.30am next day. In January, Liu Shiyuan, then spokesman for the Huajian Group, told the Associated Press the company makes 10,000 to 20,000 pairs of shoes a year for Ivanka Trump's brand - a fraction of the 20 million pairs the company produces a year. This is not the first time looking into Huajian's work for Ivanka Trump has reportedly led to problems for Chinese citizens. Last year, a team from the French news agency Agence France-Presse was given access to another Huaijian factory in the southern city of Dongguan. But the resulting coverage and photographs, some of which showed workers on assembly lines and living in dark dormitory buildings, apparently did not please the company's management. As a result, China's Global Times newspaper reported, some workers involved in the reporting and shooting of images had been fired. The Global Times blamed \"misreporting\" by Western media out to malign the reputation of the Trump family, and quoted the factory chairman as confirming the sackings, adding he preferred not to be identified by name. But a man who described himself as the head of public relations at the factory, but also did not give his name, emerged from the factory on a recent day to deny that anyone had been fired. The Global Times report also cited staff from two factories in Guangdong as saying that their companies had received a memo from Ivanka Trump's China-based agent shortly after the US department store Nordstrom dropped her products in February, notifying them that any media reports on her suppliers in China would not be good for her image due to political reasons.Hua's wife Deng said she believed her husband's job was \"helpful and meaningful to society.\" \"If he is sentenced for this, I can't accept it, I can't accept it's justice,\" she said by phone from her home in the central province of Hubei. She said she had not told her two young children, ages seven and three, who still think their father is working away from home. \"They always ask to video chat with their father. I have to say to them, 'Your father is very busy,' and tell them, 'He will talk to you when he's not busy.'\"",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Business"]
        ),
        // Taken from https://www.washingtonpost.com/news/the-switch/wp/2017/11/16/the-fcc-just-repealed-decades-old-rules-blocking-broadcast-media-mergers/?utm_term=.27900c62597f
        Article(
            title: "The FCC just repealed a 42-year-old rule blocking broadcast media mergers",
            author: "Brian Fung",
            source: "Washington Post",
            cellImage: nil,
            detailedImage: UIImage(named: "ajit_pai.jpg"),
            summary: "Federal regulators rolled back decades-old rules on Thursday, making it far easier for media outlets to be bought and sold.",
            body: "Federal regulators rolled back decades-old rules on Thursday, making it far easier for media outlets to be bought and sold — potentially leading to more newspapers, radio stations and television broadcasters being owned by a handful of companies.\n\nThe regulations, eliminated in a 3-to-2 vote by the Federal Communications Commission, were first put in place in the 1970s to ensure that a diversity of voices and opinions could be heard on the air or in print. But now those rules represent a threat to small outlets that are struggling to survive in a vastly different media world, according to FCC Chairman Ajit Pai. With the rise of blogs, websites and podcasts, Pai said, traditional media outlets now face more competition than ever — and rules that once enforced a diversity of viewpoints are no longer needed. \n\n\"Few of the FCC's rules are staler than our broadcast ownership regulations,\" Pai said. By eliminating them, he said, \"this agency finally drags its broadcast ownership rules to the digital age.\"\n\nOne long-standing rule repealed Thursday prevented one company in a given media market from owning both a daily newspaper and a TV station. Another rule blocked TV stations in the same market from merging with each other if the combination would leave fewer than eight independently owned stations. The agency also took aim at rules restricting the number of TV and radio stations that any media company could simultaneously own in a single market. \n\nA major beneficiary of the deregulatory moves, analysts say, is Sinclair, a conservative broadcasting company that is seeking to buy up Tribune Media for $3.9 billion.\n\n\"This has a huge impact,\" said Andrew Schwartzman, an expert on media law at Georgetown University. He added that the decisions will \"reduce or eliminate\" the need for Sinclair to sell off many stations to receive regulatory approval for the deal.\n\nThe FCC vote is the latest to ease regulations for the broadcast industry. It came the same day that the agency approved the deployment of Next Gen TV, a new broadcast standard that is ultimately expected to lead to improved audio and video quality on over-the-air television, as well as targeted advertising. And it came one month after the FCC voted to no longer require broadcasters to operate a physical studio in the markets where they are licensed.\n\nThe National Association of Broadcasters welcomed Thursday's vote.\n\n\"These rules are not only irrational in today’s media environment, but they have also weakened the newspaper industry, cost journalism jobs and forced local broadcast stations onto unequal footing with our national pay-TV and radio competitors,\" the trade group said in a statement.\n\nCritics of the FCC repeal effort say that the decision will lead to the concentration of power in the hands of a dwindling number of media titans.\n\n\"Instead of engaging in thoughtful reform,\" said Democratic FCC Commissioner Jessica Rosenworcel, \"this agency sets its most basic values on fire. \"As a result of this decision, wherever you live, the FCC is giving the green light for a single company to own the newspaper and multiple television and radio stations in your community. I am hard pressed to see any commitment to diversity, localism, or competition in that result.\" Senate Democrats this week called on the FCC's inspector general to launch a probe of the agency, over concerns that its impartiality with respect to Sinclair had been \"tainted.\" \"This merger would never have been possible without a series of actions to overturn decades-long, settled legal precedent by Chairman Pai,\" Sen. Maria Cantwell (D-Wash.) and 14 other lawmakers wrote in a letter. The letter added that Pai has \"signaled his clear receptiveness to approving the Sinclair-Tribune transaction and in fact paved the way for its consummation.\" The FCC didn't immediately respond to a request for comment. Sinclair declined to comment. In his remarks Thursday, Pai said it was \"utter nonsense\" that his agency's decisions on media ownership would lead to a company dominating local media markets by buying up newspapers and radio stations. \"It will open the door to pro-competitive combinations that will strengthen local voices,\" he said, and \"better serve local communities.\"",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Business", "Politics"]
        ),

        // Taken from https://www.washingtonpost.com/news/energy-environment/wp/2017/11/17/head-of-puerto-ricos-electric-utility-resigns-amid-questions-about-slow-repairs-in-hurricanes-wake/?utm_term=.153022484110
        Article(
            title: "Head of Puerto Rico’s electric utility resigns amid questions about slow repairs in hurricane’s wake",
            author: "Steven Mufson and Arelis R. Hernández",
            source: "Washington Post",
            cellImage: nil,
            detailedImage: UIImage(named: "puerto_rico.jpg"),
            summary: "The majority of Puerto Rico is still without power. Governor Rossello says his \"main focus is to restore the energy grid.\"",
            body: "The executive director of the Puerto Rico Electric Power Authority resigned Friday amid questions about the slow repairs more than eight weeks after Hurricane Maria destroyed much of the electrical grid. \n\nPREPA head Ricardo Ramos Rodríguez had come under close questioning about a $300 million contract the utility signed with the tiny Whitefish Energy firm instead of turning to larger, more experienced networks of utilities that traditionally rush to aid storm-ravaged areas. The Whitefish Energy contract, whose rates were substantially higher than those paid to others, was later canceled. \n\nPuerto Rico Gov. Ricardo Rosselló announced the resignation, saying Ramos’s tenure in office had become \"unsustainable.\" \n\n\"The executive director is a professional. He has worked hard to restore the system in Puerto Rico but understands that this is a context that has greatly distracted from what could be recovery,\" Rosselló told reporters. \n\nThe governor said that he was recommending that the PREPA board of directors name Justo González, a career employee who began his career with the authority in 1989, as interim director. During the news conference, the governor expressed frustration with the pace of power restoration to Puerto Rican households and businesses.\n\n\"We have faced a number of obstacles,\" Rosselló said. \"But I expect an effective transition.\" \n\nIn recent weeks, Ramos had defended his decisions, saying that Whitefish had volunteered its services and had experience in rugged terrain like that in much of the commonwealth.\n\nThe ability of PREPA to manage money and contracts has also drawn attention from Congress, which is worried about how billions of dollars of recovery money might be handled.\n\nHours before tendering his resignation, Ramos appeared in a video on the PREPA Facebook page, explaining the cause of two major power outages this week that plunged large swaths of the San Juan metropolitan area back into darkness. The system has suffered a series of outages and weather challenges that have delayed the restoration of transmission and distribution lines\n\nRamos also came under scrutiny after news outlet El Vocero reported that, during the post-hurricane emergency, Ramos had hired his friend Pedro Juan Morales-González, a lawyer and engineer. Rosselló said that contract would also be canceled.\n\nAccording to the local newspaper, El Vocero, Ramos hired the law firm of his friend Morales-González to work for PREPA. Morales-González’s name came up in the charging documents in the 2011 public corruption case of a former Puerto Rico senator alleging he sold a judicial seat. Morales-González was not charged with corruption. \n\nAs the governor became aware of all this Friday morning, he ordered an investigation and canceled PREPA’s contract with the Morales-González law firm.\n\nRamos addressed the newspaper’s story in the Facebook video saying that \"absolutely nothing was done outside the law\" with regards to the $100,000 legal services contract. He said the agency solicited bids to retain local law firms to assist with legal matters that may result from the employee layoffs at PREPA. The firm has not been paid a cent, Ramos said.\n\nThe disarray at the top of PREPA dealt a new blow to Puerto Ricans, more than half of whom remain without electricity. The storm damage has imposed costly repair burdens on a utility that was already struggling with more than $9 billion in debt, poor service and sky-high rates more than twice the national average.\n\nEven before it was hit by hurricanes Irma and Maria, PREPA said it needed more than $4 billion to overhaul its outdated power plants and reduce its heavy reliance on imported oil.\n\nBut the hurricanes have exposed transmission problems, too. PREPA has 2,478 miles of transmission lines from its power plants and 31,485 miles of distribution lines, which carry electricity shorter distances from the grid to customers.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Volunteer at a local shelter",
                    duration: "3 Hours",
                    eventDescription: "Volunteer at a shelter in your local area to help out.",
                    issues: ["Social Justice", "Business"]
                ),
                Action(
                    title: "Donate to a foundation",
                    duration: "20 Minutes",
                    eventDescription: "Research a foundation you're interested in helping out and send a donation to further their mission.",
                    issues: ["Social Justice", "Business", "Environment"]
                ),
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Politics", "Business", "Environment", "Technology"]
        ),

        // Taken from http://www.foxnews.com/lifestyle/2017/11/16/toxic-smog-forces-couple-to-wear-masks-for-engagement-photos.html
        Article(
            title: "Toxic smog forces couple to wear masks for engagement photos",
            author: "Kevin Macy",
            source: "Fox News",
            cellImage: nil,
            detailedImage: UIImage(named: "gb.png"),
            summary: "As the worst toxic smog of the year enshrouds New Delhi, India (it\'s 75 times over the World Health Organization’s safety level), schools have been temporarily shuttered, industrial activity paused, and flights canceled, amongst other emergency measures.",
            body: "As the worst toxic smog of the year enshrouds New Delhi, India (it\'s 75 times over the World Health Organization’s safety level), schools have been temporarily shuttered, industrial activity paused, and flights canceled, amongst other emergency measures. \n\nOne local sector affected by poisonous air that has gone overlooked, however, is the art community. \n\nTo make a statement, photographer Ashish Pareek of Banjara Studios held a classic, cosmopolitan engagement photoshoot for a real-life couple in New Delhi, with one stipulation: They don breathing masks for the images. Parek told Yahoo Lifestyle he felt obligated as both an artist and a citizen to use photography to bring attention to the severity of the situation. \n\n\"The buzz or the alarm regarding pollution is raised only when the situation worsens; otherwise, no one talks about it,\" he said. Further, the clearly hazy photos were in no way retouched: The smog in the northern Indian territory is exactly as bad as it looks, Parek said. \n\n\"Usually we do lots of post-processing in our photos, but here I tried to keep them as natural as they are. I have not increased the highlights or clarity to look hazier,\" he added.\n\nWith the toxic smog cited as \"truly a health emergency\" by Indian officials, one expert said that emergency hospital admissions have leapt by 20 percent as of late as people suffer heart and lung complications from the poor air quality. \n\nAs a photographer, Parek says he’s well aware that these are not the kind of photos that newlyweds-to-be desire, but it’s likely that they are even more outraged with the current environmental emergency, too.", timeStamp: Date(),
            actions: [
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Environment"]
        ),
        // Taken from https://www.theguardian.com/media/2017/nov/10/data-firm-that-worked-for-trump-asked-wikileaks-to-share-hacked-emails
        Article(
            title: "Data firm that worked for Trump asked WikiLeaks to share hacked emails",
            author: "Julian Borger",
            source: "The Guardian ",
            cellImage: nil,
            detailedImage: UIImage(named: "wikileaks.jpg"),
            summary: "Cambridge Analytica executive confirms firm asked Assange to share hacked emails related to Clinton – reportedly around time it started working for Trump",
            body: "The chief executive of Cambridge Analytica has confirmed that the UK data research firm contacted Julian Assange to ask WikiLeaks to share hacked emails related to Hillary Clinton at about the time it started working for the Trump campaign in summer 2016. \n\nSpeaking at a digital conference in Lisbon, Alexander Nix said he had read a newspaper report about WikiLeaks’ threat to publish a trove of hacked Democratic party emails, and said he asked his aides to approach Assange in early June 2016 to ask \"if he might share that information with us\", according to remarks published by the Wall Street Journal. \n\nAssange, WikiLeaks’s founder, has already acknowledged the approach by Cambridge Analytica and said WikiLeaks rejected the request. In Lisbon, Nix reportedly agreed that the overture had been rebuffed. \n\n\"We received a message back from them that he didn’t want to and wasn’t able to, and that was the end of the story,\" Nix said at the Web Summit conference, according to the WSJ. He called the exchange \"very benign\". \n\nHowever, the contacts between Cambridge Analytica and WikiLeaks are of interest to investigators looking into possible collusion between the Trump campaign and the Kremlin. The documents published by WikiLeaks in the summer of 2016 were later determined by US intelligence agencies to have been stolen by hackers working for Russian intelligence. \n\nAccording to the Journal, citing emails and unnamed sources, Cambridge Analytica had sent employees to the Trump digital campaign headquarters and was in the process of finalising a contract with the campaign in early June of last year, apparently around the time Nix said he made the approach to Assange. It is not suggested that Cambridge Analytica made the approach at the Trump campaign’s request. The Guardian has contacted Cambridge Analytica for comment. \n\nRepresentative Adam Schiff, the ranking Democrat on the House intelligence committee looking into possible Trump-Moscow collusion has said the committee had a \"deep interest\" in the relationship between Cambridge Analytica and WikiLeaks. \n\nIn an interview at the Web Summit, Nix rejected any suggestion of collusion with Russia. \n\n\"We did not work with Russia in this election, and moreover we would never work with a third-party state actor in another country’s campaign,\" he said.\n\nRobert Mercer, a Trump mega-donor, and his daughter, Rebekah, are major investors in Cambridge Analytica and Steve Bannon was a vice-president of the company before joining the Trump campaign and becoming the president’s chief strategist in the White House.\n\nCambridge Analytica’s website promises to help clients gain advantage over political opponents with its data analysts of US voter behaviour. It claims to hold up to 5,000 pieces of data on more than 230 million voters, to build a \"psychographic\" profile of targeted voters.\n\nThe company was hired to become part of the digital campaign, which was overseen by Trump’s son-in-law, Jared Kushner, and was paid $5.9m, according to the Federal Election Commission.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Politics", "Technology"]
        ),
        
        // Taken from https://www.huffingtonpost.com/entry/state-bail-system-grades_us_59f78f90e4b0aec1467a2708?utm_hp_ref=social-issues
        Article(
            title: "Report Grades Bail Systems Across The U.S., And Only One State Gets An A",
            author: "Nick Wing",
            source: "Huffington Post",
            cellImage: nil,
            detailedImage: UIImage(named: "prison.jpg"),
            summary: "As activists and lawmakers make strides in overhauling controversial money bail practices around the nation, a new report is helping the public to understand what successful reform looks like.",
            body: "As activists and lawmakers make strides in overhauling controversial money bail practices around the nation, a new report is helping the public to understand what successful reform looks like. \n\nThe nonprofit Pretrial Justice Institute released its first state scorecard on Wednesday, grading all 50 states on their pretrial justice practices. The report issues a letter grade for each state based on its pretrial detention rate, its use of pretrial risk assessment and its reliance on payment as a condition for release before trial. \n\n\"We wanted to be able to take stock today and also have something to measure it by on an annual basis,\" said Cherise Fanno Burdeen, CEO of the Pretrial Justice Institute. \"Things are changing so quickly out in the field in terms of policy examination and potential change.\" \n\nDespite recent progress on pretrial justice reform, the nation as a whole gets a D grade, and only New Jersey gets an A. \n\nNew Jersey’s 2014 bail reform law went into effect at the beginning of the year, largely eliminating the old monetary bail system. Pretrial services agencies now conduct individualized assessments based on a defendant’s flight risk and potential threat to community safety, and provide courts with release recommendations. Under the new system, money bail is used only as a last resort. The number of people awaiting trial in New Jersey jails dropped by 15 percent over the first six months of the year, and by more than one-third between mid-2015 and mid-2017. \n\n\"Crime is actually down 14 percent this year in New Jersey, with a 7 percent drop in violent crime,\" said Burdeen. \"We’re not saying those are correlated; I’m simply saying there’s also no correlation between pretrial release of appropriate people and some skyrocketing crime rate in New Jersey. \n\nThe number of people awaiting trial in New Jersey jails dropped by 15 percent over the first six months of the year, and by more than one-third between mid-2015 and mid-2017. \n\nAcross the U.S., many states and jurisdictions still rely on money bail, meaning most defendants ― including those facing only low-level charges ― must pay to get out of jail before trial. \n\nThose who can’t afford bail can be stuck in jail for weeks, months or longer just because they’re poor. Others turn to commercial bail bond agencies to secure their release. These businesses charge a nonrefundable service fee, usually 10 percent of the total bail amount, which means defendants or their friends and families can be left paying hefty fees, even if the charges are dropped or if the defendant is never found guilty of a crime. \n\nThese practices contribute substantially to the U.S. problem of mass incarceration. There are nearly 450,000 people who have not been convicted of a crime in jails across the country. They make up nearly two-thirds of the jail population, and about 20 percent of the overall incarcerated population. Locking these people up costs U.S. taxpayers approximately $38 million every day, or $14 billion annually, according to a Pretrial Justice Institute report published earlier this year. \n\nCritics of money bail say it perpetuates an unconstitutional, two-tiered system of pretrial justice. It allows wealthy people to buy their freedom without any consideration of their flight risk or threat to safety, while poorer people are left to languish behind bars before any determination of guilt. Many poorer defendants choose to plead guilty just to get out of jail, regardless of whether they actually committed a crime.\n\nA number of states and jurisdictions have begun to reform their bail practices in recent years. A series of high-profile lawsuits have accelerated progress at the local level, successfully challenging so-called \"wealth-based pretrial detention\" and forcing judicial officers to reduce their reliance on money bail. Statewide legislative action to change bail practices is currently underway in California, Alaska and Connecticut. Other state court systems are exploring voluntary changes as well. \n\nAlthough the Pretrial Justice Institute gives poor grades to the majority of states, Burdeen says the report does carry some good news. One-quarter of people in the U.S. now live in jurisdictions that use evidence-based pretrial assessments to determine release, for example. And many state and local reforms are in the process of being implemented, which means their results may not show up in the data for another year or two. \n\nFor the failing states, Burdeen said the purpose of the scorecard isn’t to shame, but rather to emphasize the urgent need for action. \n\n\"The fact that a state has a D or and F means that there are people living in those states under broken systems,\" said Burdeen. \"Those are real people who are sleeping in those jails tonight. We’d like to see these really bad grades start some much-needed discussions in those jurisdictions.\"",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Business", "Social Justice"]
        ),
    
        // Taken from https://www.huffingtonpost.com/entry/kids-parents-in-prison-arkansas-voices_us_5995fb5ae4b01f6e801d36f5?utm_hp_ref=social-issues
        Article(
            title: "This Woman Helps Kids With Incarcerated Parents Feel Less Alone",
            author: "Eleanor Goldberg",
            source: "Huffington Post",
            cellImage: nil,
            detailedImage: UIImage(named: "women.jpg"),
            summary: "\"The program showed me I wasn’t the only person who had a parent who was in prison.\"",
            body: "When Dee Ann Newell began teaching parenting courses to mothers behind bars nearly 30 years ago, she kept hearing the same request: Please check on our kids. \n\n\"Our children, they’re just barely hanging on,\" Newell remembers the women saying. \n\nWhen she visited those kids, what she found were families \"in great distress ― financially, emotionally and in so many other ways.\" Newell launched Arkansas Voices for the Children Left Behind in 1994. \n\nOver the years, she said, the nonprofit has offered some 38,000 vulnerable kids the comfort, support and opportunities they wouldn’t otherwise have had. But the funding hasn’t kept up with the need. \n\nToday, Arkansas has the fastest growing prison population in the United States. Many of these inmates are parents, including single parents, and they have left about 70,000 children growing up without a mom or dad. \n\nChildren whose parents are behind bars struggle with feelings of isolation and shame. They’re at greater risk of developing depression, anxiety, and behavioral issues. \n\n\"You’re grieving someone who’s not dead, but for all intents and purposes, they’re not there,\" said Newell. \"There’s a lot of trauma.\" \n\nArkansas Voices matches the children up with mentors and works closely with schools to keep the kids from falling behind. Poor grades and higher dropout rates are an ongoing problem. The fact that African-Americans are overrepresented in Arkansas’ prison population may even contribute to racial gaps in academic performance. To combat those feelings of isolation, Arkansas Voices brings the children together with other kids dealing with the same issues. \n\n\"The program showed me I wasn’t the only person who had a parent who was in prison,\" said Alexis Beavers, now 23. \"For a while, I thought I was the only person.\" \n\nThe group also helps children maintain relationships with their imprisoned parents. It offers parenting classes to those incarcerated moms and dads. It runs support groups for grandparents, who are often left to care for the kids. And it works with families on the re-entry process if and when parents return home. \n\nNewell, who serves as executive director of Arkansas Voices, actively recruits for her programs. She visits schools and flat-out advertises that she’s looking to aid children who have a parent in prison. She said she also tries to hire people who themselves have been affected by incarceration and can truly understand the needs of the clients. \n\nShe has helped at least 10 similar groups get off the ground, Newell said. She meets with their founders and shares her experience in running programs, finding staff and reaching out to children. \n\nBeavers was one of those kids who got help from Arkansas Voices when she most needed it. Her mother was sent to prison when Beavers was 4 years old and is currently serving a life sentence for capital murder and aggravated robbery in relation to two restaurant robberies ― although Beavers believes the charges were unfair. \n\nRaised by her grandparents, Beavers experienced the textbook consequences of having an incarcerated parent. She was quiet and anxious about socializing. She felt like people expected her to amount to nothing because of her mother’s record. She worried about other kids teasing her and she often claimed her mother was in the military to explain away her absence. \n\nAt the root of it all was a deep fear that no one else could understand what she was going through. \n\n\"People have these judgments about me,\" Beavers said. \n\nStrangers often gush about how sorry they feel for her when they hear her mother’s story, she said. But when she tells new acquaintances how much she loves art or travel, she said she’s often met with disbelief. People wonder aloud how somebody with a parent in prison could possibly have such interests. \n\nIt was Arkansas Voices that opened up her world when Beavers’ grandparents couldn’t afford to. She was 6 years old when she first got involved with the group. The guidance and activities that Arkansas Voices provided, as well as the regular visits with her mom it arranged, worked to ease the girl’s anxiety. \n\n\"It helped me not be so angry at the world,\" Beavers said. \"Growing up without a parent, you are angry. You see other people with their parents and think, ‘I wish I had that.’\" \"[Newell] gave us options,\" Beavers said. \"She showed us a different life outside of the life that we were living.\" \n\nArkansas Voices has even helped to ease the trauma associated with visiting a parent in prison. Beavers, who said she now sees her mother about twice a month and talks with her on the phone once a week, has distinct memories as a child of going through metal detectors to spend a few hours in a dreary, colorless room with no games. \n\nThese days, the nonprofit organizes \"family days\" at prisons, when kids and parents can get together in a designated room, eat pizza and sing songs. It’s a vast improvement over trying to bond in a stark room where children aren’t allowed to get up from their chairs, Newell said. \n\nArkansas Voices still helps children across the state visit their parents in various prisons. Due to funding cuts, however, it has a smaller reach than it once did. At its height, the nonprofit had 10 locations around the state. Now it has just one, in Little Rock.\n\nNewell has managed to run a lean operation ― her home serves as the organization’s headquarters ― but she’s gravely concerned about money, she said. In the past, the group received significant funding from the U.S. Department of Health and Human Services, she said, but that has declined over the years and all but disappeared under the Trump administration. (HHS did not respond to HuffPost’s request for comment.) \n\nNewell remains optimistic about her nonprofit’s future though. She’s looking to the children she once supported to help carry on the mission. \n\nBeavers, who currently works as a cashier at a local hospital, is one of those budding leaders. She mentors other kids now and hopes to resume her studies at college soon. She wants to continue working with children forced to grow up with a parent in prison and to change the stigmatization they face. \n\n\"I wish people would understand I am not my parent. I’m not my mom, even though she didn’t commit a crime. I’m not her,\" Beavers said. \"I wish that people would just give me a chance.\"",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Volunteer at a local shelter",
                    duration: "3 Hours",
                    eventDescription: "Volunteer at a shelter in your local area to help out.",
                    issues: ["Social Justice", "Business"]
                ),
                Action(
                    title: "Donate to a foundation",
                    duration: "20 Minutes",
                    eventDescription: "Research a foundation you're interested in helping out and send a donation to further their mission.",
                    issues: ["Social Justice", "Business", "Environment"]
                )
            ],
            issues: ["Social Justice"]
        ),
        Article(
            title: "FCC WANTS TO KILL NET NEUTRALITY. CONGRESS WILL PAY THE PRICE",
            author: "Ryan Singel",
            source: "Wired",
            cellImage: nil,
            detailedImage: UIImage(named: "ajit_pai.jpg"),
            summary: "FCC Chair Ajit Pai\'s plan to repeal net neutrality provisions and reclassify broadband providers from \"common carriers\" to \"information services\" is an unprecedented giveaway to big broadband providers and a danger to the internet.",
            body: "FCC Chair Ajit Pai\'s plan to repeal net neutrality provisions and reclassify broadband providers from \"common carriers\" to \"information services\" is an unprecedented giveaway to big broadband providers and a danger to the internet. The move would mean the FCC would have almost no oversight authority over broadband providers like Comcast, Verizon, and AT&T.\n\nFor years, those broadband providers have used lawsuits and agency filings to fight FCC oversight and overturn its authority to prevent net neutrality abuses. But never in those companies\' most feverish dreams did they expect an FCC chair would propose to demolish all net neutrality protections and allow ISPs to extract tolls from every business in the country.\n\nEven industry analysts who expected the reclassification of broadband providers from Title II common carriers to Title I information services were stunned. Following Pai\'s announcement, independent cable analyst Craig Moffett sent out an email to investors entitled \"Shock and Awe and Net Neutrality,\" writing, \"We\'ve known since the election that the FCC would reverse Title II. But we never expected this. Yesterday’s FCC Draft Order on Net Neutrality went much further than we ever could've imagined in not only reversing Title II, but in dismantling virtually all of the important tenets of net neutrality itself.\"\n\nIf Congress allows Pai’s plan to pass, all that will be left of FCC oversight of broadband providers is a weak disclosure requirement: If Verizon, for example, wants to block content, charge sites to be viewable on its network, or create paid fast lanes, the company will simply have to tell its subscribers in their contract’s fine print. (Broadband providers won’t have to disclose, and the FCC won’t have control over, the sneakier ways they\'ve found to mess with the internet.)\n\nEnforcement will be left to the Federal Trade Commission, an agency that\'s never enforced open internet rules and has no ability to formulate its own. The FTC won\'t even be able to protect consumers against most net neutrality violations after the fact, and nor will it be able to protect consumers against greedy broadband providers.\n\nNon-mainstream media news sources across the political spectrum would no longer be able to afford to compete in the marketplace of ideas. Even churches that now reach their members online with streaming sermons, video libraries, and online video chats, would no longer be protected from blocking or access fees.\n\nAnd while the FCC held multiple public hearings with participation from experts during previous net neutrality actions in 2008, 2010, and 2015, this time around, Pai didn\'t hold a single one.\n\nThe only crisis looming is the one that Pai\'s plan will create for entrepreneurs, free markets, free speech, and for Republican members of Congress running for re-election who didn’t make the choice to stop Pai when they had the chance.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Political", "Technology"]
        ),
        Article(
            title: "Meghan Markle engagement to Prince Harry exposes \'quiet\' racism",
            author: "Saphora Smith",
            source: "NBC News",
            cellImage: nil,
            detailedImage: UIImage(named: "markle.jpg"),
            summary: "LONDON — Disparaging reactions to Prince Harry\'s relationship with actress Meghan Markle have highlighted the racism and class snobbery that persist in British society.",
            body: "LONDON — Disparaging reactions to Prince Harry's relationship with actress Meghan Markle have highlighted the racism and class snobbery that persist in British society.\n\nThe American will become the first person who identifies as biracial to join the upper echelons of the U.K.\'s royal family when she marries Harry in May.\n\nBut some black women said coverage of the Los Angeles native\'s roots by some media outlets is indicative of the underlying racism that they experience daily.\n\n\"I feel like racism in the U.K. is pretty insidious,\" said Paula Akpan, a co-founder of Black Girl Festival which celebrates black British women. She added racism tended to be \"not as openly acknowledged\" as in the U.S.\n\nFollowing the royal engagement, The Daily Mail publicized one of its stories with a tweet reading \"from slaves to royalty, Meghan Markle’s upwardly mobile family.\" Last year, the newspaper suggested that Markle was \"(almost) straight outta Compton.\"\n\nJournalist Rachel Johnson, the sister of British Foreign Secretary Boris Johnson, last year wrote in The Mail on Sunday newspaper that Markle could help bring \"rich and exotic DNA\" to the royal family. She also described Markle\'s mother as \"a dreadlocked African-American lady from the wrong side of the tracks.\"\n\nThe Spectator magazine this week questioned the \"Suits\" star\'s suitability for Prince Harry because she is divorced and attended a Catholic school.\n\n\"Obviously, 70 years ago, Meghan Markle would have been the kind of woman the prince would have had for a mistress, not a wife,\" a comment piece read.\n\nHarry last year took the highly unusual step of asking the media to stop the \"wave of abuse and harassment\" against Markle.\n\n\"You’re always setting up yourself for a bit of fall when you put expectations on one person of color, or woman of color, and expect them to be the redemption you’ve be waiting for,\" Akpan said.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Risk taking workshop",
                    duration: "2 Hours",
                    eventDescription: "The details on this event are now correct. We hope you can join us on 11/11 from 9:30-12:30! Please understand we have limited capacity based on the space and the number of facilitators.\n\nJoin ARC\'s Mass Movement working group for an exploration of risk taking in organizing. Specifically, we will focus on our relative risk as white activists in direct action organizing. How do we understand our own level of risk? What is our willingness to take risks? How do we strengthen our ability to take risks through practice?\n\nThere will be something for everyone, if you are new to organizing, we particularly welcome you to this space. And it's an opportunity to meet other people and build community! Please RSVP at the link in the \"tickets\" section - it\'s totally free!"
                ),
                Action(
                    title: "Taking on Racism: From Charlottesville to the Stockley Verdict",
                    duration: "2 Hours",
                    eventDescription: "White Supremacy has been discussed nationally and locally from the Charlottesville protests to the St. Louis Jason Stockley protests. This workshop will provide a \"brave space\" where white folks can support and challenge each other to better understand white privilege and institutional racism."
                ),
                Action(
                    title: "Community-building potluck",
                    duration: "1 Hour",
                    eventDescription:"Instead of our regular mass movement meeting the first Wednesday of the month, ARC is holding a community building potluck for folks who have been involved in recent actions and who are looking to be more connected. Meet a new friend, deepen your commitment, and depending on what's happening later on, we\'ll join people in the streets after we eat!"
                )
            ],
            issues: ["Political", "Social Justice"]
        ),
        Article(
            title: "Radio station employees fired over racist comments about high school basketball players",
            author: "Jack Fredson",
            source: "Fox News",
            cellImage: nil,
            detailedImage: UIImage(named: "basketball.jpg"),
            summary: "FOREST CITY, Iowa – Controversial commentary from two radio employees at a high school basketball game in northern Iowa has resulted in their firing after an outcry on social media.",
            body: "FOREST CITY, Iowa – Controversial commentary from two radio employees at a high school basketball game in northern Iowa has resulted in their firing after an outcry on social media.\n\nA video clip from a boys basketball game between Forest City High School and Eagle Grove High School was posted to Facebook Sunday night. It contains racist comments by an announcer and a producer. The clip is from a longer online broadcast of the Nov. 28th game, with audio provided by KIOW-FM in Forest City.\n\nThe exchange in the clip is between Orin Harris and a producer. Harris is a longtime announcer for Forest City Athletics, according to KIMT.\n\nThe two make several comments about the ethnicities of some of the Eagle Grove players, discussing the \"Espanol people in Eagle Grove.\"\n\nHarris also says, \"As (President) Trump would say, go back where they came from.\"\n\n",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Combating Anti-Muslim Oppression: Understand it. Resist it.",
                    duration: "2 Hours",
                    eventDescription: "Every day, we hear how Muslims are targeted unfairly by government, media, individuals -- stereotyped as terrorists, banned even if they have legal visas, victimized by hate crimes. Please join the St. Louis Anti-Racist Collective (ARC), Palestine Solidarity Committee (PSC)"
                ),
                Action(
                    title: "Campaign Planning Meeting",
                    duration: "1 Hour",
                    eventDescription: "This campaign is aimed at engaging white folks in dismantling white supremacy in both institutions and ourselves. Everyone is of course welcome but disclaimer that this will be a space largely populated by white folks and by no means do we expect people of color to do our work for us."
                ),
                Action(
                    title: "Engaging Other White People in Racial Justice: A Workshop",
                    duration: "1 Hour",
                    eventDescription: "More white people showing up racial justice can help to build and strengthen a multiracial movement. Workshop attendees will learn concrete ways to engage other white people in racial justice. Through storytelling and role plays based on real challenges in the trenches, participants will leave understanding how to grow the base of white people for racial justice in their local organizing. This workshop will be led by Dara Silverman, the National Director for Showing Up for Racial Justice (SURJ)."
                )
            ],
            issues: ["Political", "Business", "Social Justice"]
        ),
        // Taken from https://www.nytimes.com/2017/12/04/opinion/gay-marriage-cake-case.html
        Article(
            title: "How Not to Advance Gay Marriage",
            author: "David Brooks",
            source: "New York Times",
            cellImage: nil,
            detailedImage: UIImage(named: "rainbowFlag.jpg"),
            summary: "Five years ago, Charlie Craig and David Mullins walked into a bakery in a strip mall in Lakewood, Colo., to ask about a cake for their wedding. The baker, Jack Phillips, replied: \"I\'ll make you birthday cakes, shower cakes, cookies, brownies. I just can\'t make a cake for a same-sex wedding.\"",
            body: "Five years ago, Charlie Craig and David Mullins walked into a bakery in a strip mall in Lakewood, Colo., to ask about a cake for their wedding. The baker, Jack Phillips, replied: \"I\'ll make you birthday cakes, shower cakes, cookies, brownies. I just can\'t make a cake for a same-sex wedding.\"\n\nAs Adam Liptak of The Times reported, Phillips is a Christian and believes that the Bible teaches that marriage is between a man and a woman. Phillips is not trying to restrict gay marriage or gay rights; he\'s simply asking not to be forced to take part.\n\nCraig and Mullins were understandably upset. As Mullins told Liptak, \"We were mortified and just felt degraded.\" Nobody likes to be refused service just because of who they essentially are. In a just society people are not discriminated against because of their sexual orientation.\n\nAt this point, Craig and Mullins had two possible courses of action, the neighborly and the legal.\n\nThe neighborly course would have been to use this situation as a community-building moment. That means understanding the concrete circumstance they were in.\n\nFirst, it\'s just a cake. It\'s not like they were being denied a home or a job, or a wedding. A cake looks good in magazines, but it\'s not an important thing in a marriage. Second, Phillips\'s opinion is not a strange opinion. Barack Obama was elected president arguing that a marriage was between a man and a woman. Most good-hearted Americans believed this until a few years ago. Third, the tide of opinion is quickly swinging in favor of gay marriage. Its advocates have every cause to feel confident, patient and secure.\n\nGiven that context, the neighborly approach would be to say: \"Fine, we won\'t compel you to do something you believe violates your sacred principles. But we would like to hire you to bake other cakes for us. We would like to invite you into our home for dinner and bake with you, so you can see our marital love, and so we can understand your values. You still may not agree with us, after all this, but at least we\'ll understand each other better and we can live more fully in our community.\"\n\nThe legal course, by contrast, was to take the problem out of the neighborhood and throw it into the court system. The legal course has some advantages. You can use state power, ultimately the barrel of a gun, to compel people to do what you think is right. There are clearly many cases in which the legal course is the right response (Brown v. Board of Education).\n\nBut the legal course has some disadvantages. It is inherently adversarial. It takes what could be a conversation and turns it into a confrontation. It is dehumanizing. It ends persuasion and relies on the threat of state coercion. It is elitist. It takes a situation that could be addressed concretely on the ground and throws it up, as this one now has been, to the Supreme Court, where it will be decided by a group of Harvard and Yale law grads.\n\nMost important, it is abstract. The situation between Phillips and Craig and Mullins was a highly specific event involving three persons. But the state doesn’t see particularity and it doesn\'t think personalistically. The state seeks to create uniform, universal law. So the legal process simplifies, depersonalizes and abstracts. This case, which goes to oral argument on Tuesday, is now revolving around an arbitrary argument over whether baking is more like an expressive profession like being an artist or a commercial profession like being a limo driver.\n\nThe situation of Phillips, Craig and Mullins could be captured in a fine novel. But the legal system turns it into an arcane debate over how many angels can dance on the head of a pin.\n\nThis is modern America, so of course Craig and Mullins took the legal route. If you want to know why we have such a polarized, angry and bitter society, one reason is we take every disagreement that could be addressed in conversation and community and we turn it into a lawsuit. We take every morally supple situation and we hand it over to the legal priesthood, which by necessity is a system of technocratic rationalism, strained slippery-slope analogies and implied coercion.\n\nLegal conflict is a clumsy tool to manage the holy messiness of actual pluralistic community. The legal system does not deal well with local and practical knowledge, the wisdom to know when a rule should be applied and when it should be bent. It does not do well with humility, tolerance and patience — virtues that are hard to put into a rule and can be achieved only in a specific situation. It inevitably generates angry reactions and populist uprisings.\n\nReaders of this column know that I fervently support gay marriage, but I don\'t think bakers like Jack Phillips are best brought along by the iron fist of the state. I don\'t think the fabric of this country will be repaired through the angry confrontation of lawyers. In this specific situation, the complex art of neighborliness is our best way forward.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Risk taking workshop",
                    duration: "2 Hours",
                    eventDescription: "The details on this event are now correct. We hope you can join us on 11/11 from 9:30-12:30! Please understand we have limited capacity based on the space and the number of facilitators.\n\nJoin ARC\'s Mass Movement working group for an exploration of risk taking in organizing. Specifically, we will focus on our relative risk as white activists in direct action organizing. How do we understand our own level of risk? What is our willingness to take risks? How do we strengthen our ability to take risks through practice?\n\nThere will be something for everyone, if you are new to organizing, we particularly welcome you to this space. And it's an opportunity to meet other people and build community! Please RSVP at the link in the \"tickets\" section - it\'s totally free!"
                ),
                Action(
                    title: "Taking on Racism: From Charlottesville to the Stockley Verdict",
                    duration: "2 Hours",
                    eventDescription: "White Supremacy has been discussed nationally and locally from the Charlottesville protests to the St. Louis Jason Stockley protests. This workshop will provide a \"brave space\" where white folks can support and challenge each other to better understand white privilege and institutional racism."
                ),
                Action(
                    title: "Community-building potluck",
                    duration: "1 Hour",
                    eventDescription:"Instead of our regular mass movement meeting the first Wednesday of the month, ARC is holding a community building potluck for folks who have been involved in recent actions and who are looking to be more connected. Meet a new friend, deepen your commitment, and depending on what's happening later on, we\'ll join people in the streets after we eat!"
                )
            ],
            issues: ["Social Justice", "Politics"]
        ),
        Article(
            title: "Apple agrees to pay $15.4 billion in back taxes to Ireland — even though the Irish don’t want it",
            author: "Alyssa Newcomb",
            source: "NBC News",
            cellImage: nil,
            detailedImage: UIImage(named: "tim_cook.jpg"),
            summary: "Apple has agreed to dip into its multibillion-dollar cash pile to pay Ireland $15.4 billion in back taxes — a ruling CEO Tim Cook has called \"total political crap.\"\n\n",
            body: "Apple has agreed to dip into its multibillion-dollar cash pile to pay Ireland $15.4 billion in back taxes — a ruling CEO Tim Cook has called \"total political crap.\"\n\nHere\'s the catch — Ireland doesn\'t want Apple\'s money; the European Commission is forcing the Emerald Isle to collect it. The funds will go into an escrow account while Ireland appeals the decision and will be released after the General Court of the European Union makes the final call, according to a statement from the Irish Finance Ministry.\n\nApple was slapped with the record-setting tax bill last year after a multi-year investigation by the Brussels-based European Commission determined Apple had benefited from unfair tax loopholes allowing the iPhone maker to pay less tax than other businesses. Ireland was ordered to collect back taxes for 2003-2014, putting Apple’s new tax bill at a steep €13 billion [$15.4 billion.]\n\nThe Commission said Apple was able to pay an effective corporate tax rate of 1 percent on its European profits in 2003. In 2014, that shrunk to 0.005 percent for Apple Sales International, an Irish incorporated arm of Apple.\n\nAt issue is whether Apple avoided tax on its foreign profits, which were recorded by its Irish subsidiaries and lightly taxed. This amounts to unfair state aid, according to the Commission.\n\nApple is sitting on at least $261.5 billion in cash, according to its most recent earnings report. A $15.4 billion payment certainly won\'t sink the tech titan, but for some perspective, that\'s the entire value of Twitter.\n\nIn an interview with the Irish Independent last year, CEO Tim Cook called the ruling \"total political crap.\"\n\n\"No one did anything wrong here and we need to stand together. Ireland is being picked on and this is unacceptable,\" Cook said.\n\nApple did not immediately respond to NBC News\' request for comment. When Ireland\'s tax laws changed in 2015, Apple changed its corporate structure in the country to comply. Since then, Apple has been paying 12.5 percent tax — Ireland\'s statutory rate — according to a newsroom post from the company. Worldwide, Apple has an effective tax rate of 24.6 percent — a number the company says is higher than many other multi-nationals.\n\nThe European Commission\'s decision is also raising questions about sovereignty. In a statement posted online last year, Apple said the Commission\'s ruling is \"effectively proposing to replace Irish tax laws with a view of what the Commission thinks the law should have been… This would strike a devastating blow to the sovereignty of E.U. member states over their own tax matters, and to the principle of certainty of law in Europe.\"\n\nThe Emerald Isle has positioned itself over the past two decades as an attractive place for international companies, especially those in the technology sector, to set up their European headquarters, largely due to its low corporate tax rate.\n\nIntel and Apple were some of the first American behemoths to set up shop in the country. Since then, Google, Facebook, Airbnb, and others have followed suit.\n\nApple is the world's largest tax payer.",
            timeStamp: Date(),
            actions: [
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            issues: ["Business", "Technology"]
        )
    ]

    static var users: [User] = [
        User(
            username: "test",
            password: "test",
            interests: ["Environment", "Business", "Politics", "Technology", "Social Justice"],
            sources: ["New York Times", "Huffington Post", "Fox News", "The Independent", "Washington Post", "The Guardian", "Wired", "NBC News"],
            profPicString: "nopic.jpg",
            organization: "Test Inc.",
            actions: []
        ),
        User(
            username: "lucas",
            password: "test",
            interests: ["Technology", "Politics", "Environment"],
            sources: ["Huffington Post", "New York Times", "Washington Post"],
            profPicString: "lucas.jpg",
            organization: "One Tree Hill",
            actions: [
                Action(
                    title: "Call your local representative",
                    duration: "30 Minutes",
                    eventDescription: "Call your local representative to express your thoughts on an issue you're intested in.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Volunteer at a local shelter",
                    duration: "3 Hours",
                    eventDescription: "Volunteer at a shelter in your local area to help out.",
                    issues: ["Social Justice", "Business"]
                )
            ]
        ),
        User(
            username: "chris",
            password: "test",
            interests: ["Politics", "Business", "Technology"],
            sources: ["New York Times", "Washington Post", "Wired"],
            actions: [
                Action(
                    title: "Taking on Racism: From Charlottesville to the Stockley Verdict",
                    duration: "2 Hours",
                    eventDescription: "White Supremacy has been discussed nationally and locally from the Charlottesville protests to the St. Louis Jason Stockley protests. This workshop will provide a \"brave space\" where white folks can support and challenge each other to better understand white privilege and institutional racism.",
                    issues: ["Social Justice", "Politics"]
                ),
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Attend the St. Louis cityhall meeting",
                    duration: "2 Hours",
                    eventDescription: "Join the St. Louis biweekly cityhall meeting this Friday and let your opinions be heard as local representatives discuss some the major proposals in the St. Louis community, such as the recent soda-tax bill and a recent proposal for tax breaks for local businesses.",
                    issues: ["Politics", "Business"]
                ),
            ],
            profPicString: "chris.png"
        ),
        User(
            username: "hannah",
            password: "test",
            interests: ["Social Justice"],
            sources: ["New York Times", "Huffington Post", "Fox News", "The Independent", "Washington Post", "The Guardian"],
            actions: [
                Action(
                    title: "Call Senator Jones to voice opinion on abortion measures",
                    duration: "30 Minutes",
                    eventDescription: "Call Senator Jones express your thoughts on the recent abortion bill.\n\nCall (555)-555-5555.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Create a petition",
                    duration: "5 Hours",
                    eventDescription: "Create a petition to support an issue you're interested and campaign in your local community for signatures that can be submitted to a local, state, or national representative to show your community's support on the issue.\n\nPetitions can be easily started at https://www.change.org.",
                    issues: ["Politics", "Business", "Environment", "Technology", "Social Justice"]
                )
            ],
            profPicString: "hannah.jpg"
        ),
        User(
            username: "jenny",
            password: "test",
            interests: ["Environment", "Social Justice"],
            sources: ["New York Times", "Huffington Post", "Fox News", "The Independent", "Washington Post", "The Guardian"],
            actions: [
                Action(
                    title: "Donate to a foundation",
                    duration: "20 Minutes",
                    eventDescription: "Research a foundation you're interested in helping out and send a donation to further their mission.",
                    issues: ["Social Justice", "Business", "Environment"]
                ),
                Action(
                    title: "Do independent research on an issue",
                    duration: "2 Hours",
                    eventDescription: "Take the time to learn more about an issue you're interested in through your own independent research. This can include reading articles from other sources, searching websites devoted to the issue, or talking to people in your area who may already be familiar with the issue.",
                    issues:["Politics", "Business", "Environment", "Technology", "Social Justice"]
                ),
                Action(
                    title: "Community-building potluck",
                    duration: "1 Hour",
                    eventDescription: "Instead of our regular mass movement meeting the first Wednesday of the month, ARC is holding a community building potluck for folks who have been involved in recent actions and who are looking to be more connected. Meet a new friend, deepen your commitment, and depending on what's happening later on, we\'ll join people in the streets after we eat!",
                    issues: ["Social Justice"]
                )
            ],
            profPicString: "jenny.jpg"
        ),
        User(
            username: "melissa",
            password: "test",
            interests: ["Environment", "Technology", "Politics", "Social Justice"],
            sources: ["New York Times", "Huffington Post", "NBC News"],
            actions: [
                Action(
                    title: "Volunteer at a local shelter",
                    duration: "3 Hours",
                    eventDescription: "Volunteer at a shelter in your local area to help out.",
                    issues: ["Social Justice", "Business"]
                ),
                Action(
                    title: "Risk taking workshop",
                    duration: "2 Hours",
                    eventDescription: "The details on this event are now correct. We hope you can join us on 11/11 from 9:30-12:30! Please understand we have limited capacity based on the space and the number of facilitators.\n\nJoin ARC\'s Mass Movement working group for an exploration of risk taking in organizing. Specifically, we will focus on our relative risk as white activists in direct action organizing. How do we understand our own level of risk? What is our willingness to take risks? How do we strengthen our ability to take risks through practice?\n\nThere will be something for everyone, if you are new to organizing, we particularly welcome you to this space. And it's an opportunity to meet other people and build community! Please RSVP at the link in the \"tickets\" section - it\'s totally free!",
                    issues: ["Social Justice"]
                ),
                Action(
                    title: "Community-building potluck",
                    duration: "1 Hour",
                    eventDescription: "Instead of our regular mass movement meeting the first Wednesday of the month, ARC is holding a community building potluck for folks who have been involved in recent actions and who are looking to be more connected. Meet a new friend, deepen your commitment, and depending on what's happening later on, we\'ll join people in the streets after we eat!",
                    issues: ["Social Justice"]
                )
            ],
            profPicString: "melissa.jpg"
        )
    ]

    static var currentUser: User?

    static var interests: [String] = [
        "Politics",
        "Business",
        "Environment",
        "Technology",
        "Social Justice"
    ]

    static var sources: [String] = [
        "New York Times",
        "Huffington Post",
        "Fox News",
        "The Independent",
        "Washington Post",
        "The Guardian",
        "Wired",
        "NBC News"
    ]
    
    static var presentIntro = true
}
