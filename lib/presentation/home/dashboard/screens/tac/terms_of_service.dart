import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class TACPage extends StatelessWidget {
  const TACPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => context.router.pop(),
                child: const Icon(Icons.close),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Fortfolio Terms of\nService",
                style: titleText.copyWith(color: kBlackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Please read these terms and conditions carefully as they apply to your access and use of this website, and contain important information regarding your rights and obligations.',
                style: subTitle.copyWith(color: kgreyColor, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              buildtitle('1. General'),
              buildbody('These terms and conditions include various limitations and exclusions, a clause that governs the jurisdiction and venue of disputes and obligations to comply with applicable laws and regulations.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('Use of our website is conditional upon your acceptance of these terms. If you do not agree to these terms you should immediately discontinue use of our website'),
              const SizedBox(
                height: 10,
              ),
              buildbody('By accessing this website, you hereby agree that you have read and fully understood the following terms and conditions. You are therefore bound by our terms and conditions when you access the site or interact with us as a business or use/patronize any of our services.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('The terms and conditions herein are subject to change without any prior notice and we can do so anytime at our sole discretion. You are therefore advised to periodically check our terms and conditions page for any new changes that may have been made prior after your last visit.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('For purposes of these terms and conditions, ”User”, “Client”, “You” and “Your” refers to you, the person accessing this Website and accepting the Company’s terms and conditions. “The Company”, “Ourselves”, “We” and “Us”, refers to Fortfolio Limited and its subsidiary companies.“Party”, “Parties”, or “Us”, refers to both the Client and the Company, or either the Client or the Company.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('2. INVESTMENT PLANS'),
              buildbody('Investment date begins Two (2) weeks after we receive your capital. Investment period may be six (6) months or Twelve (12) months depending on your choice of duration. You may choose to roll over your capital at the end of the agreed investment period. The Return on Investment to be paid may change from time to time due to external factors. You will be informed of this change (if any) when you opt to roll over your capital \n\nDuring the period of investment, Return on Investment is to be paid on monthly basis. You may choose to be paid your Return on Investment in a lump sum at the end of the investment period together with your capital. You may also choose to roll over the capital together with the return of investment. '),
              const SizedBox(
                height: 25,
              ),
              buildtitle('3. TERMINATION OF INVESTMENT'),
              buildbody('Termination of an investment plan or package before the agreed investment period means that you automatically accept to forfeit Twenty Percent (20%) of your initial investment.\n\nWhere you choose to terminate, you will in addition toforfeitingTwenty Percent (20%) of your initial investment; also forfeit any Return on Investment which should have accrued in the month of termination (this notwithstanding that termination was done on the last day of the month). This is because the funds are being used and immediate termination or cancellation of your investment capital would incur some loss.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('LOAN'),
              buildbody('During your investment period, rather than termination of your investment you may choose to apply for a loan.  The loan to be granted shall be subject to the following conditions:\na. The sum to be granted as loan shall not be greater than Forty Percent (40%) of your capital\nb. The interest rate shall be Ten Percent (10%) per month\nc. That the loan term shall not exceed the investment period'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('4. OUR CONTENT'),
              buildbody('Content on this Website is for informational purposes only without regard to any particular user’s investment objectives, financial situation, or means, and Fortfolio is not soliciting any action based upon it. Certain transactions give rise to substantial risk and are not suitable for all investors.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('5. LIMITATION OF LIABILITY'),
              buildbody('Fortfolio makes no warranty whatsoever to you express or implied, regarding the security of the site, including with respect to the ability of unauthorized persons to intercept or access information transmitted by you through this service. Fortfolio also makes no warranty or representation, whether express or implied, that the information or files available on this Website are free of viruses, destructive materials or any other data or code which is able to corrupt, compromise, jeopardize, disrupt, disable, harm or otherwise impede in any manner the operation of a computer system, computer network or your hardware or software. You accept all risk associated with the existence of such viruses, destructive materials or any other data or code which is able to corrupt, compromise, jeopardize, disrupt, disable, harm or otherwise impede in any manner the operation or content of a computer system, computer network or your hardware or software.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('Fortfolio makes no warranty or guarantee, express or implied, concerning our investment services. The services provided by us are on an “AS IS” basis at your sole risk. The Company expressly disclaims any implied warranty of merchantability or fitness for a particular purpose, including any warranty for the use or the results of the use of the services with respect to their correctness, quality, accuracy, completeness, reliability, performance, timeliness, or continued estimatedRunTimeHour. Neither Fortfolio nor any of its third party providers shall have any responsibility to maintain the data and services made available on this Web site or to supply any corrections, updates, or releases in connection therewith. estimatedRunTimeHour of data and services are subject to change without notice'),
              const SizedBox(
                height: 10,
              ),
              buildbody('Past performance is not necessarily a guide to future performance, and that there can be no assurance that comparable results will be achieved. Your investments and the income from them can go down as well as up and investors may not get back the amount originally invested. Exchange rate changes may cause the value of investments made by out of country investors to rise or fall.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('Fortfolio shall not be liable for any direct or indirect damages arising out of the use of this website. All information accessible on the website is for general information only and shall not be used as the basis of making any investment decisions. The Fortfolio does not provide any investment advice and nothing on the website shall be interpreted as any investment advice. Investments are made at your own risk, and Fortfolio shall not be liable for any loss or damage which you may suffer through investments made based on the information accessed on the website from time to time. Your capital is always at risk with any investment and past performance is not a guarantee for future performances. You may wish to contact a financial advisor if you are unsure about investing.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('We would hereby also not be liable for any loss that occurs from acts, events or circumstances not reasonably within our control, including but not limited to force majeure, economic depression, exchange rate, war, riot, terrorism or threat thereof, civil commotion, acts, government regulations, both national and international authorities, failure or malfunction of telecommunication or computer services and systems. Neither shall we be liable or have any responsibility of any kind for any loss or damage thereby incurred or suffered by you.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('We shall have no liability to you, whether in contract, tort (including negligence), breach of statutory duty or otherwise, for any loss of profit, or for any indirect or consequential loss arising under or in connection with our agreement.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('Fortfolio shall have no liability, contingent or otherwise, to You or to third parties, or any responsibility whatsoever, for the failure of any connection or communication service to provide or maintain your access to this service, or for any interruption or disruption of such access or any erroneous communication between the Company and You, regardless of whether the connection or communication service is provided by the Company or a third party service provider. Fortfolio shall have no liability, contingent or otherwise, to You or to third parties, for the correctness, quality, accuracy, timeliness, reliability, performance, continued estimatedRunTimeHour, completeness or delays, omissions, or interruptions in the delivery of the data and services available on this website or for any other aspect of the performance of this service or for any failure or delay in the execution of any transactions through this service. In no event shall the Company be liable for any special, indirect, incidental, or consequential damages which may be incurred or experienced on account of You using the data or services made available on this Website, even where the Company has been advised of the possibility of such damages. Fortfolio shall have no responsibility to inform You of any difficulties experienced by the Company or third parties with respect to the use of the services or to take any action in connection therewith.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('6. PROHIBITED USE'),
              buildbody('You are strictly prohibited from unauthorized use of our systems or this Website, including but not limited to unauthorized entry into our systems, misuse of passwords, or misuse of any information posted to our Website. '),
              const SizedBox(
                height: 10,
              ),
              buildbody('You may use our systems and this website for lawful purposes only. You may not impersonate any person or entity, or falsify or otherwise misrepresent yourself or your affiliation with any person or entity. You are strictly prohibited from posting or transmitting any material that could cause Fortfolio harm, constitute a criminal offence, give rise to civil liability or otherwise violate any laws or these Terms and Conditions. Fortfolio assumes no responsibility for users posting or transmitting of such material '),
              const SizedBox(
                height: 25,
              ),
              buildtitle('7. INTELLECTUAL PROPERTY'),
              buildbody('The User acknowledges and agrees that this website, including all associated intellectual property rights, are the exclusive property of Fortfolio. The User will not remove, alter or obscure any copyright, trademark, service mark or proprietary rights notices incorporated in or accompanying this website and/or services provided by Fortfolio through this website. The Users’ and their representatives’ permitted use of this website are limited to the rights granted under these Terms and Conditions. Fortfolio retains the copyright and all intellectual property rights relating to this website. Nothing in these Terms and Conditions shall be construed as giving license to a User to the intellectual property of Fortfolio, except insofar as is expressly stated herein.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('8. PERSONAL DATA'),
              buildbody('You consent to Fortfolio and our agents collecting, using and disclosing your personal data for purposes reasonably required by us to enable us to provide adequate Services to you.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('9. INDEMNITY'),
              buildbody('You agree to indemnify and hold us, our officers, directors, shareholders, predecessors, successors, employees, affiliates, harmless from any demands, loss, liability, claims or expenses including solicitors’ fees made against us by any third party due to or arising out of or in connection with your use of this website and our services.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('10. NO WAIVER'),
              buildbody('The Company’s failure to exercise or enforce any right or provision of the Terms of Service shall not constitute a waiver of such right or provision or prevent a subsequent enforcement of that or any other right or provision. No waiver of any of the provisions of this or any Agreement shall be effective unless it is expressly stated to be such and signed by both Parties.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('11. FORCE MAJEURE'),
              buildbody('No Party shall be in default by reason of its failure to perform promptly any part of the its obligation if and to the extent that such failure is due to a Force Majeure Event provided that it notifies the other Party of the nature and extent of the circumstances in question as soon as reasonably practicable in the circumstances.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('For the purposes of this Condition, a "Force Majeure Event" shall mean any event or circumstance beyond the reasonable control of the affected Party including an act of God, explosion, revolution, insurrection, riot, civil commotion, war, national or local emergency, terrorist act, or threat thereof, act of government, strike, fire or flood, as well as any breakdown in or discontinuance or suspension of computer or communications systems which is beyond the reasonable control of the Party claiming to rely upon the Force Majeure Event in question'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('12. NOTIFICATION OF CHANGES'),
              buildbody('Fortfolio may in its sole discretion terminate, suspend and/or modify the contents of this Website with or without notice to you. The Company reserves the right to terminate, suspend and/or modify these conditions from time to time as it sees fit and your continued use of the site will signify your acceptance of any adjustment to these terms. You agree that Fortfolio, its affiliates or subsidiaries shall not be liable to you in the event that it chooses to terminate its services, suspend or modify this Website or your use of this Website.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('13. APPLICATION OF OTHER TERMS'),
              buildbody('In addition to these Terms and Conditions, where we make other Services available to you, those terms shall be read in conjunction with these Terms and Conditions. In the event of any conflict, the specific terms applicable to the relevant services shall apply. '),
              const SizedBox(
                height: 25,
              ),
              buildtitle('14. SEVERABILITY'),
              buildbody('In the event any of the terms or provisions of these Terms and Conditions shall be held to be unenforceable, the remaining terms and provisions shall be unimpaired and the unenforceable term or provision shall be replaced by such enforceable term or provision as comes closest to the intention underlying the unenforceable term or provision.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('15. THIRD PARTY RIGHTS '),
              buildbody('A person who is not a party to any agreement governed by these Terms and Conditions has no right to enforce any of these Terms and Conditions.'),
              const SizedBox(
                height: 25,
              ),
              buildtitle('16. APPLICABLE LAW AND JURISDICTION'),
              buildbody('The user’s access to and use of the Website, and the terms of this disclaimer are governed and construed in all respects in accordance with the laws of the Federal Republic of Nigeria without regards to the conflict of law provisions. You consent to the personal and exclusive jurisdiction of the courts located within Lagos State of Nigeria and that you shall irrevocably submit to the jurisdiction of the courts of in Lagos State.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('These Terms and Conditions shall be subject to any other agreements you have entered into with the Company.'),
              const SizedBox(
                height: 10,
              ),
              buildbody('This Website is hereby issued and approved by Fortfolio Limited. Fortfolio Limited a company incorporated under the Companies and Allied Matters Act in Nigeria is a fund and asset management company offering varieties of assets management and financial services at a competitive interest rate. ')
            ],
          ),
        ),
      ),
    ),
    );
  }

  Widget buildtitle(String text){
    return Text(text,style: subTitle.copyWith(fontWeight: FontWeight.w700, fontSize: 24, color: kBlackColor));
  }

  Widget buildbody(String text){
    return Text(text,style: subTitle.copyWith(color: kgreyColor, fontSize: 18, fontWeight: FontWeight.w400,));
  }
}
