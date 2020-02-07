/*
 * HWManager.h
 *
 *  Created on: 17 sept. 2015
 *      Author: XIATAN
 */

#ifndef HWMANAGER_H_
#define HWMANAGER_H_

#include "../include/types.h"
#include "../include/vpsr.h"
#include "xil_io.h"

#define IS_PRR_MANAGER_TEST 		1
#define IS_PRR_MANAGER_ASSIGN_TEST 	0
#define IS_PRR_MANAGER_PREEMT_TEST 	1
#define IS_PRR_MANAGER_RCFG_TEST 	0

/* IRQs used by PR Manager */
#define IVC_DEV_WAIT 	0	// SGI #0: Tell VM to wait for device
#define IVC_DEV_READY 	1	// SGI #1: Tell VM the waiting device is ready to use.
#define IVC_DEV_PREEMPTED 2 // SGI #2: Tell VM that the PR Device it's using is preempted
#define RCFG_OVER	 	40	// DevC #40: PCAP Reconfiguration Over
#define	PL_PR_STOP		90	// Preempt PR stop
#define PL_NEW_SOLUTION	0	// A solution is found for waiting requests

/* task 1*/

#define hw_task_number			2
#define PARTIAL_RECONFIG_ADD_ADDR   0x2001000
#define PARTIAL_RECONFIG_SUB_ADDR   0x2003000 //0x02000000
#define PARTIAL_BINFILE_LEN 	0x65E64//0x0000e73c

#define hw_task_number			1
#define PARTIAL_RECONFIG_ADDR   0x2003000 //0x02000000
#define PARTIAL_BINFILE_LEN 	0x65E64 //0x824E4


/* DevCfg Registers */
#define	DevCfg_INT_STS		0xF800700C
#define DevCfg_INT_MASK		0xF8007010
#define D_P_DONE_INT_BIT 	12

/* PL Mapping information */
#define AXIGP_BASE_PHYS_ADDR   		0x64000000	// Physical address of PR Interfaces
#define AXIGP_BASE_VIRT_ADDR 		0x10000000  // This is temp to ease the test, should be 0xE0300000
//0xE0300000 	//(0xE0300000 - 0xE0FFFFFF) 13MB (3328 pages)
#define PR_IF_SIZE					0x1000 		// 4KB for each PR device


/* System parameters */
#define MAX_VM_NUM		4
#define MAX_DEVICE_NUM 	8
#define MAX_PRR_NUM		4

/* PR Interface Map(Physical) 	*/
#define PR_Base	AXIGP_BASE_PHYS_ADDR
#define	PR_IF0	(PR_Base + 1*PR_IF_SIZE)

/* Device Interface Map(Virtual) */
#define PRCTRL 		AXIGP_BASE_VIRT_ADDR
#define HW_DEV0		(AXIGP_BASE_VIRT_ADDR + 1*PR_IF_SIZE) // Adder device
#define HW_DEV1		(AXIGP_BASE_VIRT_ADDR + 2*PR_IF_SIZE) // Substractor device

/* PR Controller Registers Offset		*/

/* PRSTATE (0x10 - 0x1c)
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
 	|		| Prio	|DevID	|State	| 	*/
//#define PRSTATE_OFFSET				0x10

/* 	PR_IF_CONNECT_CMD
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
	|VMID	|DevID	| Prio	|PRR_id | 		*/
#define PR_IF_CONNECT_CMD_OFFSET				0x10

/* 	PR_IF_DISCONNECT_CMD
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
	|		|		| 		|PRR_id | 		*/
#define PR_IF_DISCONNECT_CMD_OFFSET				0x14

/* 	PR_PRR_STATE_RCFG_SET
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
	|		|		| 		|PRR_id | 		*/
#define PR_PRR_STATE_RCFG_SET_CMD_OFFSET		0x18

/* 	PR_RRR_STATE_HOLD_SET
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
	|		|		| 		|PRR_id | 		*/
#define PR_PRR_STATE_HOLD_SET_CMD_OFFSET		0x1c

/* PR_SEARCH_CMD
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
	|		| VMID	| DevID	| Prio	| 		*/
#define PR_SEARCH_CMD_OFFSET		0x24

/* PR_SEARCH_RST
 * 	|Byte 3	|Byte 2	|Byte 1		|Byte 0	|
 * 	|				|15|14	   8|7	   0|
 * 	|				|R | Method	|PRID	| 	*/
#define PR_SEARCH_RESULT_OFFSET		0x28

/* PR_STOP_CMD
 * 	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
 * 	|						| PRID	|		*/
#define	PR_STOP_CMD_OFFSET			0x2c

/* PR_STOP_INT
 *	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
 *	|VMID	|DevID	|PRID	|Int	|		*/
#define PR_STOP_INT_OFFSET			0x30

/* PR_SOLUTION_INT
 * 	|Byte 3	|Byte 2	|Byte 1		|Byte 0	  	|
 * 	|				|15|14	   8|7	   1| 0	|
	| VMID	| DevID	|R | Method	|PRID	|Int|	*/
#define PR_NEW_SOLUTION_INT_OFFSET		0x34

