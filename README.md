# LSTAR - Aggressor Translated to English! By Google Translate and Deepl

# LSTAR - Aggressor

**For the purpose of simplifying CS right-click and facilitating self-integration, refer to a large number of post-infiltration plugins**

**Refactored and enriched host-related credential acquisition, multi-level intranet penetration, hidden scheduled tasks, anti-kill Mimikatz and cloning to add users and other functions**

**Features:**

- **By cooperating with CobaltStrike's TCP, SMB, Proxy, etc., to penetrate the complex network environment**
- **Provide multiple anti-kill execution methods for RDP-related, AddUser, LsassDump and other functions to deal with unpopular environments**
- **Integrate multiple anti-kill functions such as shadow users running in WinAPI or Assembly memory loading mode, hidden scheduled tasks, etc. **

**Among others include the following functional modules:**

![image](https://github.com/shorefall/LSTAR-EN/assets/72578879/8f49cbc3-dda2-4cac-9f48-b9b65c31e57c)

**Each module is added with a green dividing line before running to facilitate positioning and display information and improve collaboration efficiency**

![image-20211016170807973](image/image-20211016170807973.png)

> **CobaltStrike Host Launches Wechat Notification Plugin:**
>
> - **If you want to use a free method that supports WeChat template message push, you can go to: https://github.com/lintstar/CS-PushPlus**
> - **If there is an enterprise WeChat push channel that subscribes to ServerChan, you can move to: https://github.com/lintstar/CS-ServerChan**

## Disclaimer

**This project is only applicable to security research and legal enterprise security construction. All consequences and responsibilities shall be borne by the user**

# 2022.1.15 update

- **Add anti-kill clone user, add user, scheduled task function**
- **Get the latest sunflower identification code and verification code**
- **Integrated Ladon 9.1.1 version multi-protocol survival detection and other functions**
- **Categorize the functions to simplify the secondary menu of the plugin**

## InfoCollect

**Common commands are classified according to the scene**

![image-20220114101130300](image/image-20220114101130300.png)

### SharpGetInfo

**Integrated Ladon public latest version 9.1.1**

![image-20211229102143317](image/image-20211229102143317.png)

### AntiVirusCheck

**Antisoft information locally echoes Beacon status bar**

Implementation principle: https://blog.csdn.net/weixin_42282189/article/details/121090055

![image-20220112150926351](image/image-20220112150926351.png)

## IntrScan

**Added Ladon's multi-protocol liveness detection (SMB, WMI, SNMP, HTTP, DNS, MAC, MSSQL)**

**Intranet assets behind the firewall can be detected to a certain extent:**[Use MAC to bypass the firewall to detect surviving hosts](https://mp.weixin.qq.com/s/fwnCwL6qWaVvI_J8DAIBFA)

![image-20211229171305053](image/image-20211229171305053.png)

**Live IP detection**

![image-20211229171224738](image/image-20211229171224738.png)

## AuthPromote

### BadPotato (BeichenDream)

**Fixed the bug that can only execute whoami, you can run the online System permission through parameters**

![image-20220113165021408](image/image-20220113165021408.png)

![image-20220113165229359](image/image-20220113165229359.png)

### Badpotato (Ladon)

**Added Ladon's Badpotato**

![image-20211229104134559](image/image-20211229104134559.png)

### Sweet Potato (Ladon)

![image-20211229104432695](image/image-20211229104432695.png)

**Note: The test found that the above two privilege escalation behaviors will be intercepted and killed by digital antivirus**

![image-20211229103727123](image/image-20211229103727123.png)

##AuthMaintain

### SharpSchTask

 **[Use with caution] Utilize Windows API to create hidden scheduled tasks with tools, and bypass the blocking of security software to achieve persistent control. **

Project address: https://github.com/0x727/SchTask_0x727

![image-20220114100528645](image/image-20220114100528645.png)

### SharpShadowUser

**【Use with caution】Bypass remote memory loading clone hidden shadow users**

Project address: https://github.com/An0nySec/ShadowUser

![image-20220115175808998](image/image-20220115175808998.png)

### EasyPersistent

**Fix the PE file path problem, you can use the API method to delete the added user**

![image-20220115182612757](image/image-20220115182612757.png)

## PassCapture

**Categorize the functions according to the scene**

![image-20220115172016468](image/image-20220115172016468.png)

### SunFlower

**Get the latest sunflower identification code and verification code**

**The base_encry_pwd parameter of the latest version of Sunflower has been changed from config.ini to the registry**

![image-20220115173453909](image/image-20220115173453909.png)

## RemoteLogin

**Simplified secondary menu**

![image-20220115183414339](image/image-20220115183414339.png)

## BypassCXK

### SharpAddUser

**Bypass AV utilizes the DirectoryService namespace to add users to the Administrators and Remote Desktop groups**

Project address: https://github.com/An0nySec/UserAdd

![image-20220113152442668](image/image-20220113152442668.png)

### CloneX

**A security detection tool for adding users and cloning users under the command line**

Project address: https://github.com/0x727/CloneX_0x727

![image-20220113155017688](image/image-20220113155017688.png)

# 2021.10.18 update

- **Reintegrated and optimized the overall functional modules**
- **Lateral movement module adds BOF implementation of ZeroLogon vulnerability**
- **Added some Assembly methods to run without file landing functions**

## InfoCollect

### SharpGetInfo (one-click collection of host information)

**Using Ladon for one-click collection includes host basic information, network information, user information, process information, whether it is in the domain, etc.**

![image-20211018111745511](image/image-20211018111745511.png)

### SharpListRDP (RDP record query)

**Collect RDP internal and external connection records, convenient for locating the operation and maintenance machine and lateral movement**

![image-20211016174456005](image/image-20211016174456005.png)

## IntrScan

### Cube (modular detection)

**Cube is added to replace the blasting of the old version. It also supports intranet information collection and MSSQL command execution. For detailed usage, refer to the operation instructions**

![image-20211015174007171](image/image-20211015174007171.png)

### Allin (Assisted Flexible Scanning)

**Added Allin to assist flexible scanning, take remote acquisition of network card IP as an example:**

![image-20211015173332706](image/image-20211015173332706.png)

### SharpOXID-Find (OXID detection)

**Or when you don’t want to land on EXE, you can use the Assembly method to quickly detect OXID**

![image-20211018112045735](image/image-20211018112045735.png)

## IntrAgent

### Stowaway (through multi-level intranet)

**Run after uploading the agent**

![image-20211012100041529](image/image-20211012100041529.png)

**The admin side can build a Socks5 tunnel after receiving the connection**

![image-20211011203216542](image/image-20211011203216542.png)

**Delete agent**

![image-20211012094116014](image/image-20211012094116014.png)

## PassCapture

### LsassDump（WinAPI）

**Modify the operation mode of LsassDump and delete the dumped C:\Windows\Temp\1.dmp while deleting LsassDump**

![image-20211016174730994](image/image-20211016174730994.png)

### Mimidump (remote read .dmp)

** Added LsassDump (WinAPI) function to remotely read C:\Windows\Temp\1.tmp (.net 4.5) dumped by the target machine**

![image-20211015094927257](image/image-20211015094927257.png)

## RemoteLogin

** Added the method of using Powershell to open and close and query RDP related information **

![image-20211018113058495](image/image-20211018113058495.png)

> The PS script comes from the Black Devil plug-in RDP module in Reference

### Query RDP status

![image-20211015150247382](image/image-20211015150247382.png)

### Start the RDP service

![image-20211015150320880](image/image-20211015150320880.png)

### Get RDP port

![image-20211015150713858](image/image-20211015150713858.png)

### View RDP historical login credentials

![image-20211015150429336](image/image-20211015150429336.png)

### Get RDP historical login credentials

![image-20211015150502487](image/image-20211015150502487.png)

## LateMovement

### IPC connection

![image-20211018105021131](image/image-20211018105021131.png)

### Ticket passing

![image-20211016173510988](image/image-20211016173510988.png)

### ZeroLogonBOF

**Added BOF implementation of ZeroLogon vulnerability**

> Reference: https://github.com/rsmudge/ZeroLogon-BOF

![image-20211014143141276](image/image-20211014143141276.png)

# 2021.09.05 update

- **Adapted to x86 architecture machines for some functions**
- **Added some anti-virus gadgets using WindowsAPI**
- **Intranet scanning module adds parameter prompt output when running the corresponding function**

## IntrScan

### Fscan

**Added to upload the corresponding EXE file according to the target machine architecture**

![image-20210905154601537](image/image-20210905154601537.png)

**Added parameter prompt output to facilitate targeted and specified operation of a single module**

![image-20210905161338995](image/image-20210905161338995.png)

### Crack

**Add Crack intranet blasting tool**

![image-20210905161656828](image/image-20210905161656828.png)

### TailorScan

**Added to upload the corresponding EXE file according to the target machine architecture**

![image-20210905160326319](image/image-20210905160326319.png)

## PassCapture

### LaZagne

**Fixed LaZagne not finished running due to network problems in version V1.2**

**The bug of killing the process and deleting the landing file is switched to manual operation**

![image-20210904175955070](image/image-20210904175955070.png)

### LsassDump

**Added LsassDump for memory dump using Windows API and supports x86 and x64 machines**

![image-20210904180546301](image/image-20210904180546301.png)

**The `1.dmp` generated after the dump is successful will be saved in the `C:\Windows\Temp\` directory**

![image-20211015093809697](image/image-20211015093809697.png)

**You can directly read it locally:**

![image-20210904183721654](image/image-20210904183721654.png)

## LateMovement

**Added RDP related functions:**

![image-20210905215527815](image/image-20210905215527815.png)

**Use WindowsAPI to start the RDP service**

![image-20210905215709267](image/image-20210905215709267.png)



# 2021.08.12 update

## InfoCollect

**Added CheckVM to detect whether the target is a virtual machine**

![20210808_2213](image/20210808221427.png)

## AVSearch

**Because the previous script has a certain probability of failure:**

![image-20210808222325403](image/image-20210808222325403.png)

**Updated the new way to detect and kill software**

![image-20210808221945724](image/20210808221945.png)

## AuthPromote

**Fixed the BUG of the previous rights escalation module**

![image-20210811105401723](image/20210811105401.png)

##AuthMaintain

**EasyPersistent：https://github.com/yanghaoi/CobaltStrike_CNA**

**Added a Cobalt Strike CNA script for privilege maintenance on Windows**

**Using the reflection DLL module to visualize the common permission maintenance methods such as system services and scheduled tasks through the API is very easy to use. (Author's original words)**

![image-20210812170907609](image/20210812170907.png)

**Documentation: https://github.com/yanghaoi/CobaltStrike_CNA/blob/main/EasyCNA/README.md**

![image-20210812170946202](image/20210812170946.png)

## PassCapture

### Mimikatz related

![image-20210811104834675](image/20210811104834.png)

### Lazagne

**Practice test is relatively easy to use to retrieve the host password tool (exe file will be automatically deleted after uploading and running)**

![image-20210811102145547](image/20210811102145.png)

### Browser Password

![image-20210811105159479](image/20210811105159.png)

### Navicat Xshell and other native software

![image-20210811105105056](image/20210811105105.png)

### FakeTheScreen

**Optimized different phishing password stealing for Windows 10 and Windows 7**

![image-20210811095234252](image/20210811095234.png)

**Because the effect of the fake page is hard to describe, it is only recommended to use it when you are ready to die:**

![image-20210811094621414](image/20210811094621.png)

# Reference

[**梼杌 - taowu-cobalt-strike**](https://github.com/pandasec888/taowu-cobalt-strike)

[**Z1-AggressorScripts**](https://github.com/z1un/Z1-AggressorScripts)

[**Self-opening-csplugin**](https://github.com/422926799/csplugin)

**[EasyPersistent Windows permission maintenance](https://github.com/yanghaoi/CobaltStrike_CNA/blob/main/EasyCNA/README.md)**

[**Black Devil-CSplugins**](https://github.com/SeaOf0/CSplugins)

# InfoCollect

**Added Netview and Powerview features**

![image-20210707112534352](image/image-20210707112534352.png)

# AvSearch

**Process query through Wmic**

![image-20210707114047098](image/image-20210707114047098.png)

![image-20210706105117525](image/image-20210706105117525.png)

# IntrScan

**Including all kinds of intranet health care**

![image-20210707112718120](image/image-20210707112718120.png)

**Custom command to run**

![image-20210706110153336](image/image-20210706110153336.png)

**fscan uploads to `C:\\Windows\\Temp\\` by default**

![image-20210706110110475](image/image-20210706110110475.png)



**CONSOLE RETURN**

![image-20210706110008931](image/image-20210706110008931.png)

**Delete fscan and result text**

![image-20210706110809988](image/image-20210706110809988.png)

# IntrAgent

**It is a relatively easy-to-use intranet penetration tool and has no configuration files to reduce the risk of being traced**

![image-20210707112750687](image/image-20210707112750687.png)



#AuthMaintenance

**Added silver note and gold note on the basis of 梼杌**

![image-20210707112856320](image/image-20210707112856320.png)

# LateMovement

**Contains lateral movement kits such as sharpwmi based on port 135**

![image-20210707113642982](image/image-20210707113642982.png)

# TraceClean

**Clean up the traces of Stitching IX to be perfected**

![image-20210707113717904](image/image-20210707113717904.png)

# BypassCxk

**cxk limited-time kill-free version adduser and mimikatz**

![image-20210707113737475](image/image-20210707113737475.png)

# HavingFun

**Picture a joy in the days of making a website**

![image-20210707113749756](image/image-20210707113749756.png)

