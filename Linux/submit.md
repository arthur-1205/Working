**#LINUX_TRAINING**

![](src/index.png)

1. <a href='#1'> Check Diskspace
2. <a href='#2'> Check Partitions
3. <a href='#3'> Check CPU, RAM, network
4. <a href='#4'> Process Monitor
5. <a href='#5'> List Files and Directories
5. <a href='#6'> Actions with Files/Directories(move/copy,....)        
6. <a href='#7'> Basic and advanced decentralization
***
  
  
<div id='1'></div>
  
##  1. Check Diskspace
  
### - `df` command

The `df` command in Linux/Unix is used to display information related to file systems about total space and available space.
`df` is an abbreviation for "disk free".

### Syntax

```
df [OPTION]... [FILE]...
```

### Some option 
|**Short Flag**|**Long Flag**|**Description**|
|:--|:--|:--|
|`-a`|`--all`|Include pseudo, duplicate, inaccessible file systems.|
|`-h`|`--human-readable`|Print sizes in powers of 1024 (e.g., 1023M).|
|`-i`|`--inodes`|List inode information instead of block usage.|
|`-t`|`--type=TYPE`|Limit listing to file systems of type `TYPE`.|
|`-T`|`--print-type`|Print file system type.|
|<center>-</center>|`--help`|Display help message and exit.|
|<center>-</center>|`--version`|Output version information and exit.|

### Examples:
1. Show available disk space

**Action:**
--- Output the available disk space and where the directory is mounted

**Details:**
--- Outputted values are not human-readable (are in bytes)