/* PR_CONNECTION_TABLE  (0xFF = Invalid)
 *	|Byte 3	|Byte 2	|Byte 1	|Byte 0	|
 *	|PR3	|PR2	|PR1	|PR0	|	 */
//#define PR_CONNECTION_TABLE_OFFSET	0x38

/*
 * PR_HOST_LIST (1 = compatible; 0 = non-compatible )
 * 	Bitwise for (MAX_DEVICE_NUM * MAX_PRR_NUM) bits
 * 			PR0		PR1		PR2	   PR3
 * 		  |------|------|-------|-------|
 * 	DEV 0 |__0___|___1__|___2___|___3___|
 * 	DEV 1 |__4___|___5__|___6___|___7___|
 * 		  |		 |		|		|		|
 * 	...   |______|______|_______|_______|
 * 	DEV 7 |__28__|__29__|__30___|__31___|
 */
#define PR_HOST_LIST_OFFSET			0x3c

enum Method{unavailable, assign, preempt,nonvalid};
enum PRStat{IDLE, HOLD, BUSY, RCFG, WFSTOP};

typedef struct
{
	bool Reconf;
	Method M;
	int PR_id;
} Solution;

typedef struct
{
	int 	VMID;	// VM ID that this IF is allocated to
	int		DevID; 	// Device ID that this IF is mapped in VM memory space
	int		IFID;
	int 	PRID;	// PR connected to this IF, 0xff means invalid.
	int		PRIO;	// Priority of VM
	Solution s = {false,nonvalid,0};
} IF_entry;

typedef struct
{
	int 	VMID;	// VM ID that this IF is allocated to
	int		DevID; 	// Device ID that this IF is mapped in VM memory space
	//int		IFID;
	int 	PRID;	// PR connected to this IF, 0xff means invalid.
	int		PRIO;	// Priority of VM
	Solution s = {false,nonvalid,0};
} HWM_entry;


typedef struct
{
	mword	Addr;
	int 	Size;
//	int		Overhead;
} BitFile_entry;



void 	HWManager_Main(int VM_id, mword Dev_Addr, int prio);
int 	Run_Solution(IF_entry *p);
void 	HWManager_Irq_init();

extern "C" void HWManager_Main_Entry();
extern "C" void HWManager_IRQ_Entry();

IF_entry* IF_alloc(int vm_id, int dev_id, int prio);

#define PRRC_WriteReg(RegOffset, Data)	\
	Xil_Out32(PRCTRL + RegOffset, (Data))

#define PRRC_ReadReg(RegOffset)		\
	Xil_In32 (PRCTRL + (RegOffset))

#define PRRC_WriteRegByte(RegOffset, Data)	\
	Xil_Out8(PRCTRL + RegOffset, (Data))

#define PR_SEARCH_SOLUTION(VMID, DevID, PRIO)	\
	PRRC_WriteReg(PR_SEARCH_CMD_OFFSET, 	\
		( ((VMID<<16)|(DevID<<8)|PRIO) & 0xffffff) )

#define	PR_STOP(PRID)		\
	PRRC_WriteReg(PR_STOP_CMD_OFFSET, PRID  )

#define PRR_IF_CONNECT(VMID, DEVID, PRIO, PRRID)\
	PRRC_WriteReg(PR_IF_CONNECT_CMD_OFFSET, \
		(VMID<<24)|(DEVID<<16)|(PRIO<<8)|PRRID	)

#define	PRR_DISCONNECT(PRID)		\
	PRRC_WriteReg(PR_IF_DISCONNECT_CMD_OFFSET, PRID  )

#define PRR_STATE_RCFG_SET(PRID)		\
	PRRC_WriteReg(PR_PRR_STATE_RCFG_SET_CMD_OFFSET, PRID  )

#define PRR_STATE_HOLD_SET(PRID)		\
	PRRC_WriteReg(PR_PRR_STATE_HOLD_SET_CMD_OFFSET, PRID  )

//#define PR_STATE_GET(PRID)					\
//	PRRC_ReadReg( PRSTATE_OFFSET + 4*PRID )
//
//#define PR_STATE_SET(PRID, VALUE)			\
//	PRRC_WriteReg( PRSTATE_OFFSET + 4*PRID, VALUE);
//
//#define PR_STATE_SET_STAT(PRID, STAT)			\
//	PRRC_WriteReg( PRSTATE_OFFSET + 4*PRID, 	\
//					((PR_STATE_GET(PRID) & 0xffffff00) | STAT)  )
//
//#define PR_STATE_SET_PRIO(PRID, PRIO)			\
//	PRRC_WriteReg( PRSTATE_OFFSET + 4*PRID, 	\
//					((PRRC_ReadReg(PRID) & 0xff00ffff) | (PRIO << 16) )  )
//
//#define PR_STATE_SET_DEV(PRID, DevID)			\
//	PRRC_WriteReg( PRSTATE_OFFSET + 4*PRID, 	\
//					((PR_STATE_GET(PRID) & 0xffff00ff) | (DevID << 8) )  )
//
//#define PR_HW_CONNECT(PRID, IFID)				\
//	PRRC_WriteRegByte( PR_CONNECTION_TABLE_OFFSET + PRID, IFID)

#endif /* HWMANAGER_H_ */
