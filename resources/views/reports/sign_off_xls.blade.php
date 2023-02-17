<table>
  <tr>
    <th>SIGN OFF</th>
  </tr>
	@if($data=='1')
	<tr>
        <td>{{ 'Premliminaries to include all insurances, Health & Safety File, small tools, Plant & Equipment as necesssary. All work to be undertaken in accordance with the requirements of SI No 630 of 2019 Dangerous Substances (Retail Stores) Regulations 2019 and SI No 631 of 2019 Dangerous Substances (Commercial Supply Stores) Regulations 2019.' }}
        </td>
	</tr>
    @elseif($data=='2')
	<tr>
        <td>PSDP and PSCS Sign Off: In Accordance with the Safety Health and Welfare at Work Regulation 2013 S.I. No. 291 of 2013 a PSDP (Project Supervisor Design Process) and a PSCS (Project Supervisor Construction Stage) has to be appointed for this job. All Work will be undertaken in accordance with the requirements of SI No 630 of 2019 Dangerous Substances (Retail Stores) Regulations 2019 and SI No 631 of 2019 Dangerous Substances (Commercial Supply Stores) Regultaions 2019.  
        </td>
	</tr>
    
     @elseif($data=='3')
	<tr>
        <td>Please note the following:  1. A failed Verfication Notice will be issued if the retailer fails to keep an appointment for verifications, or when if it is not possible to gain access for a scheduled verfication. Missed or failed verifications will be charged at €100.00. 2. Fuel Dispensers that are found to be out of order or out of fuel, on a scheduled verification will result in an extra call out fee of €130.00. 3. During the verification process, large quantities of fuel may be pumped through each nozzle, please inform your staff to monitor and record this usage, and also inform them that the product pumped is returned to stock. 4. The trader must confirm that a data plate is in place on all instruments to be verified. Failure to do so will result in a failed verification notice being issued. 5. Cancellations with 24 hours prior notice will incur no cancellation fee. If personnel have been dispatched to site a €100 cancellation fee will apply. 
        </td>
	</tr>
	@endif

</table>