**Command:**
```
df
```
![image](https://user-images.githubusercontent.com/63574039/170960326-04e04216-7633-4ea6-828a-c04251537d11.png)

2. Show available disk space in human-readable form

**Action:**
--- Output the available disk space and where the directory is mounted

**Details:**
--- Outputted values ARE human-readable (are in GBs/MBs)

**Command:**
```
df -h
```
![image](https://user-images.githubusercontent.com/63574039/170962243-e92b3225-5b73-43b5-b1d6-fa41b32d8238.png)

3. Show available disk space for the specific file system

**Action:**
--- Output the available disk space and where the directory is mounted

**Details:**
--- Outputted values are only for the selected file system

**Command:**
```
df -hT file_system_name
```
![image](https://user-images.githubusercontent.com/63574039/170967260-b2f674ba-8558-40d6-8409-16b3b94ccbfd.png)


## - `du` command
The `du` command, which is short for `disk usage` lets you retrieve information about disk space usage information in a specified directory. In order to customize the output according to the information you need, this command can be paired with the appropriate options or flags.

### Syntax:

```
du [OPTION]... [FILE]...
```

### Additional Flags and their Functionalities:

*Note: This does not include an exhaustive list of options.*

|**Short Flag**   |**Long Flag**   |**Description**   |
|:---|:---|:---|
|`-a`|`--all`|Includes information for both files and directories|
|`-c`|`--total`|Provides a grand total at the end of the list of files/directories|
|`-d`|`--max-depth=N`|Provides information up to `N` levels from the directory where the command was executed|
|`-h`|`--human-readable`|Displays file size in human-readable units, not in bytes|
|`-s`|`--summarize`|Display only the total filesize instead of a list of files/directories|


### Examples:

1. To show the estimated size of sub-directories in the a directory 

```
du -h 
```

![Screenshot from 2022-05-30 17-06-20](https://user-images.githubusercontent.com/63574039/170969759-6b2fd6a9-e679-43d8-a99e-3c8a9e37b55d.png)


2. To show the estimated size of sub-directories inside a specified directory:

```
du {PATH_TO_DIRECTORY}
```
![Screenshot from 2022-05-30 17-09-53](https://user-images.githubusercontent.com/63574039/170970383-96791edd-88c7-400d-b2bb-174d9a05caf5.png)
  
  
<div id='2'></div>
  
### 2. Check Partitions

The `fdisk` command is used for controlling the disk partition table and making changes to it and this is a list of some of options provided by it : </b>
- Organize space for new drives.
- Modify old drives.
- Create space for new partitions.
- Move data to new partitions.

### Examples:

1. To view basic details about all available partitions on a particular disk:

```
fdisk -l particular_disk
```
![Screenshot from 2022-05-30 17-19-18](https://user-images.githubusercontent.com/63574039/170972539-33090812-77cc-4188-a91c-c0b19ae8fa11.png)


2. To show the size of the partition /dev/sda

```
fdisk -s /dev/sda
```

![Screenshot from 2022-05-30 17-25-14](https://user-images.githubusercontent.com/63574039/170973004-80da002d-2df8-484c-9ff5-ff73d8a7ac8b.png)
  
  
 <div id='3'></div>

  ## Check CPU, RAM, network
  
  ## Check CPU with `lscpu` command
  
  `lscpu` in Linux/Unix is used to display CPU Architecture info. `lscpu` gathers CPU architecture information from `sysfs` and `/proc/cpuinfo` files.

### Options

`-a, --all`
    Include lines for online and offline CPUs in the output (default for -e). This option may only specified together with option -e or -p. 
    For example: `lsof -a`

`-b, --online`
    Limit the output to online CPUs (default for -p). This option may only be specified together with option -e or -p. 
    For example: `lscpu -b`

`-c, --offline`
    Limit the output to offline CPUs. This option may only be specified together with option -e or -p. 

`-e, --extended [=list]`
    Display the CPU information in human readable format.
    For example: `lsof -e`

### Example : 
![Screenshot from 2022-05-30 17-34-43](https://user-images.githubusercontent.com/63574039/170974629-3cc4b6ae-bc0b-447e-9b29-eb6eefa6a97c.png)
  
  ## Check RAM - `free`/`vmstat` command
  
  
## - The `free` command

The `free` command in Linux/Unix is used to show memory (RAM/SWAP) information.

### Show memory usage

**Action:**
--- Output the memory usage - available and used, as well as swap

**Details:**
--- Outputted values are not human-readable (are in bytes)


### Examples:
1. Show memory usage in human-readable form
```
free -h 
```
![Screenshot from 2022-05-30 21-58-22](https://user-images.githubusercontent.com/63574039/171018831-1d5645bc-5f81-4a3e-b159-a08ea3acc8db.png)

2. Show memory usage in MB
```
free -m
```

![Screenshot from 2022-05-30 22-01-45](https://user-images.githubusercontent.com/63574039/171019033-c0652096-0a70-4a0c-8fd7-46a632510d7b.png)

## - `vmstat` command
The `vmstat` command lets you monitor the performance of your system. It shows you information about your memory, disk, processes,
CPU scheduling, paging, and block IO. This command is also referred to as **virtual memory statistic report**.

### Examples:

```
vmstat -a
```
If we run `vmstat -a`, it will show us the active and inactive memory of the system running.

![Screenshot from 2022-05-30 22-25-23](https://user-images.githubusercontent.com/63574039/171023021-67e0fb5a-c18e-4854-96ae-54017adafc93.png)



```
vmstat
```
![Screenshot from 2022-05-30 22-30-31](https://user-images.githubusercontent.com/63574039/171023907-efd2f98b-04e7-417f-90b7-0ea0f796a8df.png)

As you can see it is a pretty useful little command. The most important things that we see above are the `free`, which shows us the free space that is not being used, `si` shows us how much memory is swapped in every second in kB, and `so` shows how much memory is swapped out each second in kB as well.
  
  
## The `ping` command

The `ping` (Packet Internet Groper) command is used to check the network connectivity between host and server/host. This command takes as input the IP address or the URL and sends a data packet to the specified address with the message “PING” and get a response from the server/host this time is recorded which is called latency. Ping uses ICMP(Internet Control Message Protocol) to send an ICMP echo message to the specified host if that host is available then it sends ICMP reply message. Ping is generally measured in millisecond every modern operating system has this ping pre-installed.

The basic ping syntax includes ping followed by a hostname, a name of a website, or the exact IP address.

```
ping [option] [hostname] or [IP address]
```

### Examples:

1. To check whether a remote host is up, in this case, google.com, type in your terminal:

 ```
ping google.com
```
![](src/ping_google.png)
  
2. Controlling the number of pings: 
Earlier we did not define the number of packets to send to the server/host by using -c option we can do so. 

 ```
ping -c 5 google.com
```
![image](src/ping_c.png)


3. Controlling the number of pings: 
Earlier a default sized packets were sent to a host but we can send light and heavy packet by using 
-s option. 

```
ping -s 30 -c 4 google.com
```
![image](src/ping_size.png)  


4. Changing the time interval: 
By default ping wait for 1 sec to send next packet we can change this time by using -i option.  

```
ping -i 2 google.com
```


  


  
