
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00012117          	auipc	sp,0x12
    80000004:	00010113          	mv	sp,sp
    80000008:	00008097          	auipc	ra,0x8
    8000000c:	970080e7          	jalr	-1680(ra) # 80007978 <start>

0000000080000010 <loop>:
    80000010:	0000006f          	j	80000010 <loop>
	...

0000000080001000 <kernel_switch_thread>:
    80001000:	00153023          	sd	ra,0(a0)
    80001004:	00253423          	sd	sp,8(a0)
    80001008:	00853823          	sd	s0,16(a0)
    8000100c:	00953c23          	sd	s1,24(a0)
    80001010:	03253023          	sd	s2,32(a0)
    80001014:	03353423          	sd	s3,40(a0)
    80001018:	03453823          	sd	s4,48(a0)
    8000101c:	03553c23          	sd	s5,56(a0)
    80001020:	05653023          	sd	s6,64(a0)
    80001024:	05753423          	sd	s7,72(a0)
    80001028:	05853823          	sd	s8,80(a0)
    8000102c:	05953c23          	sd	s9,88(a0)
    80001030:	07a53023          	sd	s10,96(a0)
    80001034:	07b53423          	sd	s11,104(a0)
    80001038:	0005b083          	ld	ra,0(a1)
    8000103c:	0085b103          	ld	sp,8(a1)
    80001040:	0105b403          	ld	s0,16(a1)
    80001044:	0185b483          	ld	s1,24(a1)
    80001048:	0205b903          	ld	s2,32(a1)
    8000104c:	0285b983          	ld	s3,40(a1)
    80001050:	0305ba03          	ld	s4,48(a1)
    80001054:	0385ba83          	ld	s5,56(a1)
    80001058:	0405bb03          	ld	s6,64(a1)
    8000105c:	0485bb83          	ld	s7,72(a1)
    80001060:	0505bc03          	ld	s8,80(a1)
    80001064:	0585bc83          	ld	s9,88(a1)
    80001068:	0605bd03          	ld	s10,96(a1)
    8000106c:	0685bd83          	ld	s11,104(a1)
    80001070:	00008067          	ret
    80001074:	00000013          	nop
    80001078:	00000013          	nop
    8000107c:	00000013          	nop

0000000080001080 <kernel_thread_stub>:
    80001080:	14099073          	csrw	sscratch,s3
    80001084:	10016073          	csrsi	sstatus,2
    80001088:	00048513          	mv	a0,s1
    8000108c:	000400e7          	jalr	s0
    80001090:	00002097          	auipc	ra,0x2
    80001094:	940080e7          	jalr	-1728(ra) # 800029d0 <kernel_thread_exit>
    80001098:	00000013          	nop
    8000109c:	00000013          	nop

00000000800010a0 <thread_stub>:
    800010a0:	14099073          	csrw	sscratch,s3
    800010a4:	10000293          	li	t0,256
    800010a8:	1002b073          	csrc	sstatus,t0
    800010ac:	02000293          	li	t0,32
    800010b0:	1002a073          	csrs	sstatus,t0
    800010b4:	14141073          	csrw	sepc,s0
    800010b8:	00048513          	mv	a0,s1
    800010bc:	00090093          	mv	ra,s2
    800010c0:	10200073          	sret
    800010c4:	00000013          	nop
    800010c8:	00000013          	nop
    800010cc:	00000013          	nop

00000000800010d0 <setjmp>:
    800010d0:	00153023          	sd	ra,0(a0)
    800010d4:	00253423          	sd	sp,8(a0)
    800010d8:	00853823          	sd	s0,16(a0)
    800010dc:	00953c23          	sd	s1,24(a0)
    800010e0:	03253023          	sd	s2,32(a0)
    800010e4:	03353423          	sd	s3,40(a0)
    800010e8:	03453823          	sd	s4,48(a0)
    800010ec:	03553c23          	sd	s5,56(a0)
    800010f0:	05653023          	sd	s6,64(a0)
    800010f4:	05753423          	sd	s7,72(a0)
    800010f8:	05853823          	sd	s8,80(a0)
    800010fc:	05953c23          	sd	s9,88(a0)
    80001100:	07a53023          	sd	s10,96(a0)
    80001104:	07b53423          	sd	s11,104(a0)
    80001108:	00000513          	li	a0,0
    8000110c:	00008067          	ret

0000000080001110 <longjmp>:
    80001110:	00053083          	ld	ra,0(a0)
    80001114:	00853103          	ld	sp,8(a0)
    80001118:	01053403          	ld	s0,16(a0)
    8000111c:	01853483          	ld	s1,24(a0)
    80001120:	02053903          	ld	s2,32(a0)
    80001124:	02853983          	ld	s3,40(a0)
    80001128:	03053a03          	ld	s4,48(a0)
    8000112c:	03853a83          	ld	s5,56(a0)
    80001130:	04053b03          	ld	s6,64(a0)
    80001134:	04853b83          	ld	s7,72(a0)
    80001138:	05053c03          	ld	s8,80(a0)
    8000113c:	05853c83          	ld	s9,88(a0)
    80001140:	06053d03          	ld	s10,96(a0)
    80001144:	06853d83          	ld	s11,104(a0)
    80001148:	00058513          	mv	a0,a1
    8000114c:	00051463          	bnez	a0,80001154 <.exit>
    80001150:	00100513          	li	a0,1

0000000080001154 <.exit>:
    80001154:	00008067          	ret
    80001158:	00000013          	nop
    8000115c:	00000013          	nop

0000000080001160 <supervisorTrap>:
    80001160:	14011173          	csrrw	sp,sscratch,sp
    80001164:	ef010113          	addi	sp,sp,-272 # 80011ef0 <stack_bottom+0x3ef0>
    80001168:	00113023          	sd	ra,0(sp)
    8000116c:	00313823          	sd	gp,16(sp)
    80001170:	00413c23          	sd	tp,24(sp)
    80001174:	02513023          	sd	t0,32(sp)
    80001178:	02613423          	sd	t1,40(sp)
    8000117c:	02713823          	sd	t2,48(sp)
    80001180:	02813c23          	sd	s0,56(sp)
    80001184:	04913023          	sd	s1,64(sp)
    80001188:	04a13423          	sd	a0,72(sp)
    8000118c:	04b13823          	sd	a1,80(sp)
    80001190:	04c13c23          	sd	a2,88(sp)
    80001194:	06d13023          	sd	a3,96(sp)
    80001198:	06e13423          	sd	a4,104(sp)
    8000119c:	06f13823          	sd	a5,112(sp)
    800011a0:	07013c23          	sd	a6,120(sp)
    800011a4:	09113023          	sd	a7,128(sp)
    800011a8:	09213423          	sd	s2,136(sp)
    800011ac:	09313823          	sd	s3,144(sp)
    800011b0:	09413c23          	sd	s4,152(sp)
    800011b4:	0b513023          	sd	s5,160(sp)
    800011b8:	0b613423          	sd	s6,168(sp)
    800011bc:	0b713823          	sd	s7,176(sp)
    800011c0:	0b813c23          	sd	s8,184(sp)
    800011c4:	0d913023          	sd	s9,192(sp)
    800011c8:	0da13423          	sd	s10,200(sp)
    800011cc:	0db13823          	sd	s11,208(sp)
    800011d0:	0dc13c23          	sd	t3,216(sp)
    800011d4:	0fd13023          	sd	t4,224(sp)
    800011d8:	0fe13423          	sd	t5,232(sp)
    800011dc:	0ff13823          	sd	t6,240(sp)
    800011e0:	140022f3          	csrr	t0,sscratch
    800011e4:	00513423          	sd	t0,8(sp)
    800011e8:	141022f3          	csrr	t0,sepc
    800011ec:	0e513c23          	sd	t0,248(sp)
    800011f0:	10002373          	csrr	t1,sstatus
    800011f4:	10613023          	sd	t1,256(sp)
    800011f8:	00010513          	mv	a0,sp
    800011fc:	00001097          	auipc	ra,0x1
    80001200:	33c080e7          	jalr	828(ra) # 80002538 <handleTrap>
    80001204:	00050113          	mv	sp,a0
    80001208:	0f813283          	ld	t0,248(sp)
    8000120c:	14129073          	csrw	sepc,t0
    80001210:	10013303          	ld	t1,256(sp)
    80001214:	10031073          	csrw	sstatus,t1
    80001218:	00013083          	ld	ra,0(sp)
    8000121c:	01013183          	ld	gp,16(sp)
    80001220:	01813203          	ld	tp,24(sp)
    80001224:	02813303          	ld	t1,40(sp)
    80001228:	03013383          	ld	t2,48(sp)
    8000122c:	03813403          	ld	s0,56(sp)
    80001230:	04013483          	ld	s1,64(sp)
    80001234:	04813503          	ld	a0,72(sp)
    80001238:	05013583          	ld	a1,80(sp)
    8000123c:	05813603          	ld	a2,88(sp)
    80001240:	06013683          	ld	a3,96(sp)
    80001244:	06813703          	ld	a4,104(sp)
    80001248:	07013783          	ld	a5,112(sp)
    8000124c:	07813803          	ld	a6,120(sp)
    80001250:	08013883          	ld	a7,128(sp)
    80001254:	08813903          	ld	s2,136(sp)
    80001258:	09013983          	ld	s3,144(sp)
    8000125c:	09813a03          	ld	s4,152(sp)
    80001260:	0a013a83          	ld	s5,160(sp)
    80001264:	0a813b03          	ld	s6,168(sp)
    80001268:	0b013b83          	ld	s7,176(sp)
    8000126c:	0b813c03          	ld	s8,184(sp)
    80001270:	0c013c83          	ld	s9,192(sp)
    80001274:	0c813d03          	ld	s10,200(sp)
    80001278:	0d013d83          	ld	s11,208(sp)
    8000127c:	0d813e03          	ld	t3,216(sp)
    80001280:	0e013e83          	ld	t4,224(sp)
    80001284:	0e813f03          	ld	t5,232(sp)
    80001288:	0f013f83          	ld	t6,240(sp)
    8000128c:	11010293          	addi	t0,sp,272
    80001290:	14029073          	csrw	sscratch,t0
    80001294:	02013283          	ld	t0,32(sp)
    80001298:	00813103          	ld	sp,8(sp)
    8000129c:	10200073          	sret

00000000800012a0 <syscall>:
    800012a0:	00000073          	ecall
    800012a4:	00008067          	ret
	...

00000000800012b0 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800012b0:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800012b4:	00b29a63          	bne	t0,a1,800012c8 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800012b8:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800012bc:	fe029ae3          	bnez	t0,800012b0 <copy_and_swap>
    li a0, 0               # Set return to success.
    800012c0:	00000513          	li	a0,0
    jr ra                  # Return.
    800012c4:	00008067          	ret

00000000800012c8 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800012c8:	00100513          	li	a0,1
    800012cc:	00008067          	ret

00000000800012d0 <rw_buffer_open>:
//

#include "../h/syscall_c.h"

int rw_buffer_open(rw_buffer_t* handle, const uint64 capacity)
{
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00113423          	sd	ra,8(sp)
    800012d8:	00813023          	sd	s0,0(sp)
    800012dc:	01010413          	addi	s0,sp,16
    800012e0:	00058613          	mv	a2,a1
    return (int)syscall(ECALL_RW_BUFFER_OPEN,
    800012e4:	00000793          	li	a5,0
    800012e8:	00000713          	li	a4,0
    800012ec:	00000693          	li	a3,0
    800012f0:	00050593          	mv	a1,a0
    800012f4:	02700513          	li	a0,39
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	fa8080e7          	jalr	-88(ra) # 800012a0 <syscall>
                        (uint64)handle, capacity, 0, 0, 0);
}
    80001300:	0005051b          	sext.w	a0,a0
    80001304:	00813083          	ld	ra,8(sp)
    80001308:	00013403          	ld	s0,0(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <rw_buffer_close>:

int rw_buffer_close(const rw_buffer_t handle)
{
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00113423          	sd	ra,8(sp)
    8000131c:	00813023          	sd	s0,0(sp)
    80001320:	01010413          	addi	s0,sp,16
    80001324:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_RW_BUFFER_CLOSE,
    80001328:	00000793          	li	a5,0
    8000132c:	00000713          	li	a4,0
    80001330:	00000693          	li	a3,0
    80001334:	00000613          	li	a2,0
    80001338:	02a00513          	li	a0,42
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	f64080e7          	jalr	-156(ra) # 800012a0 <syscall>
                        (uint64)handle, 0, 0, 0, 0);
}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	00813083          	ld	ra,8(sp)
    8000134c:	00013403          	ld	s0,0(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <rw_buffer_write>:

int rw_buffer_write(const rw_buffer_t handle, const void* src, const uint64 size)
{
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00113423          	sd	ra,8(sp)
    80001360:	00813023          	sd	s0,0(sp)
    80001364:	01010413          	addi	s0,sp,16
    80001368:	00060693          	mv	a3,a2
    return (int)syscall(ECALL_RW_BUFFER_WRITE,
    8000136c:	00000793          	li	a5,0
    80001370:	00000713          	li	a4,0
    80001374:	00058613          	mv	a2,a1
    80001378:	00050593          	mv	a1,a0
    8000137c:	02900513          	li	a0,41
    80001380:	00000097          	auipc	ra,0x0
    80001384:	f20080e7          	jalr	-224(ra) # 800012a0 <syscall>
                        (uint64)handle, (uint64)src, size, 0, 0);
}
    80001388:	0005051b          	sext.w	a0,a0
    8000138c:	00813083          	ld	ra,8(sp)
    80001390:	00013403          	ld	s0,0(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <rw_buffer_read>:

int rw_buffer_read(const rw_buffer_t handle, void* dst, const uint64 size)
{
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00113423          	sd	ra,8(sp)
    800013a4:	00813023          	sd	s0,0(sp)
    800013a8:	01010413          	addi	s0,sp,16
    800013ac:	00060693          	mv	a3,a2
    return (int)syscall(ECALL_RW_BUFFER_READ,
    800013b0:	00000793          	li	a5,0
    800013b4:	00000713          	li	a4,0
    800013b8:	00058613          	mv	a2,a1
    800013bc:	00050593          	mv	a1,a0
    800013c0:	02800513          	li	a0,40
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	edc080e7          	jalr	-292(ra) # 800012a0 <syscall>
                        (uint64)handle, (uint64)dst, size, 0, 0);
}
    800013cc:	0005051b          	sext.w	a0,a0
    800013d0:	00813083          	ld	ra,8(sp)
    800013d4:	00013403          	ld	s0,0(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <mem_alloc>:

void* mem_alloc(const size_t size)
{
    if (size == 0) return NULL;
    800013e0:	04050263          	beqz	a0,80001424 <mem_alloc+0x44>
{
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00113423          	sd	ra,8(sp)
    800013ec:	00813023          	sd	s0,0(sp)
    800013f0:	01010413          	addi	s0,sp,16
    800013f4:	00050593          	mv	a1,a0
    return (void*)syscall(ECALL_MEM_ALLOC, (uint64)size, 0, 0, 0, 0);
    800013f8:	00000793          	li	a5,0
    800013fc:	00000713          	li	a4,0
    80001400:	00000693          	li	a3,0
    80001404:	00000613          	li	a2,0
    80001408:	00100513          	li	a0,1
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	e94080e7          	jalr	-364(ra) # 800012a0 <syscall>
}
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret
    if (size == 0) return NULL;
    80001424:	00000513          	li	a0,0
}
    80001428:	00008067          	ret

000000008000142c <thread_join>:

int thread_join(thread_t thread)
{
    if (thread == NULL) return -1;
    8000142c:	04050463          	beqz	a0,80001474 <thread_join+0x48>
{
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00113423          	sd	ra,8(sp)
    80001438:	00813023          	sd	s0,0(sp)
    8000143c:	01010413          	addi	s0,sp,16
    80001440:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_THREAD_JOIN, (uint64)thread, 0, 0, 0, 0);
    80001444:	00000793          	li	a5,0
    80001448:	00000713          	li	a4,0
    8000144c:	00000693          	li	a3,0
    80001450:	00000613          	li	a2,0
    80001454:	01400513          	li	a0,20
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	e48080e7          	jalr	-440(ra) # 800012a0 <syscall>
    80001460:	0005051b          	sext.w	a0,a0
}
    80001464:	00813083          	ld	ra,8(sp)
    80001468:	00013403          	ld	s0,0(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret
    if (thread == NULL) return -1;
    80001474:	fff00513          	li	a0,-1
}
    80001478:	00008067          	ret

000000008000147c <thread_join_all>:

int thread_join_all()
{
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00113423          	sd	ra,8(sp)
    80001484:	00813023          	sd	s0,0(sp)
    80001488:	01010413          	addi	s0,sp,16
    return (int)syscall(ECALL_THREAD_JOIN_ALL, 0, 0, 0, 0, 0);
    8000148c:	00000793          	li	a5,0
    80001490:	00000713          	li	a4,0
    80001494:	00000693          	li	a3,0
    80001498:	00000613          	li	a2,0
    8000149c:	00000593          	li	a1,0
    800014a0:	01500513          	li	a0,21
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	dfc080e7          	jalr	-516(ra) # 800012a0 <syscall>
}
    800014ac:	0005051b          	sext.w	a0,a0
    800014b0:	00813083          	ld	ra,8(sp)
    800014b4:	00013403          	ld	s0,0(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <mem_free>:

int mem_free(void* ptr)
{
    if (ptr == NULL) return 0;
    800014c0:	04050463          	beqz	a0,80001508 <mem_free+0x48>
{
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00113423          	sd	ra,8(sp)
    800014cc:	00813023          	sd	s0,0(sp)
    800014d0:	01010413          	addi	s0,sp,16
    800014d4:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_MEM_FREE, (uint64)ptr, 0, 0, 0, 0);
    800014d8:	00000793          	li	a5,0
    800014dc:	00000713          	li	a4,0
    800014e0:	00000693          	li	a3,0
    800014e4:	00000613          	li	a2,0
    800014e8:	00200513          	li	a0,2
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	db4080e7          	jalr	-588(ra) # 800012a0 <syscall>
    800014f4:	0005051b          	sext.w	a0,a0
}
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret
    if (ptr == NULL) return 0;
    80001508:	00000513          	li	a0,0
}
    8000150c:	00008067          	ret

0000000080001510 <mem_set>:

void* mem_set(void* ptr, const char value, const size_t size)
{
    if (ptr == NULL) return NULL;
    80001510:	04050263          	beqz	a0,80001554 <mem_set+0x44>
{
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00113423          	sd	ra,8(sp)
    8000151c:	00813023          	sd	s0,0(sp)
    80001520:	01010413          	addi	s0,sp,16
    80001524:	00060693          	mv	a3,a2
    return (void*)syscall(ECALL_MEM_SET, (uint64)ptr, value, size, 0, 0);
    80001528:	00000793          	li	a5,0
    8000152c:	00000713          	li	a4,0
    80001530:	00058613          	mv	a2,a1
    80001534:	00050593          	mv	a1,a0
    80001538:	00300513          	li	a0,3
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	d64080e7          	jalr	-668(ra) # 800012a0 <syscall>
}
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret
    80001554:	00008067          	ret

0000000080001558 <thread_create>:

int thread_create(thread_t* handle, void (*method)(void*), void* args)
{
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00113423          	sd	ra,8(sp)
    80001560:	00813023          	sd	s0,0(sp)
    80001564:	01010413          	addi	s0,sp,16
    80001568:	00060693          	mv	a3,a2
    return (int)syscall(ECALL_THREAD_CREATE, (uint64)handle, (uint64)method, (uint64)args, 0, 0);
    8000156c:	00000793          	li	a5,0
    80001570:	00000713          	li	a4,0
    80001574:	00058613          	mv	a2,a1
    80001578:	00050593          	mv	a1,a0
    8000157c:	01100513          	li	a0,17
    80001580:	00000097          	auipc	ra,0x0
    80001584:	d20080e7          	jalr	-736(ra) # 800012a0 <syscall>
}
    80001588:	0005051b          	sext.w	a0,a0
    8000158c:	00813083          	ld	ra,8(sp)
    80001590:	00013403          	ld	s0,0(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <thread_exit>:

int thread_exit()
{
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00113423          	sd	ra,8(sp)
    800015a4:	00813023          	sd	s0,0(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return (int)syscall(ECALL_THREAD_EXIT, 0, 0, 0, 0, 0);
    800015ac:	00000793          	li	a5,0
    800015b0:	00000713          	li	a4,0
    800015b4:	00000693          	li	a3,0
    800015b8:	00000613          	li	a2,0
    800015bc:	00000593          	li	a1,0
    800015c0:	01200513          	li	a0,18
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	cdc080e7          	jalr	-804(ra) # 800012a0 <syscall>
}
    800015cc:	0005051b          	sext.w	a0,a0
    800015d0:	00813083          	ld	ra,8(sp)
    800015d4:	00013403          	ld	s0,0(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <thread_dispatch>:

void thread_dispatch()
{
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00113423          	sd	ra,8(sp)
    800015e8:	00813023          	sd	s0,0(sp)
    800015ec:	01010413          	addi	s0,sp,16
    syscall(ECALL_THREAD_DISPATCH, 0, 0, 0, 0, 0);
    800015f0:	00000793          	li	a5,0
    800015f4:	00000713          	li	a4,0
    800015f8:	00000693          	li	a3,0
    800015fc:	00000613          	li	a2,0
    80001600:	00000593          	li	a1,0
    80001604:	01300513          	li	a0,19
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	c98080e7          	jalr	-872(ra) # 800012a0 <syscall>
}
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <sem_open>:

int sem_open(sem_t* handle, const uint64 init)
{
    if (handle == NULL) return -1;
    80001620:	04050463          	beqz	a0,80001668 <sem_open+0x48>
{
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00113423          	sd	ra,8(sp)
    8000162c:	00813023          	sd	s0,0(sp)
    80001630:	01010413          	addi	s0,sp,16
    80001634:	00058613          	mv	a2,a1
    return (int)syscall(ECALL_SEM_OPEN, (uint64)handle, init, 0, 0, 0);
    80001638:	00000793          	li	a5,0
    8000163c:	00000713          	li	a4,0
    80001640:	00000693          	li	a3,0
    80001644:	00050593          	mv	a1,a0
    80001648:	02100513          	li	a0,33
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	c54080e7          	jalr	-940(ra) # 800012a0 <syscall>
    80001654:	0005051b          	sext.w	a0,a0
}
    80001658:	00813083          	ld	ra,8(sp)
    8000165c:	00013403          	ld	s0,0(sp)
    80001660:	01010113          	addi	sp,sp,16
    80001664:	00008067          	ret
    if (handle == NULL) return -1;
    80001668:	fff00513          	li	a0,-1
}
    8000166c:	00008067          	ret

0000000080001670 <sem_close>:


int sem_close(sem_t handle)
{
    if (handle == NULL) return -1;
    80001670:	04050463          	beqz	a0,800016b8 <sem_close+0x48>
{
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00113423          	sd	ra,8(sp)
    8000167c:	00813023          	sd	s0,0(sp)
    80001680:	01010413          	addi	s0,sp,16
    80001684:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_SEM_CLOSE, (uint64)handle, 0, 0, 0, 0);
    80001688:	00000793          	li	a5,0
    8000168c:	00000713          	li	a4,0
    80001690:	00000693          	li	a3,0
    80001694:	00000613          	li	a2,0
    80001698:	02200513          	li	a0,34
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	c04080e7          	jalr	-1020(ra) # 800012a0 <syscall>
    800016a4:	0005051b          	sext.w	a0,a0
}
    800016a8:	00813083          	ld	ra,8(sp)
    800016ac:	00013403          	ld	s0,0(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret
    if (handle == NULL) return -1;
    800016b8:	fff00513          	li	a0,-1
}
    800016bc:	00008067          	ret

00000000800016c0 <sem_wait>:

int sem_wait(const sem_t id)
{
    if (id == NULL) return -1;
    800016c0:	04050463          	beqz	a0,80001708 <sem_wait+0x48>
{
    800016c4:	ff010113          	addi	sp,sp,-16
    800016c8:	00113423          	sd	ra,8(sp)
    800016cc:	00813023          	sd	s0,0(sp)
    800016d0:	01010413          	addi	s0,sp,16
    800016d4:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_SEM_WAIT, (uint64)id, 0, 0, 0, 0);
    800016d8:	00000793          	li	a5,0
    800016dc:	00000713          	li	a4,0
    800016e0:	00000693          	li	a3,0
    800016e4:	00000613          	li	a2,0
    800016e8:	02300513          	li	a0,35
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	bb4080e7          	jalr	-1100(ra) # 800012a0 <syscall>
    800016f4:	0005051b          	sext.w	a0,a0
}
    800016f8:	00813083          	ld	ra,8(sp)
    800016fc:	00013403          	ld	s0,0(sp)
    80001700:	01010113          	addi	sp,sp,16
    80001704:	00008067          	ret
    if (id == NULL) return -1;
    80001708:	fff00513          	li	a0,-1
}
    8000170c:	00008067          	ret

0000000080001710 <sem_signal>:

int sem_signal(const sem_t id)
{
    if (id == NULL) return -1;
    80001710:	04050463          	beqz	a0,80001758 <sem_signal+0x48>
{
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00113423          	sd	ra,8(sp)
    8000171c:	00813023          	sd	s0,0(sp)
    80001720:	01010413          	addi	s0,sp,16
    80001724:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_SEM_SIGNAL, (uint64)id, 0, 0, 0, 0);
    80001728:	00000793          	li	a5,0
    8000172c:	00000713          	li	a4,0
    80001730:	00000693          	li	a3,0
    80001734:	00000613          	li	a2,0
    80001738:	02400513          	li	a0,36
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	b64080e7          	jalr	-1180(ra) # 800012a0 <syscall>
    80001744:	0005051b          	sext.w	a0,a0
}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret
    if (id == NULL) return -1;
    80001758:	fff00513          	li	a0,-1
}
    8000175c:	00008067          	ret

0000000080001760 <sem_wait_n>:

int sem_wait_n(const sem_t id, const unsigned n)
{
    if (id == NULL || n == 0) return -1;
    80001760:	04050863          	beqz	a0,800017b0 <sem_wait_n+0x50>
    80001764:	04058a63          	beqz	a1,800017b8 <sem_wait_n+0x58>
{
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00113423          	sd	ra,8(sp)
    80001770:	00813023          	sd	s0,0(sp)
    80001774:	01010413          	addi	s0,sp,16
    return (int)syscall(ECALL_SEM_WAIT_N, (uint64)id, (uint64)n, 0, 0, 0);
    80001778:	00000793          	li	a5,0
    8000177c:	00000713          	li	a4,0
    80001780:	00000693          	li	a3,0
    80001784:	02059613          	slli	a2,a1,0x20
    80001788:	02065613          	srli	a2,a2,0x20
    8000178c:	00050593          	mv	a1,a0
    80001790:	02500513          	li	a0,37
    80001794:	00000097          	auipc	ra,0x0
    80001798:	b0c080e7          	jalr	-1268(ra) # 800012a0 <syscall>
    8000179c:	0005051b          	sext.w	a0,a0
}
    800017a0:	00813083          	ld	ra,8(sp)
    800017a4:	00013403          	ld	s0,0(sp)
    800017a8:	01010113          	addi	sp,sp,16
    800017ac:	00008067          	ret
    if (id == NULL || n == 0) return -1;
    800017b0:	fff00513          	li	a0,-1
    800017b4:	00008067          	ret
    800017b8:	fff00513          	li	a0,-1
}
    800017bc:	00008067          	ret

00000000800017c0 <sem_signal_n>:

int sem_signal_n(const sem_t id, const unsigned n)
{
    if (id == NULL || n == 0) return -1;
    800017c0:	04050863          	beqz	a0,80001810 <sem_signal_n+0x50>
    800017c4:	04058a63          	beqz	a1,80001818 <sem_signal_n+0x58>
{
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
    return (int)syscall(ECALL_SEM_SIGNAL_N, (uint64)id, (uint64)n, 0, 0, 0);
    800017d8:	00000793          	li	a5,0
    800017dc:	00000713          	li	a4,0
    800017e0:	00000693          	li	a3,0
    800017e4:	02059613          	slli	a2,a1,0x20
    800017e8:	02065613          	srli	a2,a2,0x20
    800017ec:	00050593          	mv	a1,a0
    800017f0:	02600513          	li	a0,38
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	aac080e7          	jalr	-1364(ra) # 800012a0 <syscall>
    800017fc:	0005051b          	sext.w	a0,a0
}
    80001800:	00813083          	ld	ra,8(sp)
    80001804:	00013403          	ld	s0,0(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret
    if (id == NULL || n == 0) return -1;
    80001810:	fff00513          	li	a0,-1
    80001814:	00008067          	ret
    80001818:	fff00513          	li	a0,-1
}
    8000181c:	00008067          	ret

0000000080001820 <time_sleep>:

int time_sleep(const time_t ticks)
{
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00113423          	sd	ra,8(sp)
    80001828:	00813023          	sd	s0,0(sp)
    8000182c:	01010413          	addi	s0,sp,16
    80001830:	00050593          	mv	a1,a0
    return (int)syscall(ECALL_SLEEP, (uint64)ticks, 0, 0, 0, 0);
    80001834:	00000793          	li	a5,0
    80001838:	00000713          	li	a4,0
    8000183c:	00000693          	li	a3,0
    80001840:	00000613          	li	a2,0
    80001844:	03100513          	li	a0,49
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	a58080e7          	jalr	-1448(ra) # 800012a0 <syscall>
}
    80001850:	0005051b          	sext.w	a0,a0
    80001854:	00813083          	ld	ra,8(sp)
    80001858:	00013403          	ld	s0,0(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret

0000000080001864 <puts>:

void puts(const char* s)
{
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00113423          	sd	ra,8(sp)
    8000186c:	00813023          	sd	s0,0(sp)
    80001870:	01010413          	addi	s0,sp,16
    80001874:	00050593          	mv	a1,a0
    syscall(ECALL_CONSOLE_PUTS, (uint64)s, 0, 0, 0, 0);
    80001878:	00000793          	li	a5,0
    8000187c:	00000713          	li	a4,0
    80001880:	00000693          	li	a3,0
    80001884:	00000613          	li	a2,0
    80001888:	04400513          	li	a0,68
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	a14080e7          	jalr	-1516(ra) # 800012a0 <syscall>
}
    80001894:	00813083          	ld	ra,8(sp)
    80001898:	00013403          	ld	s0,0(sp)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret

00000000800018a4 <gets>:
void gets(char* buf, const int max)
{
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00113423          	sd	ra,8(sp)
    800018ac:	00813023          	sd	s0,0(sp)
    800018b0:	01010413          	addi	s0,sp,16
    800018b4:	00058613          	mv	a2,a1
    syscall(ECALL_CONSOLE_GETS, (uint64)buf, (uint64)max, 0, 0, 0);
    800018b8:	00000793          	li	a5,0
    800018bc:	00000713          	li	a4,0
    800018c0:	00000693          	li	a3,0
    800018c4:	00050593          	mv	a1,a0
    800018c8:	04300513          	li	a0,67
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	9d4080e7          	jalr	-1580(ra) # 800012a0 <syscall>
}
    800018d4:	00813083          	ld	ra,8(sp)
    800018d8:	00013403          	ld	s0,0(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <getc>:

char getc()
{
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16
    return (char)syscall(ECALL_CONSOLE_GETC, 0, 0, 0, 0, 0);
    800018f4:	00000793          	li	a5,0
    800018f8:	00000713          	li	a4,0
    800018fc:	00000693          	li	a3,0
    80001900:	00000613          	li	a2,0
    80001904:	00000593          	li	a1,0
    80001908:	04100513          	li	a0,65
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	994080e7          	jalr	-1644(ra) # 800012a0 <syscall>
}
    80001914:	0ff57513          	zext.b	a0,a0
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <putc>:

void putc(const char c)
{
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00113423          	sd	ra,8(sp)
    80001930:	00813023          	sd	s0,0(sp)
    80001934:	01010413          	addi	s0,sp,16
    80001938:	00050593          	mv	a1,a0
    syscall(ECALL_CONSOLE_PUTC, (uint64)c, 0, 0, 0, 0);
    8000193c:	00000793          	li	a5,0
    80001940:	00000713          	li	a4,0
    80001944:	00000693          	li	a3,0
    80001948:	00000613          	li	a2,0
    8000194c:	04200513          	li	a0,66
    80001950:	00000097          	auipc	ra,0x0
    80001954:	950080e7          	jalr	-1712(ra) # 800012a0 <syscall>
}
    80001958:	00813083          	ld	ra,8(sp)
    8000195c:	00013403          	ld	s0,0(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret

0000000080001968 <kernel_sem_new>:
#include "../h/kernel_threading.h"
#include "../lib/hw.h"


int kernel_sem_new(sem_t* handle, const uint64 val)
{
    80001968:	fd010113          	addi	sp,sp,-48
    8000196c:	02113423          	sd	ra,40(sp)
    80001970:	02813023          	sd	s0,32(sp)
    80001974:	00913c23          	sd	s1,24(sp)
    80001978:	01213823          	sd	s2,16(sp)
    8000197c:	01313423          	sd	s3,8(sp)
    80001980:	03010413          	addi	s0,sp,48
    80001984:	00050913          	mv	s2,a0
    80001988:	00058493          	mv	s1,a1

//todo move
inline uint64 r_sstatus(void)
{
    uint64 x;
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000198c:	100027f3          	csrr	a5,sstatus
}

inline int intr_save(void)
{
    uint64 sstatus = r_sstatus();
    if (sstatus & SSTATUS_SIE)
    80001990:	0027f713          	andi	a4,a5,2
    80001994:	04071a63          	bnez	a4,800019e8 <kernel_sem_new+0x80>
    {
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
        return 1;
    }
    return 0; // Interrupts were already disabled
    80001998:	00000993          	li	s3,0
    const int lock = intr_save();
    sem_t sem = kernel_mem_alloc(sizeof(struct _sem));
    8000199c:	01800513          	li	a0,24
    800019a0:	00002097          	auipc	ra,0x2
    800019a4:	b04080e7          	jalr	-1276(ra) # 800034a4 <kernel_mem_alloc>
    if (sem == NULL)
    800019a8:	04050863          	beqz	a0,800019f8 <kernel_sem_new+0x90>
    {
        intr_restore(lock);
        return -1;
    }

    sem->wait_queue = NULL;
    800019ac:	00053823          	sd	zero,16(a0)
    sem->value = val;
    800019b0:	00952423          	sw	s1,8(a0)
}

inline void intr_restore(int previous_state)
{
    if (previous_state)
    800019b4:	06098863          	beqz	s3,80001a24 <kernel_sem_new+0xbc>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800019b8:	100027f3          	csrr	a5,sstatus
    {
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    800019bc:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800019c0:	10079073          	csrw	sstatus,a5
    intr_restore(lock);
    *handle = sem;
    800019c4:	00a93023          	sd	a0,0(s2)
    return 0;
    800019c8:	00000513          	li	a0,0
}
    800019cc:	02813083          	ld	ra,40(sp)
    800019d0:	02013403          	ld	s0,32(sp)
    800019d4:	01813483          	ld	s1,24(sp)
    800019d8:	01013903          	ld	s2,16(sp)
    800019dc:	00813983          	ld	s3,8(sp)
    800019e0:	03010113          	addi	sp,sp,48
    800019e4:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    800019e8:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800019ec:	10079073          	csrw	sstatus,a5
        return 1;
    800019f0:	00100993          	li	s3,1
    800019f4:	fa9ff06f          	j	8000199c <kernel_sem_new+0x34>
    if (previous_state)
    800019f8:	00098c63          	beqz	s3,80001a10 <kernel_sem_new+0xa8>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800019fc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001a00:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001a04:	10079073          	csrw	sstatus,a5
        return -1;
    80001a08:	fff00513          	li	a0,-1
}
    80001a0c:	fc1ff06f          	j	800019cc <kernel_sem_new+0x64>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001a10:	100027f3          	csrr	a5,sstatus
    }
    else
    {
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001a14:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001a18:	10079073          	csrw	sstatus,a5
    80001a1c:	fff00513          	li	a0,-1
}
    80001a20:	fadff06f          	j	800019cc <kernel_sem_new+0x64>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001a24:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001a28:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001a2c:	10079073          	csrw	sstatus,a5
}
    80001a30:	f95ff06f          	j	800019c4 <kernel_sem_new+0x5c>

0000000080001a34 <kernel_sem_close>:

int kernel_sem_close(const sem_t handle)
{
    80001a34:	fd010113          	addi	sp,sp,-48
    80001a38:	02113423          	sd	ra,40(sp)
    80001a3c:	02813023          	sd	s0,32(sp)
    80001a40:	01313423          	sd	s3,8(sp)
    80001a44:	03010413          	addi	s0,sp,48
    if (handle == NULL)
    80001a48:	0a050863          	beqz	a0,80001af8 <kernel_sem_close+0xc4>
    80001a4c:	00913c23          	sd	s1,24(sp)
    80001a50:	01213823          	sd	s2,16(sp)
    80001a54:	00050913          	mv	s2,a0
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001a58:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80001a5c:	0027f713          	andi	a4,a5,2
    80001a60:	00071863          	bnez	a4,80001a70 <kernel_sem_close+0x3c>
    return 0; // Interrupts were already disabled
    80001a64:	00000993          	li	s3,0
        return -1;

    const int intr_state = intr_save();

    thread_t waiter = handle->wait_queue;
    80001a68:	01093503          	ld	a0,16(s2)
    while (waiter != NULL)
    80001a6c:	0300006f          	j	80001a9c <kernel_sem_close+0x68>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80001a70:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001a74:	10079073          	csrw	sstatus,a5
        return 1;
    80001a78:	00100993          	li	s3,1
    80001a7c:	fedff06f          	j	80001a68 <kernel_sem_close+0x34>
    {
        const thread_t next = waiter->next;
    80001a80:	0a053483          	ld	s1,160(a0)
        waiter->wakeup_retval = -1;
    80001a84:	fff00793          	li	a5,-1
    80001a88:	0cf52023          	sw	a5,192(a0)
        waiter->state = THREAD_READY;
    80001a8c:	00052423          	sw	zero,8(a0)
        kernel_scheduler_append(waiter);
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	f88080e7          	jalr	-120(ra) # 80002a18 <kernel_scheduler_append>
        waiter = next;
    80001a98:	00048513          	mv	a0,s1
    while (waiter != NULL)
    80001a9c:	fe0512e3          	bnez	a0,80001a80 <kernel_sem_close+0x4c>
    }
    kernel_mem_free(handle);
    80001aa0:	00090513          	mv	a0,s2
    80001aa4:	00002097          	auipc	ra,0x2
    80001aa8:	b98080e7          	jalr	-1128(ra) # 8000363c <kernel_mem_free>
    if (previous_state)
    80001aac:	02098a63          	beqz	s3,80001ae0 <kernel_sem_close+0xac>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ab0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001ab4:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ab8:	10079073          	csrw	sstatus,a5
    intr_restore(intr_state);
    return 0;
    80001abc:	00000993          	li	s3,0
}
    80001ac0:	01813483          	ld	s1,24(sp)
    80001ac4:	01013903          	ld	s2,16(sp)
}
    80001ac8:	00098513          	mv	a0,s3
    80001acc:	02813083          	ld	ra,40(sp)
    80001ad0:	02013403          	ld	s0,32(sp)
    80001ad4:	00813983          	ld	s3,8(sp)
    80001ad8:	03010113          	addi	sp,sp,48
    80001adc:	00008067          	ret
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ae0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001ae4:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ae8:	10079073          	csrw	sstatus,a5
}
    80001aec:	01813483          	ld	s1,24(sp)
    80001af0:	01013903          	ld	s2,16(sp)
    80001af4:	fd5ff06f          	j	80001ac8 <kernel_sem_close+0x94>
        return -1;
    80001af8:	fff00993          	li	s3,-1
    80001afc:	fcdff06f          	j	80001ac8 <kernel_sem_close+0x94>

0000000080001b00 <kernel_sem_wait>:

int kernel_sem_wait(const sem_t sem)
{
    80001b00:	fd010113          	addi	sp,sp,-48
    80001b04:	02113423          	sd	ra,40(sp)
    80001b08:	02813023          	sd	s0,32(sp)
    80001b0c:	01313423          	sd	s3,8(sp)
    80001b10:	03010413          	addi	s0,sp,48
    if (sem == NULL)
    80001b14:	12050c63          	beqz	a0,80001c4c <kernel_sem_wait+0x14c>
    80001b18:	00913c23          	sd	s1,24(sp)
    80001b1c:	01213823          	sd	s2,16(sp)
    80001b20:	00050493          	mv	s1,a0
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001b24:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80001b28:	0027f713          	andi	a4,a5,2
    80001b2c:	06071063          	bnez	a4,80001b8c <kernel_sem_wait+0x8c>
    return 0; // Interrupts were already disabled
    80001b30:	00000993          	li	s3,0
    {
        return -1;
    }
    const int intr_state = intr_save();
    const thread_t current = kernel_scheduler_get_current_thread();
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	b2c080e7          	jalr	-1236(ra) # 80002660 <kernel_scheduler_get_current_thread>
    80001b3c:	00050913          	mv	s2,a0

    if (current == NULL)
    80001b40:	04050e63          	beqz	a0,80001b9c <kernel_sem_wait+0x9c>
    {
        intr_restore(intr_state);
        return -1;
    }

    sem->value--;
    80001b44:	0084a783          	lw	a5,8(s1)
    80001b48:	fff7879b          	addiw	a5,a5,-1
    80001b4c:	00f4a423          	sw	a5,8(s1)
    if (sem->value < 0)
    80001b50:	02079713          	slli	a4,a5,0x20
    80001b54:	08074263          	bltz	a4,80001bd8 <kernel_sem_wait+0xd8>
    if (previous_state)
    80001b58:	0c098e63          	beqz	s3,80001c34 <kernel_sem_wait+0x134>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001b5c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001b60:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001b64:	10079073          	csrw	sstatus,a5
        const int retval = current->wakeup_retval;
        intr_restore(intr_state);
        return retval;
    }
    intr_restore(intr_state);
    return 0;
    80001b68:	00000993          	li	s3,0
}
    80001b6c:	01813483          	ld	s1,24(sp)
    80001b70:	01013903          	ld	s2,16(sp)
}
    80001b74:	00098513          	mv	a0,s3
    80001b78:	02813083          	ld	ra,40(sp)
    80001b7c:	02013403          	ld	s0,32(sp)
    80001b80:	00813983          	ld	s3,8(sp)
    80001b84:	03010113          	addi	sp,sp,48
    80001b88:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80001b8c:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001b90:	10079073          	csrw	sstatus,a5
        return 1;
    80001b94:	00100993          	li	s3,1
    80001b98:	f9dff06f          	j	80001b34 <kernel_sem_wait+0x34>
    if (previous_state)
    80001b9c:	02098063          	beqz	s3,80001bbc <kernel_sem_wait+0xbc>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ba0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001ba4:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ba8:	10079073          	csrw	sstatus,a5
        return -1;
    80001bac:	fff00993          	li	s3,-1
}
    80001bb0:	01813483          	ld	s1,24(sp)
    80001bb4:	01013903          	ld	s2,16(sp)
    80001bb8:	fbdff06f          	j	80001b74 <kernel_sem_wait+0x74>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001bbc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001bc0:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001bc4:	10079073          	csrw	sstatus,a5
    80001bc8:	fff00993          	li	s3,-1
}
    80001bcc:	01813483          	ld	s1,24(sp)
    80001bd0:	01013903          	ld	s2,16(sp)
    80001bd4:	fa1ff06f          	j	80001b74 <kernel_sem_wait+0x74>
        current->state = THREAD_BLOCKED;
    80001bd8:	00200793          	li	a5,2
    80001bdc:	00f52423          	sw	a5,8(a0)
        current->next = sem->wait_queue;
    80001be0:	0104b783          	ld	a5,16(s1)
    80001be4:	0af53023          	sd	a5,160(a0)
        sem->wait_queue = current;
    80001be8:	00a4b823          	sd	a0,16(s1)
        kernel_thread_dispatch();
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	d20080e7          	jalr	-736(ra) # 8000290c <kernel_thread_dispatch>
        const int retval = current->wakeup_retval;
    80001bf4:	0c092783          	lw	a5,192(s2)
    if (previous_state)
    80001bf8:	02098063          	beqz	s3,80001c18 <kernel_sem_wait+0x118>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001bfc:	10002773          	csrr	a4,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001c00:	00276713          	ori	a4,a4,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001c04:	10071073          	csrw	sstatus,a4
        return retval;
    80001c08:	00078993          	mv	s3,a5
}
    80001c0c:	01813483          	ld	s1,24(sp)
    80001c10:	01013903          	ld	s2,16(sp)
    80001c14:	f61ff06f          	j	80001b74 <kernel_sem_wait+0x74>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001c18:	10002773          	csrr	a4,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001c1c:	ffd77713          	andi	a4,a4,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001c20:	10071073          	csrw	sstatus,a4
    80001c24:	00078993          	mv	s3,a5
}
    80001c28:	01813483          	ld	s1,24(sp)
    80001c2c:	01013903          	ld	s2,16(sp)
    80001c30:	f45ff06f          	j	80001b74 <kernel_sem_wait+0x74>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001c34:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001c38:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001c3c:	10079073          	csrw	sstatus,a5
}
    80001c40:	01813483          	ld	s1,24(sp)
    80001c44:	01013903          	ld	s2,16(sp)
    80001c48:	f2dff06f          	j	80001b74 <kernel_sem_wait+0x74>
        return -1;
    80001c4c:	fff00993          	li	s3,-1
    80001c50:	f25ff06f          	j	80001b74 <kernel_sem_wait+0x74>

0000000080001c54 <kernel_sem_signal>:


int kernel_sem_signal(sem_t sem)
{
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	00913423          	sd	s1,8(sp)
    80001c64:	02010413          	addi	s0,sp,32
    if (sem == NULL)
    80001c68:	0c050063          	beqz	a0,80001d28 <kernel_sem_signal+0xd4>
    80001c6c:	00050793          	mv	a5,a0
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001c70:	10002773          	csrr	a4,sstatus
    if (sstatus & SSTATUS_SIE)
    80001c74:	00277693          	andi	a3,a4,2
    80001c78:	04069463          	bnez	a3,80001cc0 <kernel_sem_signal+0x6c>
    return 0; // Interrupts were already disabled
    80001c7c:	00000493          	li	s1,0
    {
        return -1;
    }
    const int intr_state = intr_save();
    sem->value++;
    80001c80:	0087a703          	lw	a4,8(a5)
    80001c84:	0017071b          	addiw	a4,a4,1
    80001c88:	0007069b          	sext.w	a3,a4
    80001c8c:	00e7a423          	sw	a4,8(a5)
    if (sem->value <= 0)
    80001c90:	04d05063          	blez	a3,80001cd0 <kernel_sem_signal+0x7c>
    if (previous_state)
    80001c94:	08048263          	beqz	s1,80001d18 <kernel_sem_signal+0xc4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001c98:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001c9c:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ca0:	10079073          	csrw	sstatus,a5
        sem->wait_queue = wakeup->next;
        wakeup->state = THREAD_READY;
        kernel_scheduler_append(wakeup);
    }
    intr_restore(intr_state);
    return 0;
    80001ca4:	00000493          	li	s1,0
}
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	01813083          	ld	ra,24(sp)
    80001cb0:	01013403          	ld	s0,16(sp)
    80001cb4:	00813483          	ld	s1,8(sp)
    80001cb8:	02010113          	addi	sp,sp,32
    80001cbc:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80001cc0:	ffd77713          	andi	a4,a4,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001cc4:	10071073          	csrw	sstatus,a4
        return 1;
    80001cc8:	00100493          	li	s1,1
    80001ccc:	fb5ff06f          	j	80001c80 <kernel_sem_signal+0x2c>
        const thread_t wakeup = sem->wait_queue;
    80001cd0:	0107b503          	ld	a0,16(a5)
        if (wakeup == NULL)
    80001cd4:	00050e63          	beqz	a0,80001cf0 <kernel_sem_signal+0x9c>
        sem->wait_queue = wakeup->next;
    80001cd8:	0a053703          	ld	a4,160(a0)
    80001cdc:	00e7b823          	sd	a4,16(a5)
        wakeup->state = THREAD_READY;
    80001ce0:	00052423          	sw	zero,8(a0)
        kernel_scheduler_append(wakeup);
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	d34080e7          	jalr	-716(ra) # 80002a18 <kernel_scheduler_append>
    80001cec:	fa9ff06f          	j	80001c94 <kernel_sem_signal+0x40>
    if (previous_state)
    80001cf0:	00048c63          	beqz	s1,80001d08 <kernel_sem_signal+0xb4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001cf4:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001cf8:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001cfc:	10079073          	csrw	sstatus,a5
            return 0;
    80001d00:	00000493          	li	s1,0
}
    80001d04:	fa5ff06f          	j	80001ca8 <kernel_sem_signal+0x54>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001d08:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001d0c:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001d10:	10079073          	csrw	sstatus,a5
}
    80001d14:	f95ff06f          	j	80001ca8 <kernel_sem_signal+0x54>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001d18:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001d1c:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001d20:	10079073          	csrw	sstatus,a5
}
    80001d24:	f85ff06f          	j	80001ca8 <kernel_sem_signal+0x54>
        return -1;
    80001d28:	fff00493          	li	s1,-1
    80001d2c:	f7dff06f          	j	80001ca8 <kernel_sem_signal+0x54>

0000000080001d30 <kernel_rw_buffer_close>:

#include "../h/kernel_synchronized.h"

int kernel_rw_buffer_close(rw_buffer_t handle)
{
    if (!handle) return -1;
    80001d30:	06050e63          	beqz	a0,80001dac <kernel_rw_buffer_close+0x7c>
{
    80001d34:	fe010113          	addi	sp,sp,-32
    80001d38:	00113c23          	sd	ra,24(sp)
    80001d3c:	00813823          	sd	s0,16(sp)
    80001d40:	00913423          	sd	s1,8(sp)
    80001d44:	02010413          	addi	s0,sp,32
    80001d48:	00050493          	mv	s1,a0
    kernel_sem_close(handle->empty);
    80001d4c:	02053503          	ld	a0,32(a0)
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	ce4080e7          	jalr	-796(ra) # 80001a34 <kernel_sem_close>
    kernel_sem_close(handle->full);
    80001d58:	0284b503          	ld	a0,40(s1)
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	cd8080e7          	jalr	-808(ra) # 80001a34 <kernel_sem_close>
    kernel_sem_close(handle->wr_mtx);
    80001d64:	0304b503          	ld	a0,48(s1)
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	ccc080e7          	jalr	-820(ra) # 80001a34 <kernel_sem_close>
    kernel_sem_close(handle->rd_mtx);
    80001d70:	0384b503          	ld	a0,56(s1)
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	cc0080e7          	jalr	-832(ra) # 80001a34 <kernel_sem_close>
    kernel_mem_free(handle->buf);
    80001d7c:	0004b503          	ld	a0,0(s1)
    80001d80:	00002097          	auipc	ra,0x2
    80001d84:	8bc080e7          	jalr	-1860(ra) # 8000363c <kernel_mem_free>
    kernel_mem_free(handle);
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00002097          	auipc	ra,0x2
    80001d90:	8b0080e7          	jalr	-1872(ra) # 8000363c <kernel_mem_free>
    return 0;
    80001d94:	00000513          	li	a0,0
}
    80001d98:	01813083          	ld	ra,24(sp)
    80001d9c:	01013403          	ld	s0,16(sp)
    80001da0:	00813483          	ld	s1,8(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret
    if (!handle) return -1;
    80001dac:	fff00513          	li	a0,-1
}
    80001db0:	00008067          	ret

0000000080001db4 <kernel_rw_buffer_open>:


int kernel_rw_buffer_open(rw_buffer_t* handle, uint64 capacity)
{
    80001db4:	fd010113          	addi	sp,sp,-48
    80001db8:	02113423          	sd	ra,40(sp)
    80001dbc:	02813023          	sd	s0,32(sp)
    80001dc0:	00913c23          	sd	s1,24(sp)
    80001dc4:	01213823          	sd	s2,16(sp)
    80001dc8:	01313423          	sd	s3,8(sp)
    80001dcc:	01413023          	sd	s4,0(sp)
    80001dd0:	03010413          	addi	s0,sp,48
    80001dd4:	00050993          	mv	s3,a0
    80001dd8:	00058913          	mv	s2,a1
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ddc:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80001de0:	0027f713          	andi	a4,a5,2
    80001de4:	0c071a63          	bnez	a4,80001eb8 <kernel_rw_buffer_open+0x104>
    return 0; // Interrupts were already disabled
    80001de8:	00000a13          	li	s4,0
    const int lock = intr_save();
    const rw_buffer_t buf = (rw_buffer_t)(kernel_mem_alloc(sizeof(struct _rw_buffer)));
    80001dec:	04000513          	li	a0,64
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	6b4080e7          	jalr	1716(ra) # 800034a4 <kernel_mem_alloc>
    80001df8:	00050493          	mv	s1,a0
    if (!buf)
    80001dfc:	0c050663          	beqz	a0,80001ec8 <kernel_rw_buffer_open+0x114>
    {
        intr_restore(lock);
        return -1;
    }

    buf->buf = (uint8*)(kernel_mem_alloc(capacity));
    80001e00:	00090513          	mv	a0,s2
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	6a0080e7          	jalr	1696(ra) # 800034a4 <kernel_mem_alloc>
    80001e0c:	00a4b023          	sd	a0,0(s1)
    if (!buf->buf)
    80001e10:	0e050263          	beqz	a0,80001ef4 <kernel_rw_buffer_open+0x140>
        kernel_mem_free(buf);
        intr_restore(lock);
        return -1;
    }

    buf->capacity = capacity;
    80001e14:	0124b423          	sd	s2,8(s1)
    buf->rd = 0;
    80001e18:	0004b823          	sd	zero,16(s1)
    buf->wr = 0;
    80001e1c:	0004bc23          	sd	zero,24(s1)
    buf->empty = (sem_t)NULL;
    80001e20:	0204b023          	sd	zero,32(s1)
    buf->full = (sem_t)NULL;
    80001e24:	0204b423          	sd	zero,40(s1)
    buf->wr_mtx = (sem_t)NULL;
    80001e28:	0204b823          	sd	zero,48(s1)
    buf->rd_mtx = (sem_t)NULL;
    80001e2c:	0204bc23          	sd	zero,56(s1)
    if (previous_state)
    80001e30:	0e0a0e63          	beqz	s4,80001f2c <kernel_rw_buffer_open+0x178>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001e34:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001e38:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001e3c:	10079073          	csrw	sstatus,a5
    intr_restore(lock);

    if (kernel_sem_new(&(buf->empty), capacity) < 0) goto fail;
    80001e40:	00090593          	mv	a1,s2
    80001e44:	02048513          	addi	a0,s1,32
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	b20080e7          	jalr	-1248(ra) # 80001968 <kernel_sem_new>
    80001e50:	0e054663          	bltz	a0,80001f3c <kernel_rw_buffer_open+0x188>
    if (kernel_sem_new(&(buf->full), 0) < 0) goto fail;
    80001e54:	00000593          	li	a1,0
    80001e58:	02848513          	addi	a0,s1,40
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	b0c080e7          	jalr	-1268(ra) # 80001968 <kernel_sem_new>
    80001e64:	0c054c63          	bltz	a0,80001f3c <kernel_rw_buffer_open+0x188>
    if (kernel_sem_new(&(buf->wr_mtx), 1) < 0) goto fail;
    80001e68:	00100593          	li	a1,1
    80001e6c:	03048513          	addi	a0,s1,48
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	af8080e7          	jalr	-1288(ra) # 80001968 <kernel_sem_new>
    80001e78:	0c054263          	bltz	a0,80001f3c <kernel_rw_buffer_open+0x188>
    if (kernel_sem_new(&(buf->rd_mtx), 1) < 0) goto fail;
    80001e7c:	00100593          	li	a1,1
    80001e80:	03848513          	addi	a0,s1,56
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	ae4080e7          	jalr	-1308(ra) # 80001968 <kernel_sem_new>
    80001e8c:	0a054863          	bltz	a0,80001f3c <kernel_rw_buffer_open+0x188>
    *handle = buf;
    80001e90:	0099b023          	sd	s1,0(s3)
    return 0;
    80001e94:	00000513          	li	a0,0
    if (buf->wr_mtx) kernel_sem_close(buf->wr_mtx);
    if (buf->rd_mtx) kernel_sem_close(buf->rd_mtx);
    kernel_mem_free(buf->buf);
    kernel_mem_free(buf);
    return -1;
}
    80001e98:	02813083          	ld	ra,40(sp)
    80001e9c:	02013403          	ld	s0,32(sp)
    80001ea0:	01813483          	ld	s1,24(sp)
    80001ea4:	01013903          	ld	s2,16(sp)
    80001ea8:	00813983          	ld	s3,8(sp)
    80001eac:	00013a03          	ld	s4,0(sp)
    80001eb0:	03010113          	addi	sp,sp,48
    80001eb4:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80001eb8:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ebc:	10079073          	csrw	sstatus,a5
        return 1;
    80001ec0:	00100a13          	li	s4,1
    80001ec4:	f29ff06f          	j	80001dec <kernel_rw_buffer_open+0x38>
    if (previous_state)
    80001ec8:	000a0c63          	beqz	s4,80001ee0 <kernel_rw_buffer_open+0x12c>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ecc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001ed0:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ed4:	10079073          	csrw	sstatus,a5
        return -1;
    80001ed8:	fff00513          	li	a0,-1
}
    80001edc:	fbdff06f          	j	80001e98 <kernel_rw_buffer_open+0xe4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ee0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001ee4:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ee8:	10079073          	csrw	sstatus,a5
    80001eec:	fff00513          	li	a0,-1
}
    80001ef0:	fa9ff06f          	j	80001e98 <kernel_rw_buffer_open+0xe4>
        kernel_mem_free(buf);
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	744080e7          	jalr	1860(ra) # 8000363c <kernel_mem_free>
    if (previous_state)
    80001f00:	000a0c63          	beqz	s4,80001f18 <kernel_rw_buffer_open+0x164>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001f04:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80001f08:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001f0c:	10079073          	csrw	sstatus,a5
        return -1;
    80001f10:	fff00513          	li	a0,-1
}
    80001f14:	f85ff06f          	j	80001e98 <kernel_rw_buffer_open+0xe4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001f18:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001f1c:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001f20:	10079073          	csrw	sstatus,a5
    80001f24:	fff00513          	li	a0,-1
}
    80001f28:	f71ff06f          	j	80001e98 <kernel_rw_buffer_open+0xe4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001f2c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80001f30:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001f34:	10079073          	csrw	sstatus,a5
}
    80001f38:	f09ff06f          	j	80001e40 <kernel_rw_buffer_open+0x8c>
        if (buf->empty) kernel_sem_close(buf->empty);
    80001f3c:	0204b503          	ld	a0,32(s1)
    80001f40:	00050663          	beqz	a0,80001f4c <kernel_rw_buffer_open+0x198>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	af0080e7          	jalr	-1296(ra) # 80001a34 <kernel_sem_close>
    if (buf->full) kernel_sem_close(buf->full);
    80001f4c:	0284b503          	ld	a0,40(s1)
    80001f50:	00050663          	beqz	a0,80001f5c <kernel_rw_buffer_open+0x1a8>
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	ae0080e7          	jalr	-1312(ra) # 80001a34 <kernel_sem_close>
    if (buf->wr_mtx) kernel_sem_close(buf->wr_mtx);
    80001f5c:	0304b503          	ld	a0,48(s1)
    80001f60:	00050663          	beqz	a0,80001f6c <kernel_rw_buffer_open+0x1b8>
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	ad0080e7          	jalr	-1328(ra) # 80001a34 <kernel_sem_close>
    if (buf->rd_mtx) kernel_sem_close(buf->rd_mtx);
    80001f6c:	0384b503          	ld	a0,56(s1)
    80001f70:	00050663          	beqz	a0,80001f7c <kernel_rw_buffer_open+0x1c8>
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	ac0080e7          	jalr	-1344(ra) # 80001a34 <kernel_sem_close>
    kernel_mem_free(buf->buf);
    80001f7c:	0004b503          	ld	a0,0(s1)
    80001f80:	00001097          	auipc	ra,0x1
    80001f84:	6bc080e7          	jalr	1724(ra) # 8000363c <kernel_mem_free>
    kernel_mem_free(buf);
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	6b0080e7          	jalr	1712(ra) # 8000363c <kernel_mem_free>
    return -1;
    80001f94:	fff00513          	li	a0,-1
    80001f98:	f01ff06f          	j	80001e98 <kernel_rw_buffer_open+0xe4>

0000000080001f9c <kernel_rw_buffer_write>:


int kernel_rw_buffer_write(const rw_buffer_t handle, const void* src, const uint64 size)
{
    80001f9c:	fd010113          	addi	sp,sp,-48
    80001fa0:	02113423          	sd	ra,40(sp)
    80001fa4:	02813023          	sd	s0,32(sp)
    80001fa8:	01213823          	sd	s2,16(sp)
    80001fac:	03010413          	addi	s0,sp,48
    if (!handle || !src || size == 0) return -1;
    80001fb0:	10050463          	beqz	a0,800020b8 <kernel_rw_buffer_write+0x11c>
    80001fb4:	00913c23          	sd	s1,24(sp)
    80001fb8:	01313423          	sd	s3,8(sp)
    80001fbc:	01413023          	sd	s4,0(sp)
    80001fc0:	00050493          	mv	s1,a0
    80001fc4:	00058a13          	mv	s4,a1
    80001fc8:	00060993          	mv	s3,a2
    80001fcc:	0e058a63          	beqz	a1,800020c0 <kernel_rw_buffer_write+0x124>
    80001fd0:	10060263          	beqz	a2,800020d4 <kernel_rw_buffer_write+0x138>

    if (kernel_sem_wait(handle->wr_mtx) < 0) return -1;
    80001fd4:	03053503          	ld	a0,48(a0)
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	b28080e7          	jalr	-1240(ra) # 80001b00 <kernel_sem_wait>
    80001fe0:	10054463          	bltz	a0,800020e8 <kernel_rw_buffer_write+0x14c>
    int result = 0;
    uint8* const src_bytes = (uint8*)(src);
    for (uint64 i = 0; i < size; i++)
    80001fe4:	00000913          	li	s2,0
    80001fe8:	0300006f          	j	80002018 <kernel_rw_buffer_write+0x7c>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80001fec:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80001ff0:	10079073          	csrw	sstatus,a5
        return 1;
    80001ff4:	00100693          	li	a3,1
    80001ff8:	0440006f          	j	8000203c <kernel_rw_buffer_write+0xa0>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80001ffc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80002000:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002004:	10079073          	csrw	sstatus,a5
        }
        const int lock = intr_save();
        handle->buf[handle->wr] = src_bytes[i];
        handle->wr = (handle->wr + 1) % handle->capacity;
        intr_restore(lock);
        kernel_sem_signal(handle->full);
    80002008:	0284b503          	ld	a0,40(s1)
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	c48080e7          	jalr	-952(ra) # 80001c54 <kernel_sem_signal>
    for (uint64 i = 0; i < size; i++)
    80002014:	00190913          	addi	s2,s2,1
    80002018:	07397263          	bgeu	s2,s3,8000207c <kernel_rw_buffer_write+0xe0>
        if (kernel_sem_wait(handle->empty) < 0)
    8000201c:	0204b503          	ld	a0,32(s1)
    80002020:	00000097          	auipc	ra,0x0
    80002024:	ae0080e7          	jalr	-1312(ra) # 80001b00 <kernel_sem_wait>
    80002028:	08054463          	bltz	a0,800020b0 <kernel_rw_buffer_write+0x114>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000202c:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80002030:	0027f713          	andi	a4,a5,2
    80002034:	fa071ce3          	bnez	a4,80001fec <kernel_rw_buffer_write+0x50>
    return 0; // Interrupts were already disabled
    80002038:	00000693          	li	a3,0
        handle->buf[handle->wr] = src_bytes[i];
    8000203c:	0004b783          	ld	a5,0(s1)
    80002040:	0184b703          	ld	a4,24(s1)
    80002044:	00e787b3          	add	a5,a5,a4
    80002048:	012a0733          	add	a4,s4,s2
    8000204c:	00074703          	lbu	a4,0(a4)
    80002050:	00e78023          	sb	a4,0(a5)
        handle->wr = (handle->wr + 1) % handle->capacity;
    80002054:	0184b783          	ld	a5,24(s1)
    80002058:	00178793          	addi	a5,a5,1
    8000205c:	0084b703          	ld	a4,8(s1)
    80002060:	02e7f7b3          	remu	a5,a5,a4
    80002064:	00f4bc23          	sd	a5,24(s1)
    if (previous_state)
    80002068:	f8068ae3          	beqz	a3,80001ffc <kernel_rw_buffer_write+0x60>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000206c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80002070:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002074:	10079073          	csrw	sstatus,a5
}
    80002078:	f91ff06f          	j	80002008 <kernel_rw_buffer_write+0x6c>
    int result = 0;
    8000207c:	00000913          	li	s2,0
    }


    kernel_sem_signal(handle->wr_mtx);
    80002080:	0304b503          	ld	a0,48(s1)
    80002084:	00000097          	auipc	ra,0x0
    80002088:	bd0080e7          	jalr	-1072(ra) # 80001c54 <kernel_sem_signal>
    return result;
    8000208c:	01813483          	ld	s1,24(sp)
    80002090:	00813983          	ld	s3,8(sp)
    80002094:	00013a03          	ld	s4,0(sp)
}
    80002098:	00090513          	mv	a0,s2
    8000209c:	02813083          	ld	ra,40(sp)
    800020a0:	02013403          	ld	s0,32(sp)
    800020a4:	01013903          	ld	s2,16(sp)
    800020a8:	03010113          	addi	sp,sp,48
    800020ac:	00008067          	ret
            result = -1;
    800020b0:	fff00913          	li	s2,-1
    800020b4:	fcdff06f          	j	80002080 <kernel_rw_buffer_write+0xe4>
    if (!handle || !src || size == 0) return -1;
    800020b8:	fff00913          	li	s2,-1
    800020bc:	fddff06f          	j	80002098 <kernel_rw_buffer_write+0xfc>
    800020c0:	fff00913          	li	s2,-1
    800020c4:	01813483          	ld	s1,24(sp)
    800020c8:	00813983          	ld	s3,8(sp)
    800020cc:	00013a03          	ld	s4,0(sp)
    800020d0:	fc9ff06f          	j	80002098 <kernel_rw_buffer_write+0xfc>
    800020d4:	fff00913          	li	s2,-1
    800020d8:	01813483          	ld	s1,24(sp)
    800020dc:	00813983          	ld	s3,8(sp)
    800020e0:	00013a03          	ld	s4,0(sp)
    800020e4:	fb5ff06f          	j	80002098 <kernel_rw_buffer_write+0xfc>
    if (kernel_sem_wait(handle->wr_mtx) < 0) return -1;
    800020e8:	fff00913          	li	s2,-1
    800020ec:	01813483          	ld	s1,24(sp)
    800020f0:	00813983          	ld	s3,8(sp)
    800020f4:	00013a03          	ld	s4,0(sp)
    800020f8:	fa1ff06f          	j	80002098 <kernel_rw_buffer_write+0xfc>

00000000800020fc <kernel_rw_buffer_read>:

void __putc(char c);

int kernel_rw_buffer_read(const rw_buffer_t handle, void* dst, const uint64 size)
{
    800020fc:	fd010113          	addi	sp,sp,-48
    80002100:	02113423          	sd	ra,40(sp)
    80002104:	02813023          	sd	s0,32(sp)
    80002108:	01213823          	sd	s2,16(sp)
    8000210c:	03010413          	addi	s0,sp,48
    if (!handle || !dst || size == 0) return -1;
    80002110:	10050463          	beqz	a0,80002218 <kernel_rw_buffer_read+0x11c>
    80002114:	00913c23          	sd	s1,24(sp)
    80002118:	01313423          	sd	s3,8(sp)
    8000211c:	01413023          	sd	s4,0(sp)
    80002120:	00050493          	mv	s1,a0
    80002124:	00058a13          	mv	s4,a1
    80002128:	00060993          	mv	s3,a2
    8000212c:	0e058a63          	beqz	a1,80002220 <kernel_rw_buffer_read+0x124>
    80002130:	10060263          	beqz	a2,80002234 <kernel_rw_buffer_read+0x138>

    if (kernel_sem_wait(handle->rd_mtx) < 0) return -1;
    80002134:	03853503          	ld	a0,56(a0)
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	9c8080e7          	jalr	-1592(ra) # 80001b00 <kernel_sem_wait>
    80002140:	10054463          	bltz	a0,80002248 <kernel_rw_buffer_read+0x14c>

    uint8* const dst_bytes = (uint8*)(dst);
    int result = 0;
    for (uint64 i = 0; i < size; i++)
    80002144:	00000913          	li	s2,0
    80002148:	0300006f          	j	80002178 <kernel_rw_buffer_read+0x7c>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    8000214c:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002150:	10079073          	csrw	sstatus,a5
        return 1;
    80002154:	00100613          	li	a2,1
    80002158:	0440006f          	j	8000219c <kernel_rw_buffer_read+0xa0>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000215c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80002160:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002164:	10079073          	csrw	sstatus,a5
        }
        const int lock = intr_save();
        dst_bytes[i] = handle->buf[handle->rd];
        handle->rd = (handle->rd + 1) % handle->capacity;
        intr_restore(lock);
        kernel_sem_signal(handle->empty);
    80002168:	0204b503          	ld	a0,32(s1)
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	ae8080e7          	jalr	-1304(ra) # 80001c54 <kernel_sem_signal>
    for (uint64 i = 0; i < size; i++)
    80002174:	00190913          	addi	s2,s2,1
    80002178:	07397263          	bgeu	s2,s3,800021dc <kernel_rw_buffer_read+0xe0>
        if (kernel_sem_wait(handle->full) < 0)
    8000217c:	0284b503          	ld	a0,40(s1)
    80002180:	00000097          	auipc	ra,0x0
    80002184:	980080e7          	jalr	-1664(ra) # 80001b00 <kernel_sem_wait>
    80002188:	08054463          	bltz	a0,80002210 <kernel_rw_buffer_read+0x114>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000218c:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80002190:	0027f713          	andi	a4,a5,2
    80002194:	fa071ce3          	bnez	a4,8000214c <kernel_rw_buffer_read+0x50>
    return 0; // Interrupts were already disabled
    80002198:	00000613          	li	a2,0
        dst_bytes[i] = handle->buf[handle->rd];
    8000219c:	0004b703          	ld	a4,0(s1)
    800021a0:	0104b683          	ld	a3,16(s1)
    800021a4:	012a07b3          	add	a5,s4,s2
    800021a8:	00d70733          	add	a4,a4,a3
    800021ac:	00074703          	lbu	a4,0(a4)
    800021b0:	00e78023          	sb	a4,0(a5)
        handle->rd = (handle->rd + 1) % handle->capacity;
    800021b4:	0104b783          	ld	a5,16(s1)
    800021b8:	00178793          	addi	a5,a5,1
    800021bc:	0084b703          	ld	a4,8(s1)
    800021c0:	02e7f7b3          	remu	a5,a5,a4
    800021c4:	00f4b823          	sd	a5,16(s1)
    if (previous_state)
    800021c8:	f8060ae3          	beqz	a2,8000215c <kernel_rw_buffer_read+0x60>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800021cc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    800021d0:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800021d4:	10079073          	csrw	sstatus,a5
}
    800021d8:	f91ff06f          	j	80002168 <kernel_rw_buffer_read+0x6c>
    int result = 0;
    800021dc:	00000913          	li	s2,0
    }
    kernel_sem_signal(handle->rd_mtx);
    800021e0:	0384b503          	ld	a0,56(s1)
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	a70080e7          	jalr	-1424(ra) # 80001c54 <kernel_sem_signal>
    return result;
    800021ec:	01813483          	ld	s1,24(sp)
    800021f0:	00813983          	ld	s3,8(sp)
    800021f4:	00013a03          	ld	s4,0(sp)
}
    800021f8:	00090513          	mv	a0,s2
    800021fc:	02813083          	ld	ra,40(sp)
    80002200:	02013403          	ld	s0,32(sp)
    80002204:	01013903          	ld	s2,16(sp)
    80002208:	03010113          	addi	sp,sp,48
    8000220c:	00008067          	ret
            result = -1;
    80002210:	fff00913          	li	s2,-1
    80002214:	fcdff06f          	j	800021e0 <kernel_rw_buffer_read+0xe4>
    if (!handle || !dst || size == 0) return -1;
    80002218:	fff00913          	li	s2,-1
    8000221c:	fddff06f          	j	800021f8 <kernel_rw_buffer_read+0xfc>
    80002220:	fff00913          	li	s2,-1
    80002224:	01813483          	ld	s1,24(sp)
    80002228:	00813983          	ld	s3,8(sp)
    8000222c:	00013a03          	ld	s4,0(sp)
    80002230:	fc9ff06f          	j	800021f8 <kernel_rw_buffer_read+0xfc>
    80002234:	fff00913          	li	s2,-1
    80002238:	01813483          	ld	s1,24(sp)
    8000223c:	00813983          	ld	s3,8(sp)
    80002240:	00013a03          	ld	s4,0(sp)
    80002244:	fb5ff06f          	j	800021f8 <kernel_rw_buffer_read+0xfc>
    if (kernel_sem_wait(handle->rd_mtx) < 0) return -1;
    80002248:	fff00913          	li	s2,-1
    8000224c:	01813483          	ld	s1,24(sp)
    80002250:	00813983          	ld	s3,8(sp)
    80002254:	00013a03          	ld	s4,0(sp)
    80002258:	fa1ff06f          	j	800021f8 <kernel_rw_buffer_read+0xfc>

000000008000225c <kernel_trap_init>:
#include "../h/kernel_console.h"

extern void set_timer(uint64 stime_value);

void kernel_trap_init()
{
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    extern void supervisorTrap();

    asm volatile("csrw stvec, %0" : : "r"(supervisorTrap));
    80002268:	fffff797          	auipc	a5,0xfffff
    8000226c:	ef878793          	addi	a5,a5,-264 # 80001160 <supervisorTrap>
    80002270:	10579073          	csrw	stvec,a5
}
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <handle_syscall>:

void handle_syscall(TrapContext* frame)
{
    80002280:	fe010113          	addi	sp,sp,-32
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	00813823          	sd	s0,16(sp)
    8000228c:	00913423          	sd	s1,8(sp)
    80002290:	02010413          	addi	s0,sp,32
    80002294:	00050493          	mv	s1,a0
    const uint64 syscall_code = frame->a0;
    80002298:	04853783          	ld	a5,72(a0)
    const uint64 arg0 = frame->a1;
    8000229c:	05053503          	ld	a0,80(a0)
    const uint64 arg1 = frame->a2;
    800022a0:	0584b583          	ld	a1,88(s1)
    const uint64 arg2 = frame->a3;
    800022a4:	0604b603          	ld	a2,96(s1)
    const uint64 arg3 = frame->a4;
    const uint64 arg4 = frame->a5;
    switch (syscall_code)
    800022a8:	04400713          	li	a4,68
    800022ac:	18f76463          	bltu	a4,a5,80002434 <handle_syscall+0x1b4>
    800022b0:	00279793          	slli	a5,a5,0x2
    800022b4:	00008717          	auipc	a4,0x8
    800022b8:	d7c70713          	addi	a4,a4,-644 # 8000a030 <CONSOLE_STATUS+0x10>
    800022bc:	00e787b3          	add	a5,a5,a4
    800022c0:	0007a783          	lw	a5,0(a5)
    800022c4:	00e787b3          	add	a5,a5,a4
    800022c8:	00078067          	jr	a5
    {
    case ECALL_MEM_ALLOC:
        {
            const size_t bytes_requested = (size_t)arg0;
            void* allocated_ptr = kernel_mem_alloc(bytes_requested);
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	1d8080e7          	jalr	472(ra) # 800034a4 <kernel_mem_alloc>

            frame->a0 = (uint64)allocated_ptr;
    800022d4:	04a4b423          	sd	a0,72(s1)
        }
    default:
        frame->a0 = -1;
        break;
    }
}
    800022d8:	01813083          	ld	ra,24(sp)
    800022dc:	01013403          	ld	s0,16(sp)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00008067          	ret
            const int result = kernel_mem_free(ptr_to_free);
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	350080e7          	jalr	848(ra) # 8000363c <kernel_mem_free>
            frame->a0 = (uint64)result;
    800022f4:	04a4b423          	sd	a0,72(s1)
            break;
    800022f8:	fe1ff06f          	j	800022d8 <handle_syscall+0x58>
            void* result_ptr = kernel_memset(dest_ptr, value, size);
    800022fc:	0ff5f593          	zext.b	a1,a1
    80002300:	00001097          	auipc	ra,0x1
    80002304:	55c080e7          	jalr	1372(ra) # 8000385c <kernel_memset>
            frame->a0 = (uint64)result_ptr;
    80002308:	04a4b423          	sd	a0,72(s1)
            break;
    8000230c:	fcdff06f          	j	800022d8 <handle_syscall+0x58>
            kernel_thread_dispatch();
    80002310:	00000097          	auipc	ra,0x0
    80002314:	5fc080e7          	jalr	1532(ra) # 8000290c <kernel_thread_dispatch>
            break;
    80002318:	fc1ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = kernel_thread_create_active(user_handle, start_routine, thread_arg, 0);
    8000231c:	00000693          	li	a3,0
    80002320:	00000097          	auipc	ra,0x0
    80002324:	7b0080e7          	jalr	1968(ra) # 80002ad0 <kernel_thread_create_active>
    80002328:	04a4b423          	sd	a0,72(s1)
            break;
    8000232c:	fadff06f          	j	800022d8 <handle_syscall+0x58>
            kernel_thread_exit();
    80002330:	00000097          	auipc	ra,0x0
    80002334:	6a0080e7          	jalr	1696(ra) # 800029d0 <kernel_thread_exit>
            break;
    80002338:	fa1ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = kernel_thread_join(target);
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	2ec080e7          	jalr	748(ra) # 80002628 <kernel_thread_join>
    80002344:	04a4b423          	sd	a0,72(s1)
            break;
    80002348:	f91ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = kernel_thread_join_all();
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	53c080e7          	jalr	1340(ra) # 80002888 <kernel_thread_join_all>
    80002354:	04a4b423          	sd	a0,72(s1)
            break;
    80002358:	f81ff06f          	j	800022d8 <handle_syscall+0x58>
            const int result = kernel_sem_new(user_handle, init_value);
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	60c080e7          	jalr	1548(ra) # 80001968 <kernel_sem_new>
            frame->a0 = (uint64)result;
    80002364:	04a4b423          	sd	a0,72(s1)
            break;
    80002368:	f71ff06f          	j	800022d8 <handle_syscall+0x58>
            const int result = kernel_sem_close(user_handle); //todo
    8000236c:	fffff097          	auipc	ra,0xfffff
    80002370:	6c8080e7          	jalr	1736(ra) # 80001a34 <kernel_sem_close>
            frame->a0 = (uint64)result;
    80002374:	04a4b423          	sd	a0,72(s1)
            break;
    80002378:	f61ff06f          	j	800022d8 <handle_syscall+0x58>
            const int result = kernel_sem_wait(sem_id);
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	784080e7          	jalr	1924(ra) # 80001b00 <kernel_sem_wait>
            frame->a0 = (uint64)result;
    80002384:	04a4b423          	sd	a0,72(s1)
            break;
    80002388:	f51ff06f          	j	800022d8 <handle_syscall+0x58>
            const int result = kernel_sem_signal(sem_id);
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	8c8080e7          	jalr	-1848(ra) # 80001c54 <kernel_sem_signal>
            frame->a0 = (uint64)result;
    80002394:	04a4b423          	sd	a0,72(s1)
            break;
    80002398:	f41ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = kernel_thread_sleep(sleep_time);
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	ac0080e7          	jalr	-1344(ra) # 80002e5c <kernel_thread_sleep>
    800023a4:	04a4b423          	sd	a0,72(s1)
            break;
    800023a8:	f31ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = (uint64)kernel_rw_buffer_open(handle, capacity);
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	a08080e7          	jalr	-1528(ra) # 80001db4 <kernel_rw_buffer_open>
    800023b4:	04a4b423          	sd	a0,72(s1)
            break;
    800023b8:	f21ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = (uint64)kernel_rw_buffer_close(handle);
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	974080e7          	jalr	-1676(ra) # 80001d30 <kernel_rw_buffer_close>
    800023c4:	04a4b423          	sd	a0,72(s1)
            break;
    800023c8:	f11ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = (uint64)kernel_rw_buffer_write(handle, src, size);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	bd0080e7          	jalr	-1072(ra) # 80001f9c <kernel_rw_buffer_write>
    800023d4:	04a4b423          	sd	a0,72(s1)
            break;
    800023d8:	f01ff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = (uint64)kernel_rw_buffer_read(handle, dst, size);
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	d20080e7          	jalr	-736(ra) # 800020fc <kernel_rw_buffer_read>
    800023e4:	04a4b423          	sd	a0,72(s1)
            break;
    800023e8:	ef1ff06f          	j	800022d8 <handle_syscall+0x58>
            kernel_putc(c);
    800023ec:	0ff57513          	zext.b	a0,a0
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	de4080e7          	jalr	-540(ra) # 800031d4 <kernel_putc>
            frame->a0 = 0;
    800023f8:	0404b423          	sd	zero,72(s1)
            break;
    800023fc:	eddff06f          	j	800022d8 <handle_syscall+0x58>
            frame->a0 = (uint64)kernel_getc();
    80002400:	00001097          	auipc	ra,0x1
    80002404:	e10080e7          	jalr	-496(ra) # 80003210 <kernel_getc>
    80002408:	04a4b423          	sd	a0,72(s1)
            break;
    8000240c:	ecdff06f          	j	800022d8 <handle_syscall+0x58>
            kernel_puts(s);
    80002410:	00001097          	auipc	ra,0x1
    80002414:	e3c080e7          	jalr	-452(ra) # 8000324c <kernel_puts>
            frame->a0 = 0;
    80002418:	0404b423          	sd	zero,72(s1)
            break;
    8000241c:	ebdff06f          	j	800022d8 <handle_syscall+0x58>
            kernel_gets(buf, max);
    80002420:	0005859b          	sext.w	a1,a1
    80002424:	00001097          	auipc	ra,0x1
    80002428:	e7c080e7          	jalr	-388(ra) # 800032a0 <kernel_gets>
            frame->a0 = 0;
    8000242c:	0404b423          	sd	zero,72(s1)
            break;
    80002430:	ea9ff06f          	j	800022d8 <handle_syscall+0x58>
        frame->a0 = -1;
    80002434:	fff00793          	li	a5,-1
    80002438:	04f4b423          	sd	a5,72(s1)
}
    8000243c:	e9dff06f          	j	800022d8 <handle_syscall+0x58>

0000000080002440 <handle_timer>:

void handle_timer(void)
{
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	02010413          	addi	s0,sp,32
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002454:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80002458:	0027f713          	andi	a4,a5,2
    8000245c:	04071863          	bnez	a4,800024ac <handle_timer+0x6c>
    return 0; // Interrupts were already disabled
    80002460:	00000493          	li	s1,0
    int lock = intr_save();

    uint64 sip_mask = (1ULL << 1);
    asm volatile("csrc sip, %0" : : "r"(sip_mask));
    80002464:	00200793          	li	a5,2
    80002468:	1447b073          	csrc	sip,a5

    kernel_scheduler_update_sleeping_threads(1);
    8000246c:	00100513          	li	a0,1
    80002470:	00001097          	auipc	ra,0x1
    80002474:	aa4080e7          	jalr	-1372(ra) # 80002f14 <kernel_scheduler_update_sleeping_threads>

    if (kernel_scheduler_tick(1))
    80002478:	00100513          	li	a0,1
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	978080e7          	jalr	-1672(ra) # 80002df4 <kernel_scheduler_tick>
    80002484:	02051c63          	bnez	a0,800024bc <handle_timer+0x7c>
    if (previous_state)
    80002488:	04048663          	beqz	s1,800024d4 <handle_timer+0x94>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000248c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80002490:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002494:	10079073          	csrw	sstatus,a5
        {
            kernel_thread_dispatch();
        }
    }
    intr_restore(lock);
}
    80002498:	01813083          	ld	ra,24(sp)
    8000249c:	01013403          	ld	s0,16(sp)
    800024a0:	00813483          	ld	s1,8(sp)
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    800024ac:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800024b0:	10079073          	csrw	sstatus,a5
        return 1;
    800024b4:	00100493          	li	s1,1
    800024b8:	fadff06f          	j	80002464 <handle_timer+0x24>
        thread_t current = kernel_scheduler_get_current_thread();
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	1a4080e7          	jalr	420(ra) # 80002660 <kernel_scheduler_get_current_thread>
        if (current != NULL)
    800024c4:	fc0502e3          	beqz	a0,80002488 <handle_timer+0x48>
            kernel_thread_dispatch();
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	444080e7          	jalr	1092(ra) # 8000290c <kernel_thread_dispatch>
    800024d0:	fb9ff06f          	j	80002488 <handle_timer+0x48>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800024d4:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    800024d8:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800024dc:	10079073          	csrw	sstatus,a5
}
    800024e0:	fb9ff06f          	j	80002498 <handle_timer+0x58>

00000000800024e4 <handle_console>:

void handle_console(void)
{
    800024e4:	fe010113          	addi	sp,sp,-32
    800024e8:	00113c23          	sd	ra,24(sp)
    800024ec:	00813823          	sd	s0,16(sp)
    800024f0:	00913423          	sd	s1,8(sp)
    800024f4:	02010413          	addi	s0,sp,32
    const int irq = plic_claim();
    800024f8:	00005097          	auipc	ra,0x5
    800024fc:	304080e7          	jalr	772(ra) # 800077fc <plic_claim>
    80002500:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ)
    80002504:	00a00793          	li	a5,10
    80002508:	02f50263          	beq	a0,a5,8000252c <handle_console+0x48>
    {
        kernel_console_irq_handler();
    }
    plic_complete(irq);
    8000250c:	00048513          	mv	a0,s1
    80002510:	00005097          	auipc	ra,0x5
    80002514:	324080e7          	jalr	804(ra) # 80007834 <plic_complete>
}
    80002518:	01813083          	ld	ra,24(sp)
    8000251c:	01013403          	ld	s0,16(sp)
    80002520:	00813483          	ld	s1,8(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret
        kernel_console_irq_handler();
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	b40080e7          	jalr	-1216(ra) # 8000306c <kernel_console_irq_handler>
    80002534:	fd9ff06f          	j	8000250c <handle_console+0x28>

0000000080002538 <handleTrap>:

TrapContext* handleTrap(TrapContext* frame)
{
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	00913423          	sd	s1,8(sp)
    80002548:	02010413          	addi	s0,sp,32
    8000254c:	00050493          	mv	s1,a0
    uint64 a7 = frame->a7;
    uint64 scause_val;
    asm volatile ("csrr %0, scause" : "=r" (scause_val));
    80002550:	14202773          	csrr	a4,scause

    uint64 is_interrupt = scause_val & (1ULL << 63);
    uint64 code = scause_val & ~(1ULL << 63); // Strip bit 63
    80002554:	fff00793          	li	a5,-1
    80002558:	0017d793          	srli	a5,a5,0x1
    8000255c:	00f777b3          	and	a5,a4,a5

    if (scause_val == 0x08 || scause_val == 0x09)
    80002560:	ff870613          	addi	a2,a4,-8
    80002564:	00100693          	li	a3,1
    80002568:	04c6fe63          	bgeu	a3,a2,800025c4 <handleTrap+0x8c>
    {
        handle_syscall(frame);
        frame->sepc += 4;
    }
    else if (is_interrupt && code == 1)
    8000256c:	00075a63          	bgez	a4,80002580 <handleTrap+0x48>
    80002570:	00100713          	li	a4,1
    80002574:	06e78e63          	beq	a5,a4,800025f0 <handleTrap+0xb8>
    {
        handle_timer();
    }
    else if (is_interrupt && code == 9)
    80002578:	00900713          	li	a4,9
    8000257c:	08e78063          	beq	a5,a4,800025fc <handleTrap+0xc4>
    {
        handle_console();
    }
    else
    {
        kernel_puts("PANIC but of my own doing\n");
    80002580:	00008517          	auipc	a0,0x8
    80002584:	bc850513          	addi	a0,a0,-1080 # 8000a148 <CONSOLE_STATUS+0x128>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	cc4080e7          	jalr	-828(ra) # 8000324c <kernel_puts>
        while (1)
        {

            kernel_puts("THREAD ERROR! STOPPING THREAD\n");
    80002590:	00008517          	auipc	a0,0x8
    80002594:	bd850513          	addi	a0,a0,-1064 # 8000a168 <CONSOLE_STATUS+0x148>
    80002598:	00001097          	auipc	ra,0x1
    8000259c:	cb4080e7          	jalr	-844(ra) # 8000324c <kernel_puts>
            kernel_thread_exit();
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	430080e7          	jalr	1072(ra) # 800029d0 <kernel_thread_exit>
            kernel_puts("Ok shouldnt be here really... yielding \n");
    800025a8:	00008517          	auipc	a0,0x8
    800025ac:	be050513          	addi	a0,a0,-1056 # 8000a188 <CONSOLE_STATUS+0x168>
    800025b0:	00001097          	auipc	ra,0x1
    800025b4:	c9c080e7          	jalr	-868(ra) # 8000324c <kernel_puts>
            kernel_thread_dispatch();
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	354080e7          	jalr	852(ra) # 8000290c <kernel_thread_dispatch>
        while (1)
    800025c0:	fd1ff06f          	j	80002590 <handleTrap+0x58>
        handle_syscall(frame);
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	cbc080e7          	jalr	-836(ra) # 80002280 <handle_syscall>
        frame->sepc += 4;
    800025cc:	0f84b783          	ld	a5,248(s1)
    800025d0:	00478793          	addi	a5,a5,4
    800025d4:	0ef4bc23          	sd	a5,248(s1)
        }
    }

    return frame;
}
    800025d8:	00048513          	mv	a0,s1
    800025dc:	01813083          	ld	ra,24(sp)
    800025e0:	01013403          	ld	s0,16(sp)
    800025e4:	00813483          	ld	s1,8(sp)
    800025e8:	02010113          	addi	sp,sp,32
    800025ec:	00008067          	ret
        handle_timer();
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	e50080e7          	jalr	-432(ra) # 80002440 <handle_timer>
    800025f8:	fe1ff06f          	j	800025d8 <handleTrap+0xa0>
        handle_console();
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	ee8080e7          	jalr	-280(ra) # 800024e4 <handle_console>
    80002604:	fd5ff06f          	j	800025d8 <handleTrap+0xa0>

0000000080002608 <scheduler_set_current_thread>:
{
    return current_thread;
}

static void scheduler_set_current_thread(const thread_t thread)
{
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00813423          	sd	s0,8(sp)
    80002610:	01010413          	addi	s0,sp,16
    current_thread = thread;
    80002614:	0000b797          	auipc	a5,0xb
    80002618:	9ea7ba23          	sd	a0,-1548(a5) # 8000d008 <current_thread>
}
    8000261c:	00813403          	ld	s0,8(sp)
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <kernel_thread_join>:
    if (thread == NULL)
    80002628:	02050863          	beqz	a0,80002658 <kernel_thread_join+0x30>
{
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00113423          	sd	ra,8(sp)
    80002634:	00813023          	sd	s0,0(sp)
    80002638:	01010413          	addi	s0,sp,16
    return kernel_sem_wait(thread->join_sem);
    8000263c:	0d853503          	ld	a0,216(a0)
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	4c0080e7          	jalr	1216(ra) # 80001b00 <kernel_sem_wait>
}
    80002648:	00813083          	ld	ra,8(sp)
    8000264c:	00013403          	ld	s0,0(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret
        return -1;
    80002658:	fff00513          	li	a0,-1
}
    8000265c:	00008067          	ret

0000000080002660 <kernel_scheduler_get_current_thread>:
{
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
}
    8000266c:	0000b517          	auipc	a0,0xb
    80002670:	99c53503          	ld	a0,-1636(a0) # 8000d008 <current_thread>
    80002674:	00813403          	ld	s0,8(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <kernel_thread_create>:
{
    80002680:	fa010113          	addi	sp,sp,-96
    80002684:	04113c23          	sd	ra,88(sp)
    80002688:	04813823          	sd	s0,80(sp)
    8000268c:	03613023          	sd	s6,32(sp)
    80002690:	01713c23          	sd	s7,24(sp)
    80002694:	01813823          	sd	s8,16(sp)
    80002698:	01913423          	sd	s9,8(sp)
    8000269c:	06010413          	addi	s0,sp,96
    800026a0:	00050b93          	mv	s7,a0
    800026a4:	00058c93          	mv	s9,a1
    800026a8:	00060c13          	mv	s8,a2
    800026ac:	00068b13          	mv	s6,a3
    const thread_t new_thread = (thread_t)kernel_mem_alloc(sizeof(struct _thread));
    800026b0:	0e800513          	li	a0,232
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	df0080e7          	jalr	-528(ra) # 800034a4 <kernel_mem_alloc>
    if (new_thread == NULL) return -1;
    800026bc:	1c050263          	beqz	a0,80002880 <kernel_thread_create+0x200>
    800026c0:	04913423          	sd	s1,72(sp)
    800026c4:	03413823          	sd	s4,48(sp)
    800026c8:	00050493          	mv	s1,a0
    void* stack_mem = kernel_mem_alloc(DEFAULT_STACK_SIZE);
    800026cc:	00001537          	lui	a0,0x1
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	dd4080e7          	jalr	-556(ra) # 800034a4 <kernel_mem_alloc>
    800026d8:	00050a13          	mv	s4,a0
    if (stack_mem == NULL)
    800026dc:	12050c63          	beqz	a0,80002814 <kernel_thread_create+0x194>
    800026e0:	03513423          	sd	s5,40(sp)
    void* kernel_stack = kernel_mem_alloc(DEFAULT_STACK_SIZE);
    800026e4:	00001537          	lui	a0,0x1
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	dbc080e7          	jalr	-580(ra) # 800034a4 <kernel_mem_alloc>
    800026f0:	00050a93          	mv	s5,a0
    if (kernel_stack == NULL)
    800026f4:	12050e63          	beqz	a0,80002830 <kernel_thread_create+0x1b0>
    800026f8:	05213023          	sd	s2,64(sp)
    800026fc:	03313c23          	sd	s3,56(sp)
    80002700:	01a13023          	sd	s10,0(sp)
    kernel_memset(&new_thread->context, 0, sizeof(Context));
    80002704:	07800613          	li	a2,120
    80002708:	00000593          	li	a1,0
    8000270c:	02848513          	addi	a0,s1,40
    80002710:	00001097          	auipc	ra,0x1
    80002714:	14c080e7          	jalr	332(ra) # 8000385c <kernel_memset>
    const uint64 sp_top = (uint64)stack_mem + DEFAULT_STACK_SIZE & ~0xF;
    80002718:	000017b7          	lui	a5,0x1
    8000271c:	00fa0d33          	add	s10,s4,a5
    80002720:	ff0d7d13          	andi	s10,s10,-16
    const uint64 ksp_top = (uint64)kernel_stack + DEFAULT_STACK_SIZE & ~0xF;
    80002724:	00fa87b3          	add	a5,s5,a5
    80002728:	ff07f993          	andi	s3,a5,-16
    new_thread->is_system = is_system_thread;
    8000272c:	0d64a223          	sw	s6,196(s1)
    const thread_t current = kernel_scheduler_get_current_thread();
    80002730:	00000097          	auipc	ra,0x0
    80002734:	f30080e7          	jalr	-208(ra) # 80002660 <kernel_scheduler_get_current_thread>
    80002738:	00050913          	mv	s2,a0
    new_thread->parent = current;
    8000273c:	0ca4b423          	sd	a0,200(s1)
    new_thread->active_children = 0;
    80002740:	0c04a823          	sw	zero,208(s1)
    kernel_sem_new(&new_thread->join_sem, 0);
    80002744:	00000593          	li	a1,0
    80002748:	0d848513          	addi	a0,s1,216
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	21c080e7          	jalr	540(ra) # 80001968 <kernel_sem_new>
    kernel_sem_new(&new_thread->join_all_sem, 0);
    80002754:	00000593          	li	a1,0
    80002758:	0e048513          	addi	a0,s1,224
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	20c080e7          	jalr	524(ra) # 80001968 <kernel_sem_new>
    if (current != NULL && !is_system_thread)
    80002764:	00090a63          	beqz	s2,80002778 <kernel_thread_create+0xf8>
    80002768:	000b1a63          	bnez	s6,8000277c <kernel_thread_create+0xfc>
        current->active_children++;
    8000276c:	0d092783          	lw	a5,208(s2)
    80002770:	0017879b          	addiw	a5,a5,1 # 1001 <_entry-0x7fffefff>
    80002774:	0cf92823          	sw	a5,208(s2)
    if (is_system_thread)
    80002778:	0e0b0263          	beqz	s6,8000285c <kernel_thread_create+0x1dc>
        new_thread->context.sp = sp_top;
    8000277c:	03a4b823          	sd	s10,48(s1)
        new_thread->context.ra = (uint64)kernel_thread_stub;
    80002780:	fffff797          	auipc	a5,0xfffff
    80002784:	90078793          	addi	a5,a5,-1792 # 80001080 <kernel_thread_stub>
    80002788:	02f4b423          	sd	a5,40(s1)
        new_thread->stack_memory = NULL;
    8000278c:	0004b823          	sd	zero,16(s1)
        new_thread->context.s3 = ksp_top;
    80002790:	0534b823          	sd	s3,80(s1)
    new_thread->context.s0 = (uint64)method;
    80002794:	0394bc23          	sd	s9,56(s1)
    new_thread->context.s1 = (uint64)args;
    80002798:	0584b023          	sd	s8,64(s1)
    new_thread->kernel_stack_top = (void*)ksp_top;
    8000279c:	0334b023          	sd	s3,32(s1)
    new_thread->kernel_stack_memory = kernel_stack;
    800027a0:	0154bc23          	sd	s5,24(s1)
    new_thread->id = global_thread_id++;
    800027a4:	0000b717          	auipc	a4,0xb
    800027a8:	86c70713          	addi	a4,a4,-1940 # 8000d010 <global_thread_id>
    800027ac:	00073783          	ld	a5,0(a4)
    800027b0:	00178693          	addi	a3,a5,1
    800027b4:	00d73023          	sd	a3,0(a4)
    800027b8:	00f4b023          	sd	a5,0(s1)
    new_thread->state = THREAD_READY;
    800027bc:	0004a423          	sw	zero,8(s1)
    new_thread->stack_memory = stack_mem;
    800027c0:	0144b823          	sd	s4,16(s1)
    new_thread->time_slice_run = 0;
    800027c4:	0a04b423          	sd	zero,168(s1)
    new_thread->max_time_slice = DEFAULT_TIME_SLICE;
    800027c8:	00200793          	li	a5,2
    800027cc:	0af4b823          	sd	a5,176(s1)
    new_thread->wakeup_retval = 0;
    800027d0:	0c04a023          	sw	zero,192(s1)
    *handle = new_thread;
    800027d4:	009bb023          	sd	s1,0(s7)
    return 0;
    800027d8:	00000513          	li	a0,0
    800027dc:	04813483          	ld	s1,72(sp)
    800027e0:	04013903          	ld	s2,64(sp)
    800027e4:	03813983          	ld	s3,56(sp)
    800027e8:	03013a03          	ld	s4,48(sp)
    800027ec:	02813a83          	ld	s5,40(sp)
    800027f0:	00013d03          	ld	s10,0(sp)
}
    800027f4:	05813083          	ld	ra,88(sp)
    800027f8:	05013403          	ld	s0,80(sp)
    800027fc:	02013b03          	ld	s6,32(sp)
    80002800:	01813b83          	ld	s7,24(sp)
    80002804:	01013c03          	ld	s8,16(sp)
    80002808:	00813c83          	ld	s9,8(sp)
    8000280c:	06010113          	addi	sp,sp,96
    80002810:	00008067          	ret
        kernel_mem_free(new_thread);
    80002814:	00048513          	mv	a0,s1
    80002818:	00001097          	auipc	ra,0x1
    8000281c:	e24080e7          	jalr	-476(ra) # 8000363c <kernel_mem_free>
        return -1;
    80002820:	fff00513          	li	a0,-1
    80002824:	04813483          	ld	s1,72(sp)
    80002828:	03013a03          	ld	s4,48(sp)
    8000282c:	fc9ff06f          	j	800027f4 <kernel_thread_create+0x174>
        kernel_mem_free(new_thread);
    80002830:	00048513          	mv	a0,s1
    80002834:	00001097          	auipc	ra,0x1
    80002838:	e08080e7          	jalr	-504(ra) # 8000363c <kernel_mem_free>
        kernel_mem_free(stack_mem);
    8000283c:	000a0513          	mv	a0,s4
    80002840:	00001097          	auipc	ra,0x1
    80002844:	dfc080e7          	jalr	-516(ra) # 8000363c <kernel_mem_free>
        return -1;
    80002848:	fff00513          	li	a0,-1
    8000284c:	04813483          	ld	s1,72(sp)
    80002850:	03013a03          	ld	s4,48(sp)
    80002854:	02813a83          	ld	s5,40(sp)
    80002858:	f9dff06f          	j	800027f4 <kernel_thread_create+0x174>
        new_thread->context.sp = sp_top;
    8000285c:	03a4b823          	sd	s10,48(s1)
        new_thread->context.ra = (uint64)thread_stub;
    80002860:	fffff797          	auipc	a5,0xfffff
    80002864:	84078793          	addi	a5,a5,-1984 # 800010a0 <thread_stub>
    80002868:	02f4b423          	sd	a5,40(s1)
        new_thread->context.s2 = (uint64)thread_exit; // Forged return address safety net
    8000286c:	fffff797          	auipc	a5,0xfffff
    80002870:	d3078793          	addi	a5,a5,-720 # 8000159c <thread_exit>
    80002874:	04f4b423          	sd	a5,72(s1)
        new_thread->context.s3 = ksp_top; // Backing kernel stack top for sscratch
    80002878:	0534b823          	sd	s3,80(s1)
    8000287c:	f19ff06f          	j	80002794 <kernel_thread_create+0x114>
    if (new_thread == NULL) return -1;
    80002880:	fff00513          	li	a0,-1
    80002884:	f71ff06f          	j	800027f4 <kernel_thread_create+0x174>

0000000080002888 <kernel_thread_join_all>:
{
    80002888:	fe010113          	addi	sp,sp,-32
    8000288c:	00113c23          	sd	ra,24(sp)
    80002890:	00813823          	sd	s0,16(sp)
    80002894:	00913423          	sd	s1,8(sp)
    80002898:	02010413          	addi	s0,sp,32
    const thread_t current = kernel_scheduler_get_current_thread();
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	dc4080e7          	jalr	-572(ra) # 80002660 <kernel_scheduler_get_current_thread>
    800028a4:	00050493          	mv	s1,a0
    if (current == NULL) return -1;
    800028a8:	02050e63          	beqz	a0,800028e4 <kernel_thread_join_all+0x5c>
    while (current->active_children > 0)
    800028ac:	0d04a783          	lw	a5,208(s1)
    800028b0:	00f05e63          	blez	a5,800028cc <kernel_thread_join_all+0x44>
        if (kernel_sem_wait(current->join_all_sem) < 0)
    800028b4:	0e04b503          	ld	a0,224(s1)
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	248080e7          	jalr	584(ra) # 80001b00 <kernel_sem_wait>
    800028c0:	fe0556e3          	bgez	a0,800028ac <kernel_thread_join_all+0x24>
            return -1;
    800028c4:	fff00513          	li	a0,-1
    800028c8:	0080006f          	j	800028d0 <kernel_thread_join_all+0x48>
    return 0;
    800028cc:	00000513          	li	a0,0
}
    800028d0:	01813083          	ld	ra,24(sp)
    800028d4:	01013403          	ld	s0,16(sp)
    800028d8:	00813483          	ld	s1,8(sp)
    800028dc:	02010113          	addi	sp,sp,32
    800028e0:	00008067          	ret
    if (current == NULL) return -1;
    800028e4:	fff00513          	li	a0,-1
    800028e8:	fe9ff06f          	j	800028d0 <kernel_thread_join_all+0x48>

00000000800028ec <kernel_scheduler_get_scheduler_thread>:

thread_t kernel_scheduler_get_scheduler_thread(void)
{
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00813423          	sd	s0,8(sp)
    800028f4:	01010413          	addi	s0,sp,16
    return &scheduler_thread;
}
    800028f8:	0000f517          	auipc	a0,0xf
    800028fc:	70850513          	addi	a0,a0,1800 # 80012000 <scheduler_thread>
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <kernel_thread_dispatch>:
{
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	01213023          	sd	s2,0(sp)
    80002920:	02010413          	addi	s0,sp,32
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002924:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80002928:	0027f713          	andi	a4,a5,2
    8000292c:	04071663          	bnez	a4,80002978 <kernel_thread_dispatch+0x6c>
    return 0; // Interrupts were already disabled
    80002930:	00000913          	li	s2,0
    const thread_t current = kernel_scheduler_get_current_thread();
    80002934:	00000097          	auipc	ra,0x0
    80002938:	d2c080e7          	jalr	-724(ra) # 80002660 <kernel_scheduler_get_current_thread>
    8000293c:	00050493          	mv	s1,a0
    const thread_t scheduler = kernel_scheduler_get_scheduler_thread();
    80002940:	00000097          	auipc	ra,0x0
    80002944:	fac080e7          	jalr	-84(ra) # 800028ec <kernel_scheduler_get_scheduler_thread>
    if (current == NULL || //should never happen
    80002948:	04048063          	beqz	s1,80002988 <kernel_thread_dispatch+0x7c>
    8000294c:	02050e63          	beqz	a0,80002988 <kernel_thread_dispatch+0x7c>
        scheduler == NULL || //scheduler not initialized prob.
    80002950:	02a48c63          	beq	s1,a0,80002988 <kernel_thread_dispatch+0x7c>
    kernel_switch_thread(&current->context, &scheduler->context);
    80002954:	02850593          	addi	a1,a0,40
    80002958:	02848513          	addi	a0,s1,40
    8000295c:	ffffe097          	auipc	ra,0xffffe
    80002960:	6a4080e7          	jalr	1700(ra) # 80001000 <kernel_switch_thread>
    if (previous_state)
    80002964:	04090e63          	beqz	s2,800029c0 <kernel_thread_dispatch+0xb4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002968:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    8000296c:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002970:	10079073          	csrw	sstatus,a5
}
    80002974:	0240006f          	j	80002998 <kernel_thread_dispatch+0x8c>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80002978:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    8000297c:	10079073          	csrw	sstatus,a5
        return 1;
    80002980:	00100913          	li	s2,1
    80002984:	fb1ff06f          	j	80002934 <kernel_thread_dispatch+0x28>
    if (previous_state)
    80002988:	02090463          	beqz	s2,800029b0 <kernel_thread_dispatch+0xa4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000298c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80002990:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002994:	10079073          	csrw	sstatus,a5
}
    80002998:	01813083          	ld	ra,24(sp)
    8000299c:	01013403          	ld	s0,16(sp)
    800029a0:	00813483          	ld	s1,8(sp)
    800029a4:	00013903          	ld	s2,0(sp)
    800029a8:	02010113          	addi	sp,sp,32
    800029ac:	00008067          	ret
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800029b0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    800029b4:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800029b8:	10079073          	csrw	sstatus,a5
}
    800029bc:	fddff06f          	j	80002998 <kernel_thread_dispatch+0x8c>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800029c0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    800029c4:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800029c8:	10079073          	csrw	sstatus,a5
}
    800029cc:	fcdff06f          	j	80002998 <kernel_thread_dispatch+0x8c>

00000000800029d0 <kernel_thread_exit>:
{
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00113423          	sd	ra,8(sp)
    800029d8:	00813023          	sd	s0,0(sp)
    800029dc:	01010413          	addi	s0,sp,16
    const thread_t current = kernel_scheduler_get_current_thread();
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	c80080e7          	jalr	-896(ra) # 80002660 <kernel_scheduler_get_current_thread>
    if (current != NULL)
    800029e8:	00050a63          	beqz	a0,800029fc <kernel_thread_exit+0x2c>
        current->state = THREAD_FINISHED;
    800029ec:	00300793          	li	a5,3
    800029f0:	00f52423          	sw	a5,8(a0)
        kernel_thread_dispatch();
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	f18080e7          	jalr	-232(ra) # 8000290c <kernel_thread_dispatch>
    kernel_puts("PANIC 2\n");
    800029fc:	00007517          	auipc	a0,0x7
    80002a00:	7bc50513          	addi	a0,a0,1980 # 8000a1b8 <CONSOLE_STATUS+0x198>
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	848080e7          	jalr	-1976(ra) # 8000324c <kernel_puts>
    while (1) kernel_thread_dispatch();
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	f00080e7          	jalr	-256(ra) # 8000290c <kernel_thread_dispatch>
    80002a14:	ff9ff06f          	j	80002a0c <kernel_thread_exit+0x3c>

0000000080002a18 <kernel_scheduler_append>:

void kernel_scheduler_append(const thread_t thread)
{
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00813423          	sd	s0,8(sp)
    80002a20:	01010413          	addi	s0,sp,16
    if (thread == NULL) return;
    80002a24:	02050063          	beqz	a0,80002a44 <kernel_scheduler_append+0x2c>

    thread->next = NULL;
    80002a28:	0a053023          	sd	zero,160(a0)

    if (ready_queue.tail == NULL)
    80002a2c:	0000f797          	auipc	a5,0xf
    80002a30:	6c47b783          	ld	a5,1732(a5) # 800120f0 <ready_queue+0x8>
    80002a34:	00078e63          	beqz	a5,80002a50 <kernel_scheduler_append+0x38>
        ready_queue.head = thread;
        ready_queue.tail = thread;
    }
    else
    {
        ready_queue.tail->next = thread;
    80002a38:	0aa7b023          	sd	a0,160(a5)
        ready_queue.tail = thread;
    80002a3c:	0000f797          	auipc	a5,0xf
    80002a40:	6aa7ba23          	sd	a0,1716(a5) # 800120f0 <ready_queue+0x8>
    }
}
    80002a44:	00813403          	ld	s0,8(sp)
    80002a48:	01010113          	addi	sp,sp,16
    80002a4c:	00008067          	ret
        ready_queue.head = thread;
    80002a50:	0000f797          	auipc	a5,0xf
    80002a54:	5b078793          	addi	a5,a5,1456 # 80012000 <scheduler_thread>
    80002a58:	0ea7b423          	sd	a0,232(a5)
        ready_queue.tail = thread;
    80002a5c:	0ea7b823          	sd	a0,240(a5)
    80002a60:	fe5ff06f          	j	80002a44 <kernel_scheduler_append+0x2c>

0000000080002a64 <kernel_thread_start>:
    if (thread == NULL) return -1;
    80002a64:	04050663          	beqz	a0,80002ab0 <kernel_thread_start+0x4c>
{
    80002a68:	fe010113          	addi	sp,sp,-32
    80002a6c:	00113c23          	sd	ra,24(sp)
    80002a70:	00813823          	sd	s0,16(sp)
    80002a74:	00913423          	sd	s1,8(sp)
    80002a78:	02010413          	addi	s0,sp,32
    80002a7c:	00050493          	mv	s1,a0
    thread->state = THREAD_RUNNING;
    80002a80:	00100793          	li	a5,1
    80002a84:	00f52423          	sw	a5,8(a0)
    kernel_scheduler_append(thread);
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	f90080e7          	jalr	-112(ra) # 80002a18 <kernel_scheduler_append>
    if (!thread->is_system)
    80002a90:	0c44a503          	lw	a0,196(s1)
    80002a94:	02051263          	bnez	a0,80002ab8 <kernel_thread_start+0x54>
        active_worker_threads++;
    80002a98:	0000a717          	auipc	a4,0xa
    80002a9c:	58070713          	addi	a4,a4,1408 # 8000d018 <active_worker_threads>
    80002aa0:	00072783          	lw	a5,0(a4)
    80002aa4:	0017879b          	addiw	a5,a5,1
    80002aa8:	00f72023          	sw	a5,0(a4)
    80002aac:	0100006f          	j	80002abc <kernel_thread_start+0x58>
    if (thread == NULL) return -1;
    80002ab0:	fff00513          	li	a0,-1
}
    80002ab4:	00008067          	ret
    return 0;
    80002ab8:	00000513          	li	a0,0
}
    80002abc:	01813083          	ld	ra,24(sp)
    80002ac0:	01013403          	ld	s0,16(sp)
    80002ac4:	00813483          	ld	s1,8(sp)
    80002ac8:	02010113          	addi	sp,sp,32
    80002acc:	00008067          	ret

0000000080002ad0 <kernel_thread_create_active>:
{
    80002ad0:	fe010113          	addi	sp,sp,-32
    80002ad4:	00113c23          	sd	ra,24(sp)
    80002ad8:	00813823          	sd	s0,16(sp)
    80002adc:	01213023          	sd	s2,0(sp)
    80002ae0:	02010413          	addi	s0,sp,32
    80002ae4:	00050913          	mv	s2,a0
    if (kernel_thread_create(handle, method, args, is_system_thread))
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	b98080e7          	jalr	-1128(ra) # 80002680 <kernel_thread_create>
    80002af0:	04051663          	bnez	a0,80002b3c <kernel_thread_create_active+0x6c>
    80002af4:	00913423          	sd	s1,8(sp)
    80002af8:	00050493          	mv	s1,a0
    if (kernel_thread_start(*handle))
    80002afc:	00093503          	ld	a0,0(s2)
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	f64080e7          	jalr	-156(ra) # 80002a64 <kernel_thread_start>
    80002b08:	00051e63          	bnez	a0,80002b24 <kernel_thread_create_active+0x54>
    80002b0c:	00813483          	ld	s1,8(sp)
}
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00013903          	ld	s2,0(sp)
    80002b1c:	02010113          	addi	sp,sp,32
    80002b20:	00008067          	ret
        kernel_putc('E');
    80002b24:	04500513          	li	a0,69
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	6ac080e7          	jalr	1708(ra) # 800031d4 <kernel_putc>
    return 0;
    80002b30:	00048513          	mv	a0,s1
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	fd9ff06f          	j	80002b10 <kernel_thread_create_active+0x40>
        return -1;
    80002b3c:	fff00513          	li	a0,-1
    80002b40:	fd1ff06f          	j	80002b10 <kernel_thread_create_active+0x40>

0000000080002b44 <kernel_scheduler_pick_next>:

thread_t kernel_scheduler_pick_next(void)
{
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00813423          	sd	s0,8(sp)
    80002b4c:	01010413          	addi	s0,sp,16
    if (ready_queue.head == NULL)
    80002b50:	0000f517          	auipc	a0,0xf
    80002b54:	59853503          	ld	a0,1432(a0) # 800120e8 <ready_queue>
    80002b58:	00050c63          	beqz	a0,80002b70 <kernel_scheduler_pick_next+0x2c>
        return NULL;
    }

    const thread_t thread = ready_queue.head;

    ready_queue.head = ready_queue.head->next;
    80002b5c:	0a053783          	ld	a5,160(a0)
    80002b60:	0000f717          	auipc	a4,0xf
    80002b64:	58f73423          	sd	a5,1416(a4) # 800120e8 <ready_queue>

    if (ready_queue.head == NULL)
    80002b68:	00078a63          	beqz	a5,80002b7c <kernel_scheduler_pick_next+0x38>
    {
        ready_queue.tail = NULL;
    }

    thread->next = NULL;
    80002b6c:	0a053023          	sd	zero,160(a0)
    return thread;
}
    80002b70:	00813403          	ld	s0,8(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret
        ready_queue.tail = NULL;
    80002b7c:	0000f797          	auipc	a5,0xf
    80002b80:	5607ba23          	sd	zero,1396(a5) # 800120f0 <ready_queue+0x8>
    80002b84:	fe9ff06f          	j	80002b6c <kernel_scheduler_pick_next+0x28>

0000000080002b88 <kernel_scheduler_init>:


#pragma region init and main loop

int kernel_scheduler_init(void)
{
    80002b88:	fe010113          	addi	sp,sp,-32
    80002b8c:	00113c23          	sd	ra,24(sp)
    80002b90:	00813823          	sd	s0,16(sp)
    80002b94:	00913423          	sd	s1,8(sp)
    80002b98:	02010413          	addi	s0,sp,32
    current_thread = &scheduler_thread;
    80002b9c:	0000f497          	auipc	s1,0xf
    80002ba0:	46448493          	addi	s1,s1,1124 # 80012000 <scheduler_thread>
    80002ba4:	0000a797          	auipc	a5,0xa
    80002ba8:	4697b223          	sd	s1,1124(a5) # 8000d008 <current_thread>

    kernel_memset(&scheduler_thread, 0, sizeof(struct _thread));
    80002bac:	0e800613          	li	a2,232
    80002bb0:	00000593          	li	a1,0
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	00001097          	auipc	ra,0x1
    80002bbc:	ca4080e7          	jalr	-860(ra) # 8000385c <kernel_memset>
    scheduler_thread.id = 0xFFFFFFFF;
    80002bc0:	fff00793          	li	a5,-1
    80002bc4:	0207d793          	srli	a5,a5,0x20
    80002bc8:	00f4b023          	sd	a5,0(s1)
    scheduler_thread.state = THREAD_RUNNING;
    80002bcc:	00100793          	li	a5,1
    80002bd0:	00f4a423          	sw	a5,8(s1)
    scheduler_thread.stack_memory = NULL; // starting main thread IS the scheduler thread !!!
    80002bd4:	0004b823          	sd	zero,16(s1)

    scheduler_thread.kernel_stack_memory = kernel_mem_alloc(DEFAULT_STACK_SIZE);
    80002bd8:	00001537          	lui	a0,0x1
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	8c8080e7          	jalr	-1848(ra) # 800034a4 <kernel_mem_alloc>
    80002be4:	00a4bc23          	sd	a0,24(s1)
    scheduler_thread.kernel_stack_top = scheduler_thread.kernel_stack_memory + DEFAULT_STACK_SIZE;
    80002be8:	000017b7          	lui	a5,0x1
    80002bec:	00f50533          	add	a0,a0,a5
    80002bf0:	02a4b023          	sd	a0,32(s1)
    asm volatile("csrw sscratch, %0" :: "r"(scheduler_thread.kernel_stack_top));
    80002bf4:	14051073          	csrw	sscratch,a0


    ready_queue.head = NULL;
    80002bf8:	0e04b423          	sd	zero,232(s1)
    ready_queue.tail = NULL;
    80002bfc:	0e04b823          	sd	zero,240(s1)
    return 0;
}
    80002c00:	00000513          	li	a0,0
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	02010113          	addi	sp,sp,32
    80002c14:	00008067          	ret

0000000080002c18 <kernel_scheduler>:

void kernel_scheduler()
{
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	01213023          	sd	s2,0(sp)
    80002c2c:	02010413          	addi	s0,sp,32
    Context* scheduler_ctx = &(kernel_scheduler_get_scheduler_thread()->context);
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	cbc080e7          	jalr	-836(ra) # 800028ec <kernel_scheduler_get_scheduler_thread>
    80002c38:	02850913          	addi	s2,a0,40 # 1028 <_entry-0x7fffefd8>
    80002c3c:	0bc0006f          	j	80002cf8 <kernel_scheduler+0xe0>

            if (just_finished != NULL)
            {
                if (just_finished->state == THREAD_FINISHED)
                {
                    if (!just_finished->is_system)
    80002c40:	0c452783          	lw	a5,196(a0)
    80002c44:	00079c63          	bnez	a5,80002c5c <kernel_scheduler+0x44>
                    {
                        active_worker_threads--;
    80002c48:	0000a717          	auipc	a4,0xa
    80002c4c:	3d070713          	addi	a4,a4,976 # 8000d018 <active_worker_threads>
    80002c50:	00072783          	lw	a5,0(a4)
    80002c54:	fff7879b          	addiw	a5,a5,-1 # fff <_entry-0x7ffff001>
    80002c58:	00f72023          	sw	a5,0(a4)
                    }

                    while (just_finished->join_sem->wait_queue != NULL)
    80002c5c:	0d84b503          	ld	a0,216(s1)
    80002c60:	01053783          	ld	a5,16(a0)
    80002c64:	00078863          	beqz	a5,80002c74 <kernel_scheduler+0x5c>
                    {
                        kernel_sem_signal(just_finished->join_sem);
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	fec080e7          	jalr	-20(ra) # 80001c54 <kernel_sem_signal>
    80002c70:	fedff06f          	j	80002c5c <kernel_scheduler+0x44>
                    }

                    if (just_finished->parent != NULL && !just_finished->is_system)
    80002c74:	0c84b783          	ld	a5,200(s1)
    80002c78:	02078263          	beqz	a5,80002c9c <kernel_scheduler+0x84>
    80002c7c:	0c44a703          	lw	a4,196(s1)
    80002c80:	00071e63          	bnez	a4,80002c9c <kernel_scheduler+0x84>
                    {
                        just_finished->parent->active_children--;
    80002c84:	0d07a703          	lw	a4,208(a5)
    80002c88:	fff7071b          	addiw	a4,a4,-1
    80002c8c:	0ce7a823          	sw	a4,208(a5)
                        if (just_finished->parent->active_children <= 0) // < just in case
    80002c90:	0c84b783          	ld	a5,200(s1)
    80002c94:	0d07a703          	lw	a4,208(a5)
    80002c98:	04e05263          	blez	a4,80002cdc <kernel_scheduler+0xc4>
                        {
                            kernel_sem_signal(just_finished->parent->join_all_sem);
                        }
                    }

                    kernel_sem_close(just_finished->join_sem);
    80002c9c:	0d84b503          	ld	a0,216(s1)
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	d94080e7          	jalr	-620(ra) # 80001a34 <kernel_sem_close>
                    kernel_sem_close(just_finished->join_all_sem);
    80002ca8:	0e04b503          	ld	a0,224(s1)
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	d88080e7          	jalr	-632(ra) # 80001a34 <kernel_sem_close>

                    kernel_mem_free(just_finished->stack_memory);
    80002cb4:	0104b503          	ld	a0,16(s1)
    80002cb8:	00001097          	auipc	ra,0x1
    80002cbc:	984080e7          	jalr	-1660(ra) # 8000363c <kernel_mem_free>
                    kernel_mem_free(just_finished->kernel_stack_memory);
    80002cc0:	0184b503          	ld	a0,24(s1)
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	978080e7          	jalr	-1672(ra) # 8000363c <kernel_mem_free>
                    kernel_mem_free(just_finished);
    80002ccc:	00048513          	mv	a0,s1
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	96c080e7          	jalr	-1684(ra) # 8000363c <kernel_mem_free>
    80002cd8:	0900006f          	j	80002d68 <kernel_scheduler+0x150>
                            kernel_sem_signal(just_finished->parent->join_all_sem);
    80002cdc:	0e07b503          	ld	a0,224(a5)
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	f74080e7          	jalr	-140(ra) # 80001c54 <kernel_sem_signal>
    80002ce8:	fb5ff06f          	j	80002c9c <kernel_scheduler+0x84>
                if (just_finished->state == THREAD_SLEEPING)
                {
                    // do nothing really
                }

                scheduler_set_current_thread(NULL);
    80002cec:	00000513          	li	a0,0
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	918080e7          	jalr	-1768(ra) # 80002608 <scheduler_set_current_thread>
        if (active_worker_threads == 0 && kernel_get_write_buffer_count() <= 0)
    80002cf8:	0000a797          	auipc	a5,0xa
    80002cfc:	3207a783          	lw	a5,800(a5) # 8000d018 <active_worker_threads>
    80002d00:	00079863          	bnez	a5,80002d10 <kernel_scheduler+0xf8>
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	480080e7          	jalr	1152(ra) # 80003184 <kernel_get_write_buffer_count>
    80002d0c:	0ca05863          	blez	a0,80002ddc <kernel_scheduler+0x1c4>
        thread_t next = kernel_scheduler_pick_next();
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	e34080e7          	jalr	-460(ra) # 80002b44 <kernel_scheduler_pick_next>
    80002d18:	00050493          	mv	s1,a0
        if (next != NULL && next != current_thread)
    80002d1c:	06050663          	beqz	a0,80002d88 <kernel_scheduler+0x170>
    80002d20:	0000a797          	auipc	a5,0xa
    80002d24:	2e87b783          	ld	a5,744(a5) # 8000d008 <current_thread>
    80002d28:	fca788e3          	beq	a5,a0,80002cf8 <kernel_scheduler+0xe0>
            scheduler_set_current_thread(next);
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	8dc080e7          	jalr	-1828(ra) # 80002608 <scheduler_set_current_thread>
            asm volatile("csrw sscratch, %0" :: "r"(next->kernel_stack_top));
    80002d34:	0204b783          	ld	a5,32(s1)
    80002d38:	14079073          	csrw	sscratch,a5
            kernel_switch_thread(scheduler_ctx, &next->context);
    80002d3c:	02848593          	addi	a1,s1,40
    80002d40:	00090513          	mv	a0,s2
    80002d44:	ffffe097          	auipc	ra,0xffffe
    80002d48:	2bc080e7          	jalr	700(ra) # 80001000 <kernel_switch_thread>
            thread_t just_finished = kernel_scheduler_get_current_thread();
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	914080e7          	jalr	-1772(ra) # 80002660 <kernel_scheduler_get_current_thread>
    80002d54:	00050493          	mv	s1,a0
            if (just_finished != NULL)
    80002d58:	fa0500e3          	beqz	a0,80002cf8 <kernel_scheduler+0xe0>
                if (just_finished->state == THREAD_FINISHED)
    80002d5c:	00852703          	lw	a4,8(a0)
    80002d60:	00300793          	li	a5,3
    80002d64:	ecf70ee3          	beq	a4,a5,80002c40 <kernel_scheduler+0x28>
                if (just_finished->state == THREAD_RUNNING || just_finished->state == THREAD_READY)
    80002d68:	0084a703          	lw	a4,8(s1)
    80002d6c:	00100793          	li	a5,1
    80002d70:	f6e7eee3          	bltu	a5,a4,80002cec <kernel_scheduler+0xd4>
                    just_finished->state = THREAD_READY;
    80002d74:	0004a423          	sw	zero,8(s1)
                    kernel_scheduler_append(just_finished);
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	c9c080e7          	jalr	-868(ra) # 80002a18 <kernel_scheduler_append>
    80002d84:	f69ff06f          	j	80002cec <kernel_scheduler+0xd4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002d88:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80002d8c:	0027f713          	andi	a4,a5,2
    80002d90:	02071663          	bnez	a4,80002dbc <kernel_scheduler+0x1a4>
    return 0; // Interrupts were already disabled
    80002d94:	00000713          	li	a4,0
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002d98:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80002d9c:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002da0:	10079073          	csrw	sstatus,a5
        else if (next == NULL)
        {
            int lock = intr_save();
            intr_restore(1);
            //__putc('E');
            asm volatile("wfi");
    80002da4:	10500073          	wfi
    if (previous_state)
    80002da8:	02070263          	beqz	a4,80002dcc <kernel_scheduler+0x1b4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002dac:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80002db0:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002db4:	10079073          	csrw	sstatus,a5
}
    80002db8:	f41ff06f          	j	80002cf8 <kernel_scheduler+0xe0>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80002dbc:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002dc0:	10079073          	csrw	sstatus,a5
        return 1;
    80002dc4:	00100713          	li	a4,1
    80002dc8:	fd1ff06f          	j	80002d98 <kernel_scheduler+0x180>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002dcc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80002dd0:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002dd4:	10079073          	csrw	sstatus,a5
}
    80002dd8:	f21ff06f          	j	80002cf8 <kernel_scheduler+0xe0>
        else
        {
        }
    }
    volatile uint32* qemu_power_register = (uint32*)0x100000;
    *qemu_power_register = 0x5555;
    80002ddc:	000057b7          	lui	a5,0x5
    80002de0:	55578793          	addi	a5,a5,1365 # 5555 <_entry-0x7fffaaab>
    80002de4:	00100737          	lui	a4,0x100
    80002de8:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    while (1)
    { //should never happen really
        asm volatile("wfi");
    80002dec:	10500073          	wfi
    while (1)
    80002df0:	ffdff06f          	j	80002dec <kernel_scheduler+0x1d4>

0000000080002df4 <kernel_scheduler_tick>:
    }
}

int kernel_scheduler_tick(const uint64 time)
{
    80002df4:	fe010113          	addi	sp,sp,-32
    80002df8:	00113c23          	sd	ra,24(sp)
    80002dfc:	00813823          	sd	s0,16(sp)
    80002e00:	00913423          	sd	s1,8(sp)
    80002e04:	02010413          	addi	s0,sp,32
    80002e08:	00050493          	mv	s1,a0
    const thread_t curr = kernel_scheduler_get_current_thread();
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	854080e7          	jalr	-1964(ra) # 80002660 <kernel_scheduler_get_current_thread>
    if (curr == NULL) return -1;
    80002e14:	04050063          	beqz	a0,80002e54 <kernel_scheduler_tick+0x60>
    curr->time_slice_run += time;
    80002e18:	0a853783          	ld	a5,168(a0)
    80002e1c:	009787b3          	add	a5,a5,s1
    80002e20:	0af53423          	sd	a5,168(a0)
    if (curr->time_slice_run >= curr->max_time_slice)
    80002e24:	0b053703          	ld	a4,176(a0)
    80002e28:	00e7fe63          	bgeu	a5,a4,80002e44 <kernel_scheduler_tick+0x50>
    {
        curr->time_slice_run -= curr->max_time_slice;
        return 1;
    }
    return 0;
    80002e2c:	00000513          	li	a0,0
}
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret
        curr->time_slice_run -= curr->max_time_slice;
    80002e44:	40e787b3          	sub	a5,a5,a4
    80002e48:	0af53423          	sd	a5,168(a0)
        return 1;
    80002e4c:	00100513          	li	a0,1
    80002e50:	fe1ff06f          	j	80002e30 <kernel_scheduler_tick+0x3c>
    if (curr == NULL) return -1;
    80002e54:	fff00513          	li	a0,-1
    80002e58:	fd9ff06f          	j	80002e30 <kernel_scheduler_tick+0x3c>

0000000080002e5c <kernel_thread_sleep>:

#pragma region sleeping
static thread_t sleeping_queue_head = NULL;

int kernel_thread_sleep(uint64 ticks)
{
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00113c23          	sd	ra,24(sp)
    80002e64:	00813823          	sd	s0,16(sp)
    80002e68:	00913423          	sd	s1,8(sp)
    80002e6c:	01213023          	sd	s2,0(sp)
    80002e70:	02010413          	addi	s0,sp,32
    80002e74:	00050493          	mv	s1,a0
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002e78:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80002e7c:	0027f713          	andi	a4,a5,2
    80002e80:	06071663          	bnez	a4,80002eec <kernel_thread_sleep+0x90>
    return 0; // Interrupts were already disabled
    80002e84:	00000913          	li	s2,0
    const int int_state = intr_save();
    const thread_t current = kernel_scheduler_get_current_thread();
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	7d8080e7          	jalr	2008(ra) # 80002660 <kernel_scheduler_get_current_thread>

    if (current != NULL)
    80002e90:	06050e63          	beqz	a0,80002f0c <kernel_thread_sleep+0xb0>
    {
        current->sleep_timeout = ticks;
    80002e94:	0a953c23          	sd	s1,184(a0)
        current->state = THREAD_SLEEPING;
    80002e98:	00400793          	li	a5,4
    80002e9c:	00f52423          	sw	a5,8(a0)

        current->next = sleeping_queue_head;
    80002ea0:	0000a797          	auipc	a5,0xa
    80002ea4:	16078793          	addi	a5,a5,352 # 8000d000 <sleeping_queue_head>
    80002ea8:	0007b703          	ld	a4,0(a5)
    80002eac:	0ae53023          	sd	a4,160(a0)
        sleeping_queue_head = current;
    80002eb0:	00a7b023          	sd	a0,0(a5)

        kernel_thread_dispatch();
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	a58080e7          	jalr	-1448(ra) # 8000290c <kernel_thread_dispatch>
    if (previous_state)
    80002ebc:	04090063          	beqz	s2,80002efc <kernel_thread_sleep+0xa0>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002ec0:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80002ec4:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002ec8:	10079073          	csrw	sstatus,a5
    {
        return -1;
    }

    intr_restore(int_state);
    return 0;
    80002ecc:	00000913          	li	s2,0
}
    80002ed0:	00090513          	mv	a0,s2
    80002ed4:	01813083          	ld	ra,24(sp)
    80002ed8:	01013403          	ld	s0,16(sp)
    80002edc:	00813483          	ld	s1,8(sp)
    80002ee0:	00013903          	ld	s2,0(sp)
    80002ee4:	02010113          	addi	sp,sp,32
    80002ee8:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80002eec:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002ef0:	10079073          	csrw	sstatus,a5
        return 1;
    80002ef4:	00100913          	li	s2,1
    80002ef8:	f91ff06f          	j	80002e88 <kernel_thread_sleep+0x2c>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80002efc:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80002f00:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80002f04:	10079073          	csrw	sstatus,a5
}
    80002f08:	fc9ff06f          	j	80002ed0 <kernel_thread_sleep+0x74>
        return -1;
    80002f0c:	fff00913          	li	s2,-1
    80002f10:	fc1ff06f          	j	80002ed0 <kernel_thread_sleep+0x74>

0000000080002f14 <kernel_scheduler_update_sleeping_threads>:

void kernel_scheduler_update_sleeping_threads(const uint64 ticks)
{
    80002f14:	fd010113          	addi	sp,sp,-48
    80002f18:	02113423          	sd	ra,40(sp)
    80002f1c:	02813023          	sd	s0,32(sp)
    80002f20:	00913c23          	sd	s1,24(sp)
    80002f24:	01213823          	sd	s2,16(sp)
    80002f28:	01313423          	sd	s3,8(sp)
    80002f2c:	03010413          	addi	s0,sp,48
    80002f30:	00050993          	mv	s3,a0
    thread_t curr = sleeping_queue_head;
    80002f34:	0000a517          	auipc	a0,0xa
    80002f38:	0cc53503          	ld	a0,204(a0) # 8000d000 <sleeping_queue_head>
    thread_t prev = NULL;
    80002f3c:	00000493          	li	s1,0

    while (curr != NULL)
    80002f40:	0240006f          	j	80002f64 <kernel_scheduler_update_sleeping_threads+0x50>
        if (curr->sleep_timeout <= 0)
        {
            const thread_t wakeup = curr;
            if (prev == NULL)
            {
                sleeping_queue_head = curr->next;
    80002f44:	0a053783          	ld	a5,160(a0)
    80002f48:	0000a717          	auipc	a4,0xa
    80002f4c:	0af73c23          	sd	a5,184(a4) # 8000d000 <sleeping_queue_head>
            else
            {
                prev->next = curr->next;
            }

            curr = curr->next;
    80002f50:	0a053903          	ld	s2,160(a0)

            wakeup->state = THREAD_READY;
    80002f54:	00052423          	sw	zero,8(a0)
            kernel_scheduler_append(wakeup);
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	ac0080e7          	jalr	-1344(ra) # 80002a18 <kernel_scheduler_append>
            curr = curr->next;
    80002f60:	00090513          	mv	a0,s2
    while (curr != NULL)
    80002f64:	02050c63          	beqz	a0,80002f9c <kernel_scheduler_update_sleeping_threads+0x88>
        if (curr->sleep_timeout > 0)
    80002f68:	0b853783          	ld	a5,184(a0)
    80002f6c:	00078663          	beqz	a5,80002f78 <kernel_scheduler_update_sleeping_threads+0x64>
            curr->sleep_timeout -= ticks;
    80002f70:	413787b3          	sub	a5,a5,s3
    80002f74:	0af53c23          	sd	a5,184(a0)
        if (curr->sleep_timeout <= 0)
    80002f78:	0b853783          	ld	a5,184(a0)
    80002f7c:	00079a63          	bnez	a5,80002f90 <kernel_scheduler_update_sleeping_threads+0x7c>
            if (prev == NULL)
    80002f80:	fc0482e3          	beqz	s1,80002f44 <kernel_scheduler_update_sleeping_threads+0x30>
                prev->next = curr->next;
    80002f84:	0a053783          	ld	a5,160(a0)
    80002f88:	0af4b023          	sd	a5,160(s1)
    80002f8c:	fc5ff06f          	j	80002f50 <kernel_scheduler_update_sleeping_threads+0x3c>
        }
        else
        {
            prev = curr;
    80002f90:	00050493          	mv	s1,a0
            curr = curr->next;
    80002f94:	0a053503          	ld	a0,160(a0)
    80002f98:	fcdff06f          	j	80002f64 <kernel_scheduler_update_sleeping_threads+0x50>
        }
    }
}
    80002f9c:	02813083          	ld	ra,40(sp)
    80002fa0:	02013403          	ld	s0,32(sp)
    80002fa4:	01813483          	ld	s1,24(sp)
    80002fa8:	01013903          	ld	s2,16(sp)
    80002fac:	00813983          	ld	s3,8(sp)
    80002fb0:	03010113          	addi	sp,sp,48
    80002fb4:	00008067          	ret

0000000080002fb8 <console_rx_thread>:
        UART_TX_DATA = c;
    }
}

static void console_rx_thread(void*)
{
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    while (1)
    {
        kernel_sem_wait(rx_irq);
    80002fc8:	0000a517          	auipc	a0,0xa
    80002fcc:	06053503          	ld	a0,96(a0) # 8000d028 <rx_irq>
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	b30080e7          	jalr	-1232(ra) # 80001b00 <kernel_sem_wait>
        while (UART_STATUS & CONSOLE_RX_STATUS_BIT)
    80002fd8:	00007797          	auipc	a5,0x7
    80002fdc:	0487b783          	ld	a5,72(a5) # 8000a020 <CONSOLE_STATUS>
    80002fe0:	0007c783          	lbu	a5,0(a5)
    80002fe4:	0017f793          	andi	a5,a5,1
    80002fe8:	fe0780e3          	beqz	a5,80002fc8 <console_rx_thread+0x10>
        {
            uint8 c = UART_RX_DATA;
    80002fec:	00007797          	auipc	a5,0x7
    80002ff0:	0247b783          	ld	a5,36(a5) # 8000a010 <CONSOLE_RX_DATA>
    80002ff4:	0007c783          	lbu	a5,0(a5)
    80002ff8:	fef40723          	sb	a5,-18(s0)
            kernel_rw_buffer_write(rx_buf, &c, 1);
    80002ffc:	00100613          	li	a2,1
    80003000:	fee40593          	addi	a1,s0,-18
    80003004:	0000a517          	auipc	a0,0xa
    80003008:	03453503          	ld	a0,52(a0) # 8000d038 <rx_buf>
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	f90080e7          	jalr	-112(ra) # 80001f9c <kernel_rw_buffer_write>
            volatile char a = c;
    80003014:	fee44783          	lbu	a5,-18(s0)
    80003018:	fef407a3          	sb	a5,-17(s0)
    8000301c:	fbdff06f          	j	80002fd8 <console_rx_thread+0x20>

0000000080003020 <console_tx_thread>:
{
    80003020:	fe010113          	addi	sp,sp,-32
    80003024:	00113c23          	sd	ra,24(sp)
    80003028:	00813823          	sd	s0,16(sp)
    8000302c:	02010413          	addi	s0,sp,32
        kernel_rw_buffer_read(tx_buf, &c, 1); // block until putc deposits something
    80003030:	00100613          	li	a2,1
    80003034:	fef40593          	addi	a1,s0,-17
    80003038:	0000a517          	auipc	a0,0xa
    8000303c:	ff853503          	ld	a0,-8(a0) # 8000d030 <tx_buf>
    80003040:	fffff097          	auipc	ra,0xfffff
    80003044:	0bc080e7          	jalr	188(ra) # 800020fc <kernel_rw_buffer_read>
        kernel_sem_wait(tx_irq); // block until UART ready to send
    80003048:	0000a517          	auipc	a0,0xa
    8000304c:	fd853503          	ld	a0,-40(a0) # 8000d020 <tx_irq>
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	ab0080e7          	jalr	-1360(ra) # 80001b00 <kernel_sem_wait>
        UART_TX_DATA = c;
    80003058:	fef44703          	lbu	a4,-17(s0)
    8000305c:	00007797          	auipc	a5,0x7
    80003060:	fbc7b783          	ld	a5,-68(a5) # 8000a018 <CONSOLE_TX_DATA>
    80003064:	00e78023          	sb	a4,0(a5)
    while (1)
    80003068:	fc9ff06f          	j	80003030 <console_tx_thread+0x10>

000000008000306c <kernel_console_irq_handler>:
    }
}


void kernel_console_irq_handler()
{
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	02010413          	addi	s0,sp,32
    if (UART_STATUS & CONSOLE_RX_STATUS_BIT)
    80003080:	00007497          	auipc	s1,0x7
    80003084:	fa04b483          	ld	s1,-96(s1) # 8000a020 <CONSOLE_STATUS>
    80003088:	0004c783          	lbu	a5,0(s1)
    8000308c:	0017f793          	andi	a5,a5,1
    80003090:	02079263          	bnez	a5,800030b4 <kernel_console_irq_handler+0x48>
        kernel_sem_signal(rx_irq);
    if (UART_STATUS & CONSOLE_TX_STATUS_BIT)
    80003094:	0004c783          	lbu	a5,0(s1)
    80003098:	0207f793          	andi	a5,a5,32
    8000309c:	02079663          	bnez	a5,800030c8 <kernel_console_irq_handler+0x5c>
        kernel_sem_signal(tx_irq);
}
    800030a0:	01813083          	ld	ra,24(sp)
    800030a4:	01013403          	ld	s0,16(sp)
    800030a8:	00813483          	ld	s1,8(sp)
    800030ac:	02010113          	addi	sp,sp,32
    800030b0:	00008067          	ret
        kernel_sem_signal(rx_irq);
    800030b4:	0000a517          	auipc	a0,0xa
    800030b8:	f7453503          	ld	a0,-140(a0) # 8000d028 <rx_irq>
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	b98080e7          	jalr	-1128(ra) # 80001c54 <kernel_sem_signal>
    800030c4:	fd1ff06f          	j	80003094 <kernel_console_irq_handler+0x28>
        kernel_sem_signal(tx_irq);
    800030c8:	0000a517          	auipc	a0,0xa
    800030cc:	f5853503          	ld	a0,-168(a0) # 8000d020 <tx_irq>
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	b84080e7          	jalr	-1148(ra) # 80001c54 <kernel_sem_signal>
}
    800030d8:	fc9ff06f          	j	800030a0 <kernel_console_irq_handler+0x34>

00000000800030dc <kernel_console_init>:

void kernel_console_init()
{
    800030dc:	fe010113          	addi	sp,sp,-32
    800030e0:	00113c23          	sd	ra,24(sp)
    800030e4:	00813823          	sd	s0,16(sp)
    800030e8:	02010413          	addi	s0,sp,32
    kernel_rw_buffer_open(&rx_buf, 256);
    800030ec:	10000593          	li	a1,256
    800030f0:	0000a517          	auipc	a0,0xa
    800030f4:	f4850513          	addi	a0,a0,-184 # 8000d038 <rx_buf>
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	cbc080e7          	jalr	-836(ra) # 80001db4 <kernel_rw_buffer_open>
    kernel_rw_buffer_open(&tx_buf, 256);
    80003100:	10000593          	li	a1,256
    80003104:	0000a517          	auipc	a0,0xa
    80003108:	f2c50513          	addi	a0,a0,-212 # 8000d030 <tx_buf>
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	ca8080e7          	jalr	-856(ra) # 80001db4 <kernel_rw_buffer_open>
    kernel_sem_new(&rx_irq, 0);
    80003114:	00000593          	li	a1,0
    80003118:	0000a517          	auipc	a0,0xa
    8000311c:	f1050513          	addi	a0,a0,-240 # 8000d028 <rx_irq>
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	848080e7          	jalr	-1976(ra) # 80001968 <kernel_sem_new>
    kernel_sem_new(&tx_irq, 0);
    80003128:	00000593          	li	a1,0
    8000312c:	0000a517          	auipc	a0,0xa
    80003130:	ef450513          	addi	a0,a0,-268 # 8000d020 <tx_irq>
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	834080e7          	jalr	-1996(ra) # 80001968 <kernel_sem_new>

    thread_t tx_t, rx_t;
    kernel_thread_create_active(&tx_t, console_tx_thread, NULL, 1);
    8000313c:	00100693          	li	a3,1
    80003140:	00000613          	li	a2,0
    80003144:	00000597          	auipc	a1,0x0
    80003148:	edc58593          	addi	a1,a1,-292 # 80003020 <console_tx_thread>
    8000314c:	fe840513          	addi	a0,s0,-24
    80003150:	00000097          	auipc	ra,0x0
    80003154:	980080e7          	jalr	-1664(ra) # 80002ad0 <kernel_thread_create_active>
    kernel_thread_create_active(&rx_t, console_rx_thread, NULL, 1);
    80003158:	00100693          	li	a3,1
    8000315c:	00000613          	li	a2,0
    80003160:	00000597          	auipc	a1,0x0
    80003164:	e5858593          	addi	a1,a1,-424 # 80002fb8 <console_rx_thread>
    80003168:	fe040513          	addi	a0,s0,-32
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	964080e7          	jalr	-1692(ra) # 80002ad0 <kernel_thread_create_active>
}
    80003174:	01813083          	ld	ra,24(sp)
    80003178:	01013403          	ld	s0,16(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret

0000000080003184 <kernel_get_write_buffer_count>:

int kernel_get_write_buffer_count()
{
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00813423          	sd	s0,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    return tx_buf->full->value;
    80003190:	0000a797          	auipc	a5,0xa
    80003194:	ea07b783          	ld	a5,-352(a5) # 8000d030 <tx_buf>
    80003198:	0287b783          	ld	a5,40(a5)
}
    8000319c:	0087a503          	lw	a0,8(a5)
    800031a0:	00813403          	ld	s0,8(sp)
    800031a4:	01010113          	addi	sp,sp,16
    800031a8:	00008067          	ret

00000000800031ac <kernel_get_read_buffer_count>:
int kernel_get_read_buffer_count()
{
    800031ac:	ff010113          	addi	sp,sp,-16
    800031b0:	00813423          	sd	s0,8(sp)
    800031b4:	01010413          	addi	s0,sp,16
    return rx_buf->full->value;
    800031b8:	0000a797          	auipc	a5,0xa
    800031bc:	e807b783          	ld	a5,-384(a5) # 8000d038 <rx_buf>
    800031c0:	0287b783          	ld	a5,40(a5)
}
    800031c4:	0087a503          	lw	a0,8(a5)
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <kernel_putc>:

void kernel_putc(char c)
{
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	02010413          	addi	s0,sp,32
    800031e4:	fea407a3          	sb	a0,-17(s0)
    kernel_rw_buffer_write(tx_buf, &c, 1);
    800031e8:	00100613          	li	a2,1
    800031ec:	fef40593          	addi	a1,s0,-17
    800031f0:	0000a517          	auipc	a0,0xa
    800031f4:	e4053503          	ld	a0,-448(a0) # 8000d030 <tx_buf>
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	da4080e7          	jalr	-604(ra) # 80001f9c <kernel_rw_buffer_write>
}
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	02010113          	addi	sp,sp,32
    8000320c:	00008067          	ret

0000000080003210 <kernel_getc>:

char kernel_getc()
{
    80003210:	fe010113          	addi	sp,sp,-32
    80003214:	00113c23          	sd	ra,24(sp)
    80003218:	00813823          	sd	s0,16(sp)
    8000321c:	02010413          	addi	s0,sp,32
    char c;
    kernel_rw_buffer_read(rx_buf, &c, 1);
    80003220:	00100613          	li	a2,1
    80003224:	fef40593          	addi	a1,s0,-17
    80003228:	0000a517          	auipc	a0,0xa
    8000322c:	e1053503          	ld	a0,-496(a0) # 8000d038 <rx_buf>
    80003230:	fffff097          	auipc	ra,0xfffff
    80003234:	ecc080e7          	jalr	-308(ra) # 800020fc <kernel_rw_buffer_read>
    return c;
}
    80003238:	fef44503          	lbu	a0,-17(s0)
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	02010113          	addi	sp,sp,32
    80003248:	00008067          	ret

000000008000324c <kernel_puts>:

void kernel_puts(const char* s)
{
    8000324c:	fe010113          	addi	sp,sp,-32
    80003250:	00113c23          	sd	ra,24(sp)
    80003254:	00813823          	sd	s0,16(sp)
    80003258:	00913423          	sd	s1,8(sp)
    8000325c:	01213023          	sd	s2,0(sp)
    80003260:	02010413          	addi	s0,sp,32
    80003264:	00050913          	mv	s2,a0
    for (int i = 0; s[i] != '\0'; i++)
    80003268:	00000493          	li	s1,0
    8000326c:	0100006f          	j	8000327c <kernel_puts+0x30>
        kernel_putc(s[i]);
    80003270:	00000097          	auipc	ra,0x0
    80003274:	f64080e7          	jalr	-156(ra) # 800031d4 <kernel_putc>
    for (int i = 0; s[i] != '\0'; i++)
    80003278:	0014849b          	addiw	s1,s1,1
    8000327c:	009907b3          	add	a5,s2,s1
    80003280:	0007c503          	lbu	a0,0(a5)
    80003284:	fe0516e3          	bnez	a0,80003270 <kernel_puts+0x24>
}
    80003288:	01813083          	ld	ra,24(sp)
    8000328c:	01013403          	ld	s0,16(sp)
    80003290:	00813483          	ld	s1,8(sp)
    80003294:	00013903          	ld	s2,0(sp)
    80003298:	02010113          	addi	sp,sp,32
    8000329c:	00008067          	ret

00000000800032a0 <kernel_gets>:

void kernel_gets(char* buf, const int max)
{
    800032a0:	fd010113          	addi	sp,sp,-48
    800032a4:	02113423          	sd	ra,40(sp)
    800032a8:	02813023          	sd	s0,32(sp)
    800032ac:	00913c23          	sd	s1,24(sp)
    800032b0:	01213823          	sd	s2,16(sp)
    800032b4:	01313423          	sd	s3,8(sp)
    800032b8:	01413023          	sd	s4,0(sp)
    800032bc:	03010413          	addi	s0,sp,48
    800032c0:	00050993          	mv	s3,a0
    800032c4:	00058913          	mv	s2,a1
    void __putc(char a);
    int i = 0;
    800032c8:	00000493          	li	s1,0
    while (i < max - 1)
    800032cc:	03c0006f          	j	80003308 <kernel_gets+0x68>
    {
        const char c = kernel_getc();
        if (c == '\r' || c == '\n')
        {
            kernel_putc('\n');
    800032d0:	00a00513          	li	a0,10
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	f00080e7          	jalr	-256(ra) # 800031d4 <kernel_putc>
            continue;
        }
        buf[i++] = c;
        kernel_putc(c);
    }
    buf[i] = '\0';
    800032dc:	009989b3          	add	s3,s3,s1
    800032e0:	00098023          	sb	zero,0(s3)
}
    800032e4:	02813083          	ld	ra,40(sp)
    800032e8:	02013403          	ld	s0,32(sp)
    800032ec:	01813483          	ld	s1,24(sp)
    800032f0:	01013903          	ld	s2,16(sp)
    800032f4:	00813983          	ld	s3,8(sp)
    800032f8:	00013a03          	ld	s4,0(sp)
    800032fc:	03010113          	addi	sp,sp,48
    80003300:	00008067          	ret
            if (i > 0)
    80003304:	04904863          	bgtz	s1,80003354 <kernel_gets+0xb4>
    while (i < max - 1)
    80003308:	fff9079b          	addiw	a5,s2,-1
    8000330c:	fcf4d8e3          	bge	s1,a5,800032dc <kernel_gets+0x3c>
        const char c = kernel_getc();
    80003310:	00000097          	auipc	ra,0x0
    80003314:	f00080e7          	jalr	-256(ra) # 80003210 <kernel_getc>
        if (c == '\r' || c == '\n')
    80003318:	00d00793          	li	a5,13
    8000331c:	faf50ae3          	beq	a0,a5,800032d0 <kernel_gets+0x30>
    80003320:	00a00793          	li	a5,10
    80003324:	faf506e3          	beq	a0,a5,800032d0 <kernel_gets+0x30>
        if (c == 0x7F || c == '\b')
    80003328:	07f00793          	li	a5,127
    8000332c:	fcf50ce3          	beq	a0,a5,80003304 <kernel_gets+0x64>
    80003330:	00800793          	li	a5,8
    80003334:	fcf508e3          	beq	a0,a5,80003304 <kernel_gets+0x64>
        buf[i++] = c;
    80003338:	00148a1b          	addiw	s4,s1,1
    8000333c:	009984b3          	add	s1,s3,s1
    80003340:	00a48023          	sb	a0,0(s1)
        kernel_putc(c);
    80003344:	00000097          	auipc	ra,0x0
    80003348:	e90080e7          	jalr	-368(ra) # 800031d4 <kernel_putc>
        buf[i++] = c;
    8000334c:	000a0493          	mv	s1,s4
    80003350:	fb9ff06f          	j	80003308 <kernel_gets+0x68>
                i--;
    80003354:	fff4849b          	addiw	s1,s1,-1
                kernel_putc('\b');
    80003358:	00800513          	li	a0,8
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	e78080e7          	jalr	-392(ra) # 800031d4 <kernel_putc>
                kernel_putc(' ');
    80003364:	02000513          	li	a0,32
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	e6c080e7          	jalr	-404(ra) # 800031d4 <kernel_putc>
                kernel_putc('\b');
    80003370:	00800513          	li	a0,8
    80003374:	00000097          	auipc	ra,0x0
    80003378:	e60080e7          	jalr	-416(ra) # 800031d4 <kernel_putc>
            continue;
    8000337c:	f8dff06f          	j	80003308 <kernel_gets+0x68>

0000000080003380 <malloc>:
//
// Created by janko on 5/20/26.
//
#include "../lib/hw.h"
void* malloc(size_t size) {
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00813423          	sd	s0,8(sp)
    80003388:	01010413          	addi	s0,sp,16
    8000338c:	00050593          	mv	a1,a0
    register uint64 a7_reg asm("a7") = 0x01; // Syscall identifier
    80003390:	00100893          	li	a7,1
    register uint64 a1_reg asm("a1") = size; // Target size parameter
    register uint64 a0_reg asm("a0");        // Placeholder for allocation pointer
    asm volatile (
    80003394:	00000073          	ecall
        : "=r" (a0_reg)
        : "r" (a7_reg), "r" (a1_reg)
        : "memory"
    );
    return (void*)a0_reg;
}
    80003398:	00813403          	ld	s0,8(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <memset>:

void memset(void* ptr, int value, size_t size) {
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    char* byte_ptr = (char*)ptr;

    for (size_t i = 0; i < size; i++) {
    800033b0:	00000793          	li	a5,0
    800033b4:	0100006f          	j	800033c4 <memset+0x20>
        byte_ptr[i] = value;
    800033b8:	00f50733          	add	a4,a0,a5
    800033bc:	00b70023          	sb	a1,0(a4)
    for (size_t i = 0; i < size; i++) {
    800033c0:	00178793          	addi	a5,a5,1
    800033c4:	fec7eae3          	bltu	a5,a2,800033b8 <memset+0x14>
    }
}
    800033c8:	00813403          	ld	s0,8(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <free>:

int free(void* ptr) {
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00813423          	sd	s0,8(sp)
    800033dc:	01010413          	addi	s0,sp,16
    800033e0:	00050593          	mv	a1,a0
    register uint64 a7_reg asm("a7") = 0x02; // Syscall identifier
    800033e4:	00200893          	li	a7,2
    register uint64 a1_reg asm("a1") = (uint64)ptr;
    register uint64 a0_reg asm("a0");
    asm volatile (
    800033e8:	00000073          	ecall
        : "=r" (a0_reg)
        : "r" (a7_reg), "r" (a1_reg)
        : "memory"
    );
    return (int)a0_reg;
    800033ec:	0005051b          	sext.w	a0,a0
    800033f0:	00813403          	ld	s0,8(sp)
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00008067          	ret

00000000800033fc <kernel_mem_init>:

FreeMem* free_head;
int initialized;

void kernel_mem_init()
{
    800033fc:	ff010113          	addi	sp,sp,-16
    80003400:	00813423          	sd	s0,8(sp)
    80003404:	01010413          	addi	s0,sp,16
    if (initialized)
    80003408:	0000a717          	auipc	a4,0xa
    8000340c:	c3872703          	lw	a4,-968(a4) # 8000d040 <initialized>
    80003410:	06071463          	bnez	a4,80003478 <kernel_mem_init+0x7c>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003414:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80003418:	0027f693          	andi	a3,a5,2
    8000341c:	06069463          	bnez	a3,80003484 <kernel_mem_init+0x88>
        return;
    }
    const int lock = intr_save();
    if (!initialized)
    {
        free_head = (FreeMem*)HEAP_START_ADDR;
    80003420:	00009797          	auipc	a5,0x9
    80003424:	6987b783          	ld	a5,1688(a5) # 8000cab8 <HEAP_START_ADDR>
    80003428:	0000a617          	auipc	a2,0xa
    8000342c:	c2060613          	addi	a2,a2,-992 # 8000d048 <free_head>
    80003430:	00f63023          	sd	a5,0(a2)

        free_head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR);
    80003434:	00009697          	auipc	a3,0x9
    80003438:	67c6b683          	ld	a3,1660(a3) # 8000cab0 <HEAP_END_ADDR>
    8000343c:	40f686b3          	sub	a3,a3,a5
    80003440:	00d7bc23          	sd	a3,24(a5)
        free_head->next = NULL;
    80003444:	0007b023          	sd	zero,0(a5)
        free_head->prev = NULL;
    80003448:	00063783          	ld	a5,0(a2)
    8000344c:	0007b823          	sd	zero,16(a5)
        free_head->magic = MAGIC_FREE;
    80003450:	00007697          	auipc	a3,0x7
    80003454:	bb06b683          	ld	a3,-1104(a3) # 8000a000 <kalloc+0x7fc>
    80003458:	00d7b423          	sd	a3,8(a5)

        initialized = 1;
    8000345c:	00100793          	li	a5,1
    80003460:	0000a697          	auipc	a3,0xa
    80003464:	bef6a023          	sw	a5,-1056(a3) # 8000d040 <initialized>
    if (previous_state)
    80003468:	02070663          	beqz	a4,80003494 <kernel_mem_init+0x98>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000346c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80003470:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003474:	10079073          	csrw	sstatus,a5
    }
    intr_restore(lock);
}
    80003478:	00813403          	ld	s0,8(sp)
    8000347c:	01010113          	addi	sp,sp,16
    80003480:	00008067          	ret
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80003484:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003488:	10079073          	csrw	sstatus,a5
        return 1;
    8000348c:	00100713          	li	a4,1
    80003490:	f91ff06f          	j	80003420 <kernel_mem_init+0x24>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003494:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80003498:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    8000349c:	10079073          	csrw	sstatus,a5
}
    800034a0:	fd9ff06f          	j	80003478 <kernel_mem_init+0x7c>

00000000800034a4 <kernel_mem_alloc>:

void* kernel_mem_alloc(size_t size)
{
    800034a4:	fe010113          	addi	sp,sp,-32
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	00813823          	sd	s0,16(sp)
    800034b0:	00913423          	sd	s1,8(sp)
    800034b4:	02010413          	addi	s0,sp,32
    800034b8:	00050493          	mv	s1,a0
    if (!initialized)
    800034bc:	0000a797          	auipc	a5,0xa
    800034c0:	b847a783          	lw	a5,-1148(a5) # 8000d040 <initialized>
    800034c4:	04078063          	beqz	a5,80003504 <kernel_mem_alloc+0x60>
    {
        kernel_mem_init();
    }

    if (size == 0)
    800034c8:	16048663          	beqz	s1,80003634 <kernel_mem_alloc+0x190>
    {
        return NULL;
    }


    if (size < MEM_BLOCK_SIZE) size = MEM_BLOCK_SIZE;
    800034cc:	03f00793          	li	a5,63
    800034d0:	0097e463          	bltu	a5,s1,800034d8 <kernel_mem_alloc+0x34>
    800034d4:	04000493          	li	s1,64
    const size_t total_blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE + 1; //for size header, magic number
    800034d8:	03f48793          	addi	a5,s1,63
    800034dc:	0067d793          	srli	a5,a5,0x6
    800034e0:	00178793          	addi	a5,a5,1
    size_t requested_bytes = total_blocks * MEM_BLOCK_SIZE;
    800034e4:	00679793          	slli	a5,a5,0x6
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800034e8:	10002773          	csrr	a4,sstatus
    if (sstatus & SSTATUS_SIE)
    800034ec:	00277693          	andi	a3,a4,2
    800034f0:	02069063          	bnez	a3,80003510 <kernel_mem_alloc+0x6c>
    return 0; // Interrupts were already disabled
    800034f4:	00000613          	li	a2,0

    const int lock = intr_save();

    FreeMem* curr = free_head;
    800034f8:	0000a517          	auipc	a0,0xa
    800034fc:	b5053503          	ld	a0,-1200(a0) # 8000d048 <free_head>
    while (curr && curr->size < requested_bytes)
    80003500:	0240006f          	j	80003524 <kernel_mem_alloc+0x80>
        kernel_mem_init();
    80003504:	00000097          	auipc	ra,0x0
    80003508:	ef8080e7          	jalr	-264(ra) # 800033fc <kernel_mem_init>
    8000350c:	fbdff06f          	j	800034c8 <kernel_mem_alloc+0x24>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    80003510:	ffd77713          	andi	a4,a4,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003514:	10071073          	csrw	sstatus,a4
        return 1;
    80003518:	00100613          	li	a2,1
    8000351c:	fddff06f          	j	800034f8 <kernel_mem_alloc+0x54>
    {
        curr = curr->next;
    80003520:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < requested_bytes)
    80003524:	00050663          	beqz	a0,80003530 <kernel_mem_alloc+0x8c>
    80003528:	01853703          	ld	a4,24(a0)
    8000352c:	fef76ae3          	bltu	a4,a5,80003520 <kernel_mem_alloc+0x7c>
    }

    // Out of memory
    if (!curr)
    80003530:	08050263          	beqz	a0,800035b4 <kernel_mem_alloc+0x110>
    {
        intr_restore(lock);
        return NULL;
    }

    const size_t remaining_bytes = curr->size - requested_bytes;
    80003534:	01853703          	ld	a4,24(a0)
    80003538:	40f706b3          	sub	a3,a4,a5
    FreeMem* allocated_chunk = curr;

    if (remaining_bytes >= MEM_BLOCK_SIZE)
    8000353c:	03f00593          	li	a1,63
    80003540:	0ad5f263          	bgeu	a1,a3,800035e4 <kernel_mem_alloc+0x140>
    {
        FreeMem* new_free_node = (FreeMem*)((char*)curr + requested_bytes);
    80003544:	00f50733          	add	a4,a0,a5
        new_free_node->size = remaining_bytes;
    80003548:	00d73c23          	sd	a3,24(a4)
        new_free_node->next = curr->next;
    8000354c:	00053683          	ld	a3,0(a0)
    80003550:	00d73023          	sd	a3,0(a4)
        new_free_node->magic = MAGIC_FREE;
    80003554:	00007697          	auipc	a3,0x7
    80003558:	aac6b683          	ld	a3,-1364(a3) # 8000a000 <kalloc+0x7fc>
    8000355c:	00d73423          	sd	a3,8(a4)
        new_free_node->prev = curr->prev;
    80003560:	01053683          	ld	a3,16(a0)
    80003564:	00d73823          	sd	a3,16(a4)

        if (curr->prev)
    80003568:	06068863          	beqz	a3,800035d8 <kernel_mem_alloc+0x134>
        {
            curr->prev->next = new_free_node;
    8000356c:	00e6b023          	sd	a4,0(a3)
        else
        {
            free_head = new_free_node;
        }

        if (curr->next)
    80003570:	00053683          	ld	a3,0(a0)
    80003574:	00068463          	beqz	a3,8000357c <kernel_mem_alloc+0xd8>
        {
            curr->next->prev = new_free_node;
    80003578:	00e6b823          	sd	a4,16(a3)
        {
            curr->next->prev = curr->prev;
        }
    }
    size_t* header = (size_t*)allocated_chunk;
    header[0] = requested_bytes;
    8000357c:	00f53023          	sd	a5,0(a0)
    header[1] = MAGIC_TAKEN;
    80003580:	00007797          	auipc	a5,0x7
    80003584:	a887b783          	ld	a5,-1400(a5) # 8000a008 <kalloc+0x804>
    80003588:	00f53423          	sd	a5,8(a0)
    if (previous_state)
    8000358c:	08060c63          	beqz	a2,80003624 <kernel_mem_alloc+0x180>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003590:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80003594:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003598:	10079073          	csrw	sstatus,a5

    intr_restore(lock);
    return (void*)((char*)allocated_chunk + 1 * MEM_BLOCK_SIZE);
    8000359c:	04050513          	addi	a0,a0,64
}
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00813483          	ld	s1,8(sp)
    800035ac:	02010113          	addi	sp,sp,32
    800035b0:	00008067          	ret
    if (previous_state)
    800035b4:	00060a63          	beqz	a2,800035c8 <kernel_mem_alloc+0x124>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800035b8:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    800035bc:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800035c0:	10079073          	csrw	sstatus,a5
}
    800035c4:	fddff06f          	j	800035a0 <kernel_mem_alloc+0xfc>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800035c8:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    800035cc:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800035d0:	10079073          	csrw	sstatus,a5
}
    800035d4:	fcdff06f          	j	800035a0 <kernel_mem_alloc+0xfc>
            free_head = new_free_node;
    800035d8:	0000a697          	auipc	a3,0xa
    800035dc:	a6e6b823          	sd	a4,-1424(a3) # 8000d048 <free_head>
    800035e0:	f91ff06f          	j	80003570 <kernel_mem_alloc+0xcc>
        if (curr->prev)
    800035e4:	01053783          	ld	a5,16(a0)
    800035e8:	02078263          	beqz	a5,8000360c <kernel_mem_alloc+0x168>
            curr->prev->next = curr->next;
    800035ec:	00053683          	ld	a3,0(a0)
    800035f0:	00d7b023          	sd	a3,0(a5)
        if (curr->next)
    800035f4:	00053783          	ld	a5,0(a0)
    800035f8:	02078263          	beqz	a5,8000361c <kernel_mem_alloc+0x178>
            curr->next->prev = curr->prev;
    800035fc:	01053683          	ld	a3,16(a0)
    80003600:	00d7b823          	sd	a3,16(a5)
        requested_bytes = curr->size;
    80003604:	00070793          	mv	a5,a4
    80003608:	f75ff06f          	j	8000357c <kernel_mem_alloc+0xd8>
            free_head = curr->next;
    8000360c:	00053783          	ld	a5,0(a0)
    80003610:	0000a697          	auipc	a3,0xa
    80003614:	a2f6bc23          	sd	a5,-1480(a3) # 8000d048 <free_head>
    80003618:	fddff06f          	j	800035f4 <kernel_mem_alloc+0x150>
        requested_bytes = curr->size;
    8000361c:	00070793          	mv	a5,a4
    80003620:	f5dff06f          	j	8000357c <kernel_mem_alloc+0xd8>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003624:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80003628:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    8000362c:	10079073          	csrw	sstatus,a5
}
    80003630:	f6dff06f          	j	8000359c <kernel_mem_alloc+0xf8>
        return NULL;
    80003634:	00000513          	li	a0,0
    80003638:	f69ff06f          	j	800035a0 <kernel_mem_alloc+0xfc>

000000008000363c <kernel_mem_free>:

int kernel_mem_free(void* ptr)
{
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00813423          	sd	s0,8(sp)
    80003644:	01010413          	addi	s0,sp,16
    if (!ptr) return 0;
    80003648:	20050263          	beqz	a0,8000384c <kernel_mem_free+0x210>
    8000364c:	00050613          	mv	a2,a0
    if (!initialized) return -2;
    80003650:	0000a797          	auipc	a5,0xa
    80003654:	9f07a783          	lw	a5,-1552(a5) # 8000d040 <initialized>
    80003658:	1e078e63          	beqz	a5,80003854 <kernel_mem_free+0x218>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000365c:	100027f3          	csrr	a5,sstatus
    if (sstatus & SSTATUS_SIE)
    80003660:	0027f713          	andi	a4,a5,2
    80003664:	06071a63          	bnez	a4,800036d8 <kernel_mem_free+0x9c>
    return 0; // Interrupts were already disabled
    80003668:	00000513          	li	a0,0

    const int lock = intr_save();
    char* chunk_start = (char*)ptr - 1 * MEM_BLOCK_SIZE;
    8000366c:	fc060693          	addi	a3,a2,-64
    if (((size_t*)chunk_start)[1] != MAGIC_TAKEN)
    80003670:	fc863703          	ld	a4,-56(a2)
    80003674:	002097b7          	lui	a5,0x209
    80003678:	19178793          	addi	a5,a5,401 # 209191 <_entry-0x7fdf6e6f>
    8000367c:	00c79793          	slli	a5,a5,0xc
    80003680:	a0978793          	addi	a5,a5,-1527
    80003684:	00d79793          	slli	a5,a5,0xd
    80003688:	41378793          	addi	a5,a5,1043
    8000368c:	00c79793          	slli	a5,a5,0xc
    80003690:	51278793          	addi	a5,a5,1298
    80003694:	04f71a63          	bne	a4,a5,800036e8 <kernel_mem_free+0xac>
    {
        intr_restore(lock);
        return -1; //double free
    }
    const size_t chunk_size = ((size_t*)chunk_start)[0];
    80003698:	fc063783          	ld	a5,-64(a2)
    FreeMem* new_node = (FreeMem*)chunk_start;
    new_node->size = chunk_size;
    8000369c:	fcf63c23          	sd	a5,-40(a2)
    new_node->magic = MAGIC_FREE;
    800036a0:	00007797          	auipc	a5,0x7
    800036a4:	9607b783          	ld	a5,-1696(a5) # 8000a000 <kalloc+0x7fc>
    800036a8:	fcf63423          	sd	a5,-56(a2)

    if (!free_head)
    800036ac:	0000a597          	auipc	a1,0xa
    800036b0:	99c5b583          	ld	a1,-1636(a1) # 8000d048 <free_head>
    800036b4:	06058063          	beqz	a1,80003714 <kernel_mem_free+0xd8>
        free_head = new_node;
        intr_restore(lock);
        return 0;
    }

    FreeMem* curr = free_head;
    800036b8:	00058793          	mv	a5,a1
    while (curr && curr < new_node)
    800036bc:	08078863          	beqz	a5,8000374c <kernel_mem_free+0x110>
    800036c0:	08d7f663          	bgeu	a5,a3,8000374c <kernel_mem_free+0x110>
    {
        if (!curr->next || curr->next > new_node)
    800036c4:	0007b703          	ld	a4,0(a5)
    800036c8:	08070263          	beqz	a4,8000374c <kernel_mem_free+0x110>
    800036cc:	08e6e063          	bltu	a3,a4,8000374c <kernel_mem_free+0x110>
        {
            break;
        }
        curr = curr->next;
    800036d0:	00070793          	mv	a5,a4
    800036d4:	fe9ff06f          	j	800036bc <kernel_mem_free+0x80>
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
    800036d8:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800036dc:	10079073          	csrw	sstatus,a5
        return 1;
    800036e0:	00100513          	li	a0,1
    800036e4:	f89ff06f          	j	8000366c <kernel_mem_free+0x30>
    if (previous_state)
    800036e8:	00050c63          	beqz	a0,80003700 <kernel_mem_free+0xc4>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    800036ec:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    800036f0:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    800036f4:	10079073          	csrw	sstatus,a5
        return -1; //double free
    800036f8:	fff00513          	li	a0,-1
}
    800036fc:	0940006f          	j	80003790 <kernel_mem_free+0x154>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003700:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80003704:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003708:	10079073          	csrw	sstatus,a5
    8000370c:	fff00513          	li	a0,-1
}
    80003710:	0800006f          	j	80003790 <kernel_mem_free+0x154>
        new_node->next = NULL;
    80003714:	fc063023          	sd	zero,-64(a2)
        new_node->prev = NULL;
    80003718:	fc063823          	sd	zero,-48(a2)
        free_head = new_node;
    8000371c:	0000a797          	auipc	a5,0xa
    80003720:	92d7b623          	sd	a3,-1748(a5) # 8000d048 <free_head>
    if (previous_state)
    80003724:	00050c63          	beqz	a0,8000373c <kernel_mem_free+0x100>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003728:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    8000372c:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003730:	10079073          	csrw	sstatus,a5
        return 0;
    80003734:	00000513          	li	a0,0
}
    80003738:	0580006f          	j	80003790 <kernel_mem_free+0x154>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000373c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80003740:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003744:	10079073          	csrw	sstatus,a5
}
    80003748:	0480006f          	j	80003790 <kernel_mem_free+0x154>
    }

    if (new_node < free_head)
    8000374c:	06b6f863          	bgeu	a3,a1,800037bc <kernel_mem_free+0x180>
    {
        new_node->next = free_head;
    80003750:	fcb63023          	sd	a1,-64(a2)
        new_node->prev = NULL;
    80003754:	fc063823          	sd	zero,-48(a2)
        free_head->prev = new_node;
    80003758:	0000a797          	auipc	a5,0xa
    8000375c:	8f078793          	addi	a5,a5,-1808 # 8000d048 <free_head>
    80003760:	0007b703          	ld	a4,0(a5)
    80003764:	00d73823          	sd	a3,16(a4)
        free_head = new_node;
    80003768:	00d7b023          	sd	a3,0(a5)

        if ((char*)new_node + new_node->size == (char*)new_node->next)
    8000376c:	fd863783          	ld	a5,-40(a2)
    80003770:	00f685b3          	add	a1,a3,a5
    80003774:	fc063703          	ld	a4,-64(a2)
    80003778:	02e58263          	beq	a1,a4,8000379c <kernel_mem_free+0x160>
    if (previous_state)
    8000377c:	0c050063          	beqz	a0,8000383c <kernel_mem_free+0x200>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003780:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80003784:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003788:	10079073          	csrw	sstatus,a5
            curr->next = new_node->next;
            if (new_node->next) new_node->next->prev = curr;
        }
    }
    intr_restore(lock);
    return 0;
    8000378c:	00000513          	li	a0,0
}
    80003790:	00813403          	ld	s0,8(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret
            new_node->size += new_node->next->size;
    8000379c:	01873583          	ld	a1,24(a4)
    800037a0:	00b787b3          	add	a5,a5,a1
    800037a4:	fcf63c23          	sd	a5,-40(a2)
            new_node->next = new_node->next->next;
    800037a8:	00073783          	ld	a5,0(a4)
    800037ac:	fcf63023          	sd	a5,-64(a2)
            if (new_node->next) new_node->next->prev = new_node;
    800037b0:	fc0786e3          	beqz	a5,8000377c <kernel_mem_free+0x140>
    800037b4:	00d7b823          	sd	a3,16(a5)
    800037b8:	fc5ff06f          	j	8000377c <kernel_mem_free+0x140>
        if (curr)
    800037bc:	00078c63          	beqz	a5,800037d4 <kernel_mem_free+0x198>
            new_node->next = curr->next;
    800037c0:	0007b703          	ld	a4,0(a5)
    800037c4:	fce63023          	sd	a4,-64(a2)
            if (curr->next) curr->next->prev = new_node;
    800037c8:	00070463          	beqz	a4,800037d0 <kernel_mem_free+0x194>
    800037cc:	00d73823          	sd	a3,16(a4)
            curr->next = new_node;
    800037d0:	00d7b023          	sd	a3,0(a5)
        new_node->prev = curr;
    800037d4:	fcf63823          	sd	a5,-48(a2)
        if (new_node->next && (char*)new_node + new_node->size == (char*)new_node->next)
    800037d8:	fc063703          	ld	a4,-64(a2)
    800037dc:	00070863          	beqz	a4,800037ec <kernel_mem_free+0x1b0>
    800037e0:	fd863583          	ld	a1,-40(a2)
    800037e4:	00b68833          	add	a6,a3,a1
    800037e8:	03070a63          	beq	a4,a6,8000381c <kernel_mem_free+0x1e0>
        if (curr && (char*)curr + curr->size == (char*)new_node)
    800037ec:	f80788e3          	beqz	a5,8000377c <kernel_mem_free+0x140>
    800037f0:	0187b703          	ld	a4,24(a5)
    800037f4:	00e785b3          	add	a1,a5,a4
    800037f8:	f8d592e3          	bne	a1,a3,8000377c <kernel_mem_free+0x140>
            curr->size += new_node->size;
    800037fc:	fd863683          	ld	a3,-40(a2)
    80003800:	00d70733          	add	a4,a4,a3
    80003804:	00e7bc23          	sd	a4,24(a5)
            curr->next = new_node->next;
    80003808:	fc063703          	ld	a4,-64(a2)
    8000380c:	00e7b023          	sd	a4,0(a5)
            if (new_node->next) new_node->next->prev = curr;
    80003810:	f60706e3          	beqz	a4,8000377c <kernel_mem_free+0x140>
    80003814:	00f73823          	sd	a5,16(a4)
    80003818:	f65ff06f          	j	8000377c <kernel_mem_free+0x140>
            new_node->size += new_node->next->size;
    8000381c:	01873803          	ld	a6,24(a4)
    80003820:	010585b3          	add	a1,a1,a6
    80003824:	fcb63c23          	sd	a1,-40(a2)
            new_node->next = new_node->next->next;
    80003828:	00073703          	ld	a4,0(a4)
    8000382c:	fce63023          	sd	a4,-64(a2)
            if (new_node->next) new_node->next->prev = new_node;
    80003830:	fa070ee3          	beqz	a4,800037ec <kernel_mem_free+0x1b0>
    80003834:	00d73823          	sd	a3,16(a4)
    80003838:	fb5ff06f          	j	800037ec <kernel_mem_free+0x1b0>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    8000383c:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    80003840:	ffd7f793          	andi	a5,a5,-3
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003844:	10079073          	csrw	sstatus,a5
}
    80003848:	f49ff06f          	j	80003790 <kernel_mem_free+0x154>
    if (!ptr) return 0;
    8000384c:	00000513          	li	a0,0
    80003850:	f41ff06f          	j	80003790 <kernel_mem_free+0x154>
    if (!initialized) return -2;
    80003854:	ffe00513          	li	a0,-2
    80003858:	f39ff06f          	j	80003790 <kernel_mem_free+0x154>

000000008000385c <kernel_memset>:

void* kernel_memset(void* ptr, uint64 value, size_t size)
{
    8000385c:	ff010113          	addi	sp,sp,-16
    80003860:	00813423          	sd	s0,8(sp)
    80003864:	01010413          	addi	s0,sp,16
    uint64* int64_ptr = (uint64*)ptr;
    80003868:	00050793          	mv	a5,a0
    while (size >= 8) {
    8000386c:	0100006f          	j	8000387c <kernel_memset+0x20>
        *int64_ptr = value;
    80003870:	00b7b023          	sd	a1,0(a5)
        int64_ptr++;
    80003874:	00878793          	addi	a5,a5,8
        size -= 8;
    80003878:	ff860613          	addi	a2,a2,-8
    while (size >= 8) {
    8000387c:	00700713          	li	a4,7
    80003880:	fec768e3          	bltu	a4,a2,80003870 <kernel_memset+0x14>
    }
    return ptr;
}
    80003884:	00813403          	ld	s0,8(sp)
    80003888:	01010113          	addi	sp,sp,16
    8000388c:	00008067          	ret

0000000080003890 <_Z14worker_erroredPv>:
    putc('\n');
    sem_signal(sync);
}

void worker_errored(void* a)
{
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00113423          	sd	ra,8(sp)
    80003898:	00813023          	sd	s0,0(sp)
    8000389c:	01010413          	addi	s0,sp,16
    time_sleep(20);
    800038a0:	01400513          	li	a0,20
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	f7c080e7          	jalr	-132(ra) # 80001820 <time_sleep>
    asm volatile("csrr t6, sepc");
    800038ac:	14102ff3          	csrr	t6,sepc
}
    800038b0:	00813083          	ld	ra,8(sp)
    800038b4:	00013403          	ld	s0,0(sp)
    800038b8:	01010113          	addi	sp,sp,16
    800038bc:	00008067          	ret

00000000800038c0 <_Z6workerPv>:
{
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00113c23          	sd	ra,24(sp)
    800038c8:	00813823          	sd	s0,16(sp)
    800038cc:	00913423          	sd	s1,8(sp)
    800038d0:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++)
    800038d4:	00000493          	li	s1,0
    800038d8:	0240006f          	j	800038fc <_Z6workerPv+0x3c>
        putc('0' + i);
    800038dc:	0304851b          	addiw	a0,s1,48
    800038e0:	0ff57513          	zext.b	a0,a0
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	044080e7          	jalr	68(ra) # 80001928 <putc>
        time_sleep(10);
    800038ec:	00a00513          	li	a0,10
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	f30080e7          	jalr	-208(ra) # 80001820 <time_sleep>
    for (int i = 0; i < 10; i++)
    800038f8:	0014849b          	addiw	s1,s1,1
    800038fc:	00900793          	li	a5,9
    80003900:	fc97dee3          	bge	a5,s1,800038dc <_Z6workerPv+0x1c>
    putc('\n');
    80003904:	00a00513          	li	a0,10
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	020080e7          	jalr	32(ra) # 80001928 <putc>
    sem_signal(sync);
    80003910:	0000e517          	auipc	a0,0xe
    80003914:	7e853503          	ld	a0,2024(a0) # 800120f8 <sync>
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	df8080e7          	jalr	-520(ra) # 80001710 <sem_signal>
}
    80003920:	01813083          	ld	ra,24(sp)
    80003924:	01013403          	ld	s0,16(sp)
    80003928:	00813483          	ld	s1,8(sp)
    8000392c:	02010113          	addi	sp,sp,32
    80003930:	00008067          	ret

0000000080003934 <_Z6testicPv>:

void testic(void*)
{
    80003934:	fd010113          	addi	sp,sp,-48
    80003938:	02113423          	sd	ra,40(sp)
    8000393c:	02813023          	sd	s0,32(sp)
    80003940:	03010413          	addi	s0,sp,48
    sem_open(&sync, 0);
    80003944:	00000593          	li	a1,0
    80003948:	0000e517          	auipc	a0,0xe
    8000394c:	7b050513          	addi	a0,a0,1968 # 800120f8 <sync>
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	cd0080e7          	jalr	-816(ra) # 80001620 <sem_open>
    puts("Starting worker threads\n");
    80003958:	00007517          	auipc	a0,0x7
    8000395c:	87050513          	addi	a0,a0,-1936 # 8000a1c8 <CONSOLE_STATUS+0x1a8>
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	f04080e7          	jalr	-252(ra) # 80001864 <puts>
    thread_t child1, child2, child3;
    thread_create(&child1, worker, NULL);
    80003968:	00000613          	li	a2,0
    8000396c:	00000597          	auipc	a1,0x0
    80003970:	f5458593          	addi	a1,a1,-172 # 800038c0 <_Z6workerPv>
    80003974:	fe840513          	addi	a0,s0,-24
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	be0080e7          	jalr	-1056(ra) # 80001558 <thread_create>
    thread_create(&child2, worker, NULL);
    80003980:	00000613          	li	a2,0
    80003984:	00000597          	auipc	a1,0x0
    80003988:	f3c58593          	addi	a1,a1,-196 # 800038c0 <_Z6workerPv>
    8000398c:	fe040513          	addi	a0,s0,-32
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	bc8080e7          	jalr	-1080(ra) # 80001558 <thread_create>
    thread_create(&child3, worker_errored, NULL);
    80003998:	00000613          	li	a2,0
    8000399c:	00000597          	auipc	a1,0x0
    800039a0:	ef458593          	addi	a1,a1,-268 # 80003890 <_Z14worker_erroredPv>
    800039a4:	fd840513          	addi	a0,s0,-40
    800039a8:	ffffe097          	auipc	ra,0xffffe
    800039ac:	bb0080e7          	jalr	-1104(ra) # 80001558 <thread_create>
    thread_join_all();
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	acc080e7          	jalr	-1332(ra) # 8000147c <thread_join_all>
    puts("Joined wp\n");
    800039b8:	00007517          	auipc	a0,0x7
    800039bc:	83050513          	addi	a0,a0,-2000 # 8000a1e8 <CONSOLE_STATUS+0x1c8>
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	ea4080e7          	jalr	-348(ra) # 80001864 <puts>
}
    800039c8:	02813083          	ld	ra,40(sp)
    800039cc:	02013403          	ld	s0,32(sp)
    800039d0:	03010113          	addi	sp,sp,48
    800039d4:	00008067          	ret

00000000800039d8 <_Z9userTestsPv>:
{
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
        userMain();
    800039e8:	00003097          	auipc	ra,0x3
    800039ec:	ebc080e7          	jalr	-324(ra) # 800068a4 <_Z8userMainv>
    while (1)
    800039f0:	ff9ff06f          	j	800039e8 <_Z9userTestsPv+0x10>

00000000800039f4 <main>:

int main()
{
    800039f4:	fe010113          	addi	sp,sp,-32
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	00813823          	sd	s0,16(sp)
    80003a00:	02010413          	addi	s0,sp,32
    kernel_trap_init();
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	858080e7          	jalr	-1960(ra) # 8000225c <kernel_trap_init>
    kernel_mem_init();
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	9f0080e7          	jalr	-1552(ra) # 800033fc <kernel_mem_init>
    kernel_scheduler_init();
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	174080e7          	jalr	372(ra) # 80002b88 <kernel_scheduler_init>
    kernel_console_init();
    80003a1c:	fffff097          	auipc	ra,0xfffff
    80003a20:	6c0080e7          	jalr	1728(ra) # 800030dc <kernel_console_init>

    thread_t test_runner;
    kernel_thread_create_active(&test_runner, testic, NULL, 0);
    80003a24:	00000693          	li	a3,0
    80003a28:	00000613          	li	a2,0
    80003a2c:	00000597          	auipc	a1,0x0
    80003a30:	f0858593          	addi	a1,a1,-248 # 80003934 <_Z6testicPv>
    80003a34:	fe840513          	addi	a0,s0,-24
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	098080e7          	jalr	152(ra) # 80002ad0 <kernel_thread_create_active>
    asm volatile("csrr %0, sstatus" : "=r"(x));
    80003a40:	100027f3          	csrr	a5,sstatus
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    80003a44:	0027e793          	ori	a5,a5,2
    asm volatile("csrw sstatus, %0" : : "r"(x));
    80003a48:	10079073          	csrw	sstatus,a5
    intr_restore(1);
    kernel_scheduler();
    80003a4c:	fffff097          	auipc	ra,0xfffff
    80003a50:	1cc080e7          	jalr	460(ra) # 80002c18 <kernel_scheduler>
    return 0;
}
    80003a54:	00000513          	li	a0,0
    80003a58:	01813083          	ld	ra,24(sp)
    80003a5c:	01013403          	ld	s0,16(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret

0000000080003a68 <_ZN6ThreadD1Ev>:
Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr)
{
}

Thread::~Thread()
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00813423          	sd	s0,8(sp)
    80003a70:	01010413          	addi	s0,sp,16
    80003a74:	00009797          	auipc	a5,0x9
    80003a78:	05c78793          	addi	a5,a5,92 # 8000cad0 <_ZTV6Thread+0x10>
    80003a7c:	00f53023          	sd	a5,0(a0)
{
    //todo mark the thread as dead and make sure scheduler cleans it up instaed of switching to it
}
    80003a80:	00813403          	ld	s0,8(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <_ZN9SemaphoreD1Ev>:
    sem_t handle;
    sem_open(&handle, init);
    myHandle = handle; //fking clang tidy
}

Semaphore::~Semaphore()
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00113423          	sd	ra,8(sp)
    80003a94:	00813023          	sd	s0,0(sp)
    80003a98:	01010413          	addi	s0,sp,16
    80003a9c:	00009797          	auipc	a5,0x9
    80003aa0:	08c78793          	addi	a5,a5,140 # 8000cb28 <_ZTV9Semaphore+0x10>
    80003aa4:	00f53023          	sd	a5,0(a0)
{
    sem_close(myHandle);
    80003aa8:	00853503          	ld	a0,8(a0)
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	bc4080e7          	jalr	-1084(ra) # 80001670 <sem_close>
}
    80003ab4:	00813083          	ld	ra,8(sp)
    80003ab8:	00013403          	ld	s0,0(sp)
    80003abc:	01010113          	addi	sp,sp,16
    80003ac0:	00008067          	ret

0000000080003ac4 <_ZN8RWBufferD1Ev>:
    rw_buffer_t handle;
    rw_buffer_open(&handle, capacity);
    myHandle = handle;
}

RWBuffer::~RWBuffer()
    80003ac4:	ff010113          	addi	sp,sp,-16
    80003ac8:	00113423          	sd	ra,8(sp)
    80003acc:	00813023          	sd	s0,0(sp)
    80003ad0:	01010413          	addi	s0,sp,16
    80003ad4:	00009797          	auipc	a5,0x9
    80003ad8:	07478793          	addi	a5,a5,116 # 8000cb48 <_ZTV8RWBuffer+0x10>
    80003adc:	00f53023          	sd	a5,0(a0)
{
    rw_buffer_close(myHandle);
    80003ae0:	00853503          	ld	a0,8(a0)
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	830080e7          	jalr	-2000(ra) # 80001314 <rw_buffer_close>
}
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <_Znwm>:
{
    80003afc:	ff010113          	addi	sp,sp,-16
    80003b00:	00113423          	sd	ra,8(sp)
    80003b04:	00813023          	sd	s0,0(sp)
    80003b08:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	8d4080e7          	jalr	-1836(ra) # 800013e0 <mem_alloc>
}
    80003b14:	00813083          	ld	ra,8(sp)
    80003b18:	00013403          	ld	s0,0(sp)
    80003b1c:	01010113          	addi	sp,sp,16
    80003b20:	00008067          	ret

0000000080003b24 <_ZdlPv>:
{
    80003b24:	ff010113          	addi	sp,sp,-16
    80003b28:	00113423          	sd	ra,8(sp)
    80003b2c:	00813023          	sd	s0,0(sp)
    80003b30:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	98c080e7          	jalr	-1652(ra) # 800014c0 <mem_free>
}
    80003b3c:	00813083          	ld	ra,8(sp)
    80003b40:	00013403          	ld	s0,0(sp)
    80003b44:	01010113          	addi	sp,sp,16
    80003b48:	00008067          	ret

0000000080003b4c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	00050493          	mv	s1,a0
}
    80003b64:	00000097          	auipc	ra,0x0
    80003b68:	f04080e7          	jalr	-252(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80003b6c:	00048513          	mv	a0,s1
    80003b70:	00000097          	auipc	ra,0x0
    80003b74:	fb4080e7          	jalr	-76(ra) # 80003b24 <_ZdlPv>
    80003b78:	01813083          	ld	ra,24(sp)
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret

0000000080003b8c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00113c23          	sd	ra,24(sp)
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	00050493          	mv	s1,a0
}
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	ee8080e7          	jalr	-280(ra) # 80003a8c <_ZN9SemaphoreD1Ev>
    80003bac:	00048513          	mv	a0,s1
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	f74080e7          	jalr	-140(ra) # 80003b24 <_ZdlPv>
    80003bb8:	01813083          	ld	ra,24(sp)
    80003bbc:	01013403          	ld	s0,16(sp)
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	02010113          	addi	sp,sp,32
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN8RWBufferD0Ev>:
RWBuffer::~RWBuffer()
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00113c23          	sd	ra,24(sp)
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	00050493          	mv	s1,a0
}
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	ee0080e7          	jalr	-288(ra) # 80003ac4 <_ZN8RWBufferD1Ev>
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	f34080e7          	jalr	-204(ra) # 80003b24 <_ZdlPv>
    80003bf8:	01813083          	ld	ra,24(sp)
    80003bfc:	01013403          	ld	s0,16(sp)
    80003c00:	00813483          	ld	s1,8(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	00008067          	ret

0000000080003c0c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80003c0c:	ff010113          	addi	sp,sp,-16
    80003c10:	00813423          	sd	s0,8(sp)
    80003c14:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg)
    80003c18:	00009797          	auipc	a5,0x9
    80003c1c:	eb878793          	addi	a5,a5,-328 # 8000cad0 <_ZTV6Thread+0x10>
    80003c20:	00f53023          	sd	a5,0(a0)
    80003c24:	00053423          	sd	zero,8(a0)
    80003c28:	00b53823          	sd	a1,16(a0)
    80003c2c:	00c53c23          	sd	a2,24(a0)
}
    80003c30:	00813403          	ld	s0,8(sp)
    80003c34:	01010113          	addi	sp,sp,16
    80003c38:	00008067          	ret

0000000080003c3c <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003c3c:	ff010113          	addi	sp,sp,-16
    80003c40:	00813423          	sd	s0,8(sp)
    80003c44:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr)
    80003c48:	00009797          	auipc	a5,0x9
    80003c4c:	e8878793          	addi	a5,a5,-376 # 8000cad0 <_ZTV6Thread+0x10>
    80003c50:	00f53023          	sd	a5,0(a0)
    80003c54:	00053423          	sd	zero,8(a0)
    80003c58:	00053823          	sd	zero,16(a0)
    80003c5c:	00053c23          	sd	zero,24(a0)
}
    80003c60:	00813403          	ld	s0,8(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret

0000000080003c6c <_ZN6Thread5startEv>:
{
    80003c6c:	ff010113          	addi	sp,sp,-16
    80003c70:	00113423          	sd	ra,8(sp)
    80003c74:	00813023          	sd	s0,0(sp)
    80003c78:	01010413          	addi	s0,sp,16
    if (body != nullptr)
    80003c7c:	01053583          	ld	a1,16(a0)
    80003c80:	02058263          	beqz	a1,80003ca4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80003c84:	01853603          	ld	a2,24(a0)
    80003c88:	00850513          	addi	a0,a0,8
    80003c8c:	ffffe097          	auipc	ra,0xffffe
    80003c90:	8cc080e7          	jalr	-1844(ra) # 80001558 <thread_create>
}
    80003c94:	00813083          	ld	ra,8(sp)
    80003c98:	00013403          	ld	s0,0(sp)
    80003c9c:	01010113          	addi	sp,sp,16
    80003ca0:	00008067          	ret
        return thread_create(&myHandle, runWrapper, this);
    80003ca4:	00050613          	mv	a2,a0
    80003ca8:	00000597          	auipc	a1,0x0
    80003cac:	33c58593          	addi	a1,a1,828 # 80003fe4 <_ZN6Thread10runWrapperEPv>
    80003cb0:	00850513          	addi	a0,a0,8
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	8a4080e7          	jalr	-1884(ra) # 80001558 <thread_create>
    80003cbc:	fd9ff06f          	j	80003c94 <_ZN6Thread5startEv+0x28>

0000000080003cc0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(const time_t period)
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    80003cd8:	00050493          	mv	s1,a0
    80003cdc:	00058913          	mv	s2,a1
    : Thread(), period(period), running(false)
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	f5c080e7          	jalr	-164(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80003ce8:	00009797          	auipc	a5,0x9
    80003cec:	e1078793          	addi	a5,a5,-496 # 8000caf8 <_ZTV14PeriodicThread+0x10>
    80003cf0:	00f4b023          	sd	a5,0(s1)
    80003cf4:	0324b023          	sd	s2,32(s1)
    80003cf8:	02048423          	sb	zero,40(s1)
}
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	01013403          	ld	s0,16(sp)
    80003d04:	00813483          	ld	s1,8(sp)
    80003d08:	00013903          	ld	s2,0(sp)
    80003d0c:	02010113          	addi	sp,sp,32
    80003d10:	00008067          	ret

0000000080003d14 <_ZN14PeriodicThread9terminateEv>:
{
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00813423          	sd	s0,8(sp)
    80003d1c:	01010413          	addi	s0,sp,16
    running = false;
    80003d20:	02050423          	sb	zero,40(a0)
}
    80003d24:	00813403          	ld	s0,8(sp)
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00008067          	ret

0000000080003d30 <_ZN6Thread8dispatchEv>:
{
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	8a0080e7          	jalr	-1888(ra) # 800015e0 <thread_dispatch>
}
    80003d48:	00813083          	ld	ra,8(sp)
    80003d4c:	00013403          	ld	s0,0(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret

0000000080003d58 <_ZN6Thread5sleepEm>:
{
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00113423          	sd	ra,8(sp)
    80003d60:	00813023          	sd	s0,0(sp)
    80003d64:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80003d68:	ffffe097          	auipc	ra,0xffffe
    80003d6c:	ab8080e7          	jalr	-1352(ra) # 80001820 <time_sleep>
}
    80003d70:	00813083          	ld	ra,8(sp)
    80003d74:	00013403          	ld	s0,0(sp)
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret

0000000080003d80 <_ZN14PeriodicThread3runEv>:
{
    80003d80:	fe010113          	addi	sp,sp,-32
    80003d84:	00113c23          	sd	ra,24(sp)
    80003d88:	00813823          	sd	s0,16(sp)
    80003d8c:	00913423          	sd	s1,8(sp)
    80003d90:	02010413          	addi	s0,sp,32
    80003d94:	00050493          	mv	s1,a0
    running = true;
    80003d98:	00100793          	li	a5,1
    80003d9c:	02f50423          	sb	a5,40(a0)
    while (running)
    80003da0:	0140006f          	j	80003db4 <_ZN14PeriodicThread3runEv+0x34>
        periodicActivation();
    80003da4:	0004b783          	ld	a5,0(s1)
    80003da8:	0187b783          	ld	a5,24(a5)
    80003dac:	00048513          	mv	a0,s1
    80003db0:	000780e7          	jalr	a5
    while (running)
    80003db4:	0284c783          	lbu	a5,40(s1)
    80003db8:	00078c63          	beqz	a5,80003dd0 <_ZN14PeriodicThread3runEv+0x50>
        Thread::sleep(period);
    80003dbc:	0204b503          	ld	a0,32(s1)
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	f98080e7          	jalr	-104(ra) # 80003d58 <_ZN6Thread5sleepEm>
        if (!running) break;
    80003dc8:	0284c783          	lbu	a5,40(s1)
    80003dcc:	fc079ce3          	bnez	a5,80003da4 <_ZN14PeriodicThread3runEv+0x24>
}
    80003dd0:	01813083          	ld	ra,24(sp)
    80003dd4:	01013403          	ld	s0,16(sp)
    80003dd8:	00813483          	ld	s1,8(sp)
    80003ddc:	02010113          	addi	sp,sp,32
    80003de0:	00008067          	ret

0000000080003de4 <_ZN9SemaphoreC1Ei>:
Semaphore::Semaphore(const int init)
    80003de4:	fd010113          	addi	sp,sp,-48
    80003de8:	02113423          	sd	ra,40(sp)
    80003dec:	02813023          	sd	s0,32(sp)
    80003df0:	00913c23          	sd	s1,24(sp)
    80003df4:	03010413          	addi	s0,sp,48
    80003df8:	00050493          	mv	s1,a0
    80003dfc:	00009797          	auipc	a5,0x9
    80003e00:	d2c78793          	addi	a5,a5,-724 # 8000cb28 <_ZTV9Semaphore+0x10>
    80003e04:	00f53023          	sd	a5,0(a0)
    sem_open(&handle, init);
    80003e08:	fd840513          	addi	a0,s0,-40
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	814080e7          	jalr	-2028(ra) # 80001620 <sem_open>
    myHandle = handle; //fking clang tidy
    80003e14:	fd843783          	ld	a5,-40(s0)
    80003e18:	00f4b423          	sd	a5,8(s1)
}
    80003e1c:	02813083          	ld	ra,40(sp)
    80003e20:	02013403          	ld	s0,32(sp)
    80003e24:	01813483          	ld	s1,24(sp)
    80003e28:	03010113          	addi	sp,sp,48
    80003e2c:	00008067          	ret

0000000080003e30 <_ZNK9Semaphore4waitEv>:
{
    80003e30:	ff010113          	addi	sp,sp,-16
    80003e34:	00113423          	sd	ra,8(sp)
    80003e38:	00813023          	sd	s0,0(sp)
    80003e3c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003e40:	00853503          	ld	a0,8(a0)
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	87c080e7          	jalr	-1924(ra) # 800016c0 <sem_wait>
}
    80003e4c:	00813083          	ld	ra,8(sp)
    80003e50:	00013403          	ld	s0,0(sp)
    80003e54:	01010113          	addi	sp,sp,16
    80003e58:	00008067          	ret

0000000080003e5c <_ZNK9Semaphore6signalEv>:
{
    80003e5c:	ff010113          	addi	sp,sp,-16
    80003e60:	00113423          	sd	ra,8(sp)
    80003e64:	00813023          	sd	s0,0(sp)
    80003e68:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003e6c:	00853503          	ld	a0,8(a0)
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	8a0080e7          	jalr	-1888(ra) # 80001710 <sem_signal>
}
    80003e78:	00813083          	ld	ra,8(sp)
    80003e7c:	00013403          	ld	s0,0(sp)
    80003e80:	01010113          	addi	sp,sp,16
    80003e84:	00008067          	ret

0000000080003e88 <_ZN8RWBufferC1Em>:
RWBuffer::RWBuffer(const uint64 capacity)
    80003e88:	fd010113          	addi	sp,sp,-48
    80003e8c:	02113423          	sd	ra,40(sp)
    80003e90:	02813023          	sd	s0,32(sp)
    80003e94:	00913c23          	sd	s1,24(sp)
    80003e98:	03010413          	addi	s0,sp,48
    80003e9c:	00050493          	mv	s1,a0
    80003ea0:	00009797          	auipc	a5,0x9
    80003ea4:	ca878793          	addi	a5,a5,-856 # 8000cb48 <_ZTV8RWBuffer+0x10>
    80003ea8:	00f53023          	sd	a5,0(a0)
    rw_buffer_open(&handle, capacity);
    80003eac:	fd840513          	addi	a0,s0,-40
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	420080e7          	jalr	1056(ra) # 800012d0 <rw_buffer_open>
    myHandle = handle;
    80003eb8:	fd843783          	ld	a5,-40(s0)
    80003ebc:	00f4b423          	sd	a5,8(s1)
}
    80003ec0:	02813083          	ld	ra,40(sp)
    80003ec4:	02013403          	ld	s0,32(sp)
    80003ec8:	01813483          	ld	s1,24(sp)
    80003ecc:	03010113          	addi	sp,sp,48
    80003ed0:	00008067          	ret

0000000080003ed4 <_ZNK8RWBuffer5writeEPKvm>:

int RWBuffer::write(const void* src, const uint64 size) const
{
    80003ed4:	ff010113          	addi	sp,sp,-16
    80003ed8:	00113423          	sd	ra,8(sp)
    80003edc:	00813023          	sd	s0,0(sp)
    80003ee0:	01010413          	addi	s0,sp,16
    return rw_buffer_write(myHandle, src, size);
    80003ee4:	00853503          	ld	a0,8(a0)
    80003ee8:	ffffd097          	auipc	ra,0xffffd
    80003eec:	470080e7          	jalr	1136(ra) # 80001358 <rw_buffer_write>
}
    80003ef0:	00813083          	ld	ra,8(sp)
    80003ef4:	00013403          	ld	s0,0(sp)
    80003ef8:	01010113          	addi	sp,sp,16
    80003efc:	00008067          	ret

0000000080003f00 <_ZNK8RWBuffer4readEPvm>:

int RWBuffer::read(void* dst, const uint64 size) const
{
    80003f00:	ff010113          	addi	sp,sp,-16
    80003f04:	00113423          	sd	ra,8(sp)
    80003f08:	00813023          	sd	s0,0(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    return rw_buffer_read(myHandle, dst, size);
    80003f10:	00853503          	ld	a0,8(a0)
    80003f14:	ffffd097          	auipc	ra,0xffffd
    80003f18:	488080e7          	jalr	1160(ra) # 8000139c <rw_buffer_read>
}
    80003f1c:	00813083          	ld	ra,8(sp)
    80003f20:	00013403          	ld	s0,0(sp)
    80003f24:	01010113          	addi	sp,sp,16
    80003f28:	00008067          	ret

0000000080003f2c <_ZN7Console4getcEv>:

char Console::getc()
{
    80003f2c:	ff010113          	addi	sp,sp,-16
    80003f30:	00113423          	sd	ra,8(sp)
    80003f34:	00813023          	sd	s0,0(sp)
    80003f38:	01010413          	addi	s0,sp,16
    return ::getc();
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	9a8080e7          	jalr	-1624(ra) # 800018e4 <getc>
}
    80003f44:	00813083          	ld	ra,8(sp)
    80003f48:	00013403          	ld	s0,0(sp)
    80003f4c:	01010113          	addi	sp,sp,16
    80003f50:	00008067          	ret

0000000080003f54 <_ZN7Console4putcEc>:
void Console::putc(const char c)
{
    80003f54:	ff010113          	addi	sp,sp,-16
    80003f58:	00113423          	sd	ra,8(sp)
    80003f5c:	00813023          	sd	s0,0(sp)
    80003f60:	01010413          	addi	s0,sp,16
    ::putc(c);
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	9c4080e7          	jalr	-1596(ra) # 80001928 <putc>
}
    80003f6c:	00813083          	ld	ra,8(sp)
    80003f70:	00013403          	ld	s0,0(sp)
    80003f74:	01010113          	addi	sp,sp,16
    80003f78:	00008067          	ret

0000000080003f7c <_ZN7Console4putsEPKc>:
void Console::puts(const char* s)
{
    80003f7c:	ff010113          	addi	sp,sp,-16
    80003f80:	00113423          	sd	ra,8(sp)
    80003f84:	00813023          	sd	s0,0(sp)
    80003f88:	01010413          	addi	s0,sp,16
    ::puts(s);
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	8d8080e7          	jalr	-1832(ra) # 80001864 <puts>
}
    80003f94:	00813083          	ld	ra,8(sp)
    80003f98:	00013403          	ld	s0,0(sp)
    80003f9c:	01010113          	addi	sp,sp,16
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZN7Console4getsEPci>:
void Console::gets(char* buf, const int max)
{
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    ::gets(buf, max);
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	8f0080e7          	jalr	-1808(ra) # 800018a4 <gets>
}
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN6Thread3runEv>:
Thread::Thread()
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00813423          	sd	s0,8(sp)
    80003fd4:	01010413          	addi	s0,sp,16
{
    80003fd8:	00813403          	ld	s0,8(sp)
    80003fdc:	01010113          	addi	sp,sp,16
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN6Thread10runWrapperEPv>:

    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00113423          	sd	ra,8(sp)
    80003fec:	00813023          	sd	s0,0(sp)
    80003ff0:	01010413          	addi	s0,sp,16
Thread::~Thread()
    80003ff4:	00053783          	ld	a5,0(a0)
    80003ff8:	0107b783          	ld	a5,16(a5)
    80003ffc:	000780e7          	jalr	a5
{
    80004000:	00813083          	ld	ra,8(sp)
    80004004:	00013403          	ld	s0,0(sp)
    80004008:	01010113          	addi	sp,sp,16
    8000400c:	00008067          	ret

0000000080004010 <_ZN14PeriodicThread18periodicActivationEv>:
    running = true;
    80004010:	ff010113          	addi	sp,sp,-16
    80004014:	00813423          	sd	s0,8(sp)
    80004018:	01010413          	addi	s0,sp,16
    8000401c:	00813403          	ld	s0,8(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <_ZN14PeriodicThreadD1Ev>:
{
    80004028:	ff010113          	addi	sp,sp,-16
    8000402c:	00113423          	sd	ra,8(sp)
    80004030:	00813023          	sd	s0,0(sp)
    80004034:	01010413          	addi	s0,sp,16
    80004038:	00009797          	auipc	a5,0x9
    8000403c:	ac078793          	addi	a5,a5,-1344 # 8000caf8 <_ZTV14PeriodicThread+0x10>
    80004040:	00f53023          	sd	a5,0(a0)
    80004044:	00000097          	auipc	ra,0x0
    80004048:	a24080e7          	jalr	-1500(ra) # 80003a68 <_ZN6ThreadD1Ev>
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	01010113          	addi	sp,sp,16
    80004058:	00008067          	ret

000000008000405c <_ZN14PeriodicThreadD0Ev>:
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	02010413          	addi	s0,sp,32
    80004070:	00050493          	mv	s1,a0
    80004074:	00009797          	auipc	a5,0x9
    80004078:	a8478793          	addi	a5,a5,-1404 # 8000caf8 <_ZTV14PeriodicThread+0x10>
    8000407c:	00f53023          	sd	a5,0(a0)
    80004080:	00000097          	auipc	ra,0x0
    80004084:	9e8080e7          	jalr	-1560(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004088:	00048513          	mv	a0,s1
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	a98080e7          	jalr	-1384(ra) # 80003b24 <_ZdlPv>
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	00813483          	ld	s1,8(sp)
    800040a0:	02010113          	addi	sp,sp,32
    800040a4:	00008067          	ret

00000000800040a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800040a8:	fe010113          	addi	sp,sp,-32
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	00813823          	sd	s0,16(sp)
    800040b4:	00913423          	sd	s1,8(sp)
    800040b8:	02010413          	addi	s0,sp,32
    800040bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800040c0:	00100793          	li	a5,1
    800040c4:	02a7fc63          	bgeu	a5,a0,800040fc <_ZL9fibonaccim+0x54>
    800040c8:	01213023          	sd	s2,0(sp)
    if (n % 10 == 0) { thread_dispatch(); }
    800040cc:	00a00793          	li	a5,10
    800040d0:	02f577b3          	remu	a5,a0,a5
    800040d4:	02078e63          	beqz	a5,80004110 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800040d8:	fff48513          	addi	a0,s1,-1
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	fcc080e7          	jalr	-52(ra) # 800040a8 <_ZL9fibonaccim>
    800040e4:	00050913          	mv	s2,a0
    800040e8:	ffe48513          	addi	a0,s1,-2
    800040ec:	00000097          	auipc	ra,0x0
    800040f0:	fbc080e7          	jalr	-68(ra) # 800040a8 <_ZL9fibonaccim>
    800040f4:	00a90533          	add	a0,s2,a0
    800040f8:	00013903          	ld	s2,0(sp)
}
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004110:	ffffd097          	auipc	ra,0xffffd
    80004114:	4d0080e7          	jalr	1232(ra) # 800015e0 <thread_dispatch>
    80004118:	fc1ff06f          	j	800040d8 <_ZL9fibonaccim+0x30>

000000008000411c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00113c23          	sd	ra,24(sp)
    80004124:	00813823          	sd	s0,16(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	01213023          	sd	s2,0(sp)
    80004130:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004134:	00000913          	li	s2,0
    80004138:	0380006f          	j	80004170 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000413c:	00170713          	addi	a4,a4,1
    80004140:	000077b7          	lui	a5,0x7
    80004144:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004148:	fee7fae3          	bgeu	a5,a4,8000413c <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    8000414c:	ffffd097          	auipc	ra,0xffffd
    80004150:	494080e7          	jalr	1172(ra) # 800015e0 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004154:	00148493          	addi	s1,s1,1
    80004158:	000027b7          	lui	a5,0x2
    8000415c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004160:	0097e663          	bltu	a5,s1,8000416c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004164:	00000713          	li	a4,0
    80004168:	fd9ff06f          	j	80004140 <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    8000416c:	00190913          	addi	s2,s2,1
    80004170:	00900793          	li	a5,9
    80004174:	0527e063          	bltu	a5,s2,800041b4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004178:	00006517          	auipc	a0,0x6
    8000417c:	08050513          	addi	a0,a0,128 # 8000a1f8 <CONSOLE_STATUS+0x1d8>
    80004180:	00003097          	auipc	ra,0x3
    80004184:	338080e7          	jalr	824(ra) # 800074b8 <_Z11printStringPKc>
    80004188:	00000613          	li	a2,0
    8000418c:	00a00593          	li	a1,10
    80004190:	0009051b          	sext.w	a0,s2
    80004194:	00003097          	auipc	ra,0x3
    80004198:	4d4080e7          	jalr	1236(ra) # 80007668 <_Z8printIntiii>
    8000419c:	00006517          	auipc	a0,0x6
    800041a0:	06450513          	addi	a0,a0,100 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800041a4:	00003097          	auipc	ra,0x3
    800041a8:	314080e7          	jalr	788(ra) # 800074b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041ac:	00000493          	li	s1,0
    800041b0:	fa9ff06f          	j	80004158 <_ZN7WorkerA11workerBodyAEPv+0x3c>
        }
    }
    printString("A finished!\n");
    800041b4:	00006517          	auipc	a0,0x6
    800041b8:	05450513          	addi	a0,a0,84 # 8000a208 <CONSOLE_STATUS+0x1e8>
    800041bc:	00003097          	auipc	ra,0x3
    800041c0:	2fc080e7          	jalr	764(ra) # 800074b8 <_Z11printStringPKc>
    finishedA = true;
    800041c4:	00100793          	li	a5,1
    800041c8:	0000e717          	auipc	a4,0xe
    800041cc:	f2f70c23          	sb	a5,-200(a4) # 80012100 <_ZL9finishedA>
}
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	00013903          	ld	s2,0(sp)
    800041e0:	02010113          	addi	sp,sp,32
    800041e4:	00008067          	ret

00000000800041e8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800041e8:	fe010113          	addi	sp,sp,-32
    800041ec:	00113c23          	sd	ra,24(sp)
    800041f0:	00813823          	sd	s0,16(sp)
    800041f4:	00913423          	sd	s1,8(sp)
    800041f8:	01213023          	sd	s2,0(sp)
    800041fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004200:	00000913          	li	s2,0
    80004204:	0380006f          	j	8000423c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004208:	00170713          	addi	a4,a4,1
    8000420c:	000077b7          	lui	a5,0x7
    80004210:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004214:	fee7fae3          	bgeu	a5,a4,80004208 <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    80004218:	ffffd097          	auipc	ra,0xffffd
    8000421c:	3c8080e7          	jalr	968(ra) # 800015e0 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004220:	00148493          	addi	s1,s1,1
    80004224:	000027b7          	lui	a5,0x2
    80004228:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000422c:	0097e663          	bltu	a5,s1,80004238 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004230:	00000713          	li	a4,0
    80004234:	fd9ff06f          	j	8000420c <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80004238:	00190913          	addi	s2,s2,1
    8000423c:	00f00793          	li	a5,15
    80004240:	0527e063          	bltu	a5,s2,80004280 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004244:	00006517          	auipc	a0,0x6
    80004248:	fd450513          	addi	a0,a0,-44 # 8000a218 <CONSOLE_STATUS+0x1f8>
    8000424c:	00003097          	auipc	ra,0x3
    80004250:	26c080e7          	jalr	620(ra) # 800074b8 <_Z11printStringPKc>
    80004254:	00000613          	li	a2,0
    80004258:	00a00593          	li	a1,10
    8000425c:	0009051b          	sext.w	a0,s2
    80004260:	00003097          	auipc	ra,0x3
    80004264:	408080e7          	jalr	1032(ra) # 80007668 <_Z8printIntiii>
    80004268:	00006517          	auipc	a0,0x6
    8000426c:	f9850513          	addi	a0,a0,-104 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80004270:	00003097          	auipc	ra,0x3
    80004274:	248080e7          	jalr	584(ra) # 800074b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004278:	00000493          	li	s1,0
    8000427c:	fa9ff06f          	j	80004224 <_ZN7WorkerB11workerBodyBEPv+0x3c>
        }
    }
    printString("B finished!\n");
    80004280:	00006517          	auipc	a0,0x6
    80004284:	fa050513          	addi	a0,a0,-96 # 8000a220 <CONSOLE_STATUS+0x200>
    80004288:	00003097          	auipc	ra,0x3
    8000428c:	230080e7          	jalr	560(ra) # 800074b8 <_Z11printStringPKc>
    finishedB = true;
    80004290:	00100793          	li	a5,1
    80004294:	0000e717          	auipc	a4,0xe
    80004298:	e6f706a3          	sb	a5,-403(a4) # 80012101 <_ZL9finishedB>
    thread_dispatch();
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	344080e7          	jalr	836(ra) # 800015e0 <thread_dispatch>
}
    800042a4:	01813083          	ld	ra,24(sp)
    800042a8:	01013403          	ld	s0,16(sp)
    800042ac:	00813483          	ld	s1,8(sp)
    800042b0:	00013903          	ld	s2,0(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00113c23          	sd	ra,24(sp)
    800042c4:	00813823          	sd	s0,16(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	01213023          	sd	s2,0(sp)
    800042d0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800042d4:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800042d8:	0400006f          	j	80004318 <_ZN7WorkerC11workerBodyCEPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800042dc:	00006517          	auipc	a0,0x6
    800042e0:	f5450513          	addi	a0,a0,-172 # 8000a230 <CONSOLE_STATUS+0x210>
    800042e4:	00003097          	auipc	ra,0x3
    800042e8:	1d4080e7          	jalr	468(ra) # 800074b8 <_Z11printStringPKc>
    800042ec:	00000613          	li	a2,0
    800042f0:	00a00593          	li	a1,10
    800042f4:	00048513          	mv	a0,s1
    800042f8:	00003097          	auipc	ra,0x3
    800042fc:	370080e7          	jalr	880(ra) # 80007668 <_Z8printIntiii>
    80004300:	00006517          	auipc	a0,0x6
    80004304:	f0050513          	addi	a0,a0,-256 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80004308:	00003097          	auipc	ra,0x3
    8000430c:	1b0080e7          	jalr	432(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004310:	0014849b          	addiw	s1,s1,1
    80004314:	0ff4f493          	zext.b	s1,s1
    80004318:	00200793          	li	a5,2
    8000431c:	fc97f0e3          	bgeu	a5,s1,800042dc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004320:	00006517          	auipc	a0,0x6
    80004324:	f1850513          	addi	a0,a0,-232 # 8000a238 <CONSOLE_STATUS+0x218>
    80004328:	00003097          	auipc	ra,0x3
    8000432c:	190080e7          	jalr	400(ra) # 800074b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004330:	00700313          	li	t1,7
    thread_dispatch();
    80004334:	ffffd097          	auipc	ra,0xffffd
    80004338:	2ac080e7          	jalr	684(ra) # 800015e0 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000433c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004340:	00006517          	auipc	a0,0x6
    80004344:	f0850513          	addi	a0,a0,-248 # 8000a248 <CONSOLE_STATUS+0x228>
    80004348:	00003097          	auipc	ra,0x3
    8000434c:	170080e7          	jalr	368(ra) # 800074b8 <_Z11printStringPKc>
    80004350:	00000613          	li	a2,0
    80004354:	00a00593          	li	a1,10
    80004358:	0009051b          	sext.w	a0,s2
    8000435c:	00003097          	auipc	ra,0x3
    80004360:	30c080e7          	jalr	780(ra) # 80007668 <_Z8printIntiii>
    80004364:	00006517          	auipc	a0,0x6
    80004368:	e9c50513          	addi	a0,a0,-356 # 8000a200 <CONSOLE_STATUS+0x1e0>
    8000436c:	00003097          	auipc	ra,0x3
    80004370:	14c080e7          	jalr	332(ra) # 800074b8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004374:	00c00513          	li	a0,12
    80004378:	00000097          	auipc	ra,0x0
    8000437c:	d30080e7          	jalr	-720(ra) # 800040a8 <_ZL9fibonaccim>
    80004380:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004384:	00006517          	auipc	a0,0x6
    80004388:	ecc50513          	addi	a0,a0,-308 # 8000a250 <CONSOLE_STATUS+0x230>
    8000438c:	00003097          	auipc	ra,0x3
    80004390:	12c080e7          	jalr	300(ra) # 800074b8 <_Z11printStringPKc>
    80004394:	00000613          	li	a2,0
    80004398:	00a00593          	li	a1,10
    8000439c:	0009051b          	sext.w	a0,s2
    800043a0:	00003097          	auipc	ra,0x3
    800043a4:	2c8080e7          	jalr	712(ra) # 80007668 <_Z8printIntiii>
    800043a8:	00006517          	auipc	a0,0x6
    800043ac:	e5850513          	addi	a0,a0,-424 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800043b0:	00003097          	auipc	ra,0x3
    800043b4:	108080e7          	jalr	264(ra) # 800074b8 <_Z11printStringPKc>

    for (; i < 6; i++) {
    800043b8:	0400006f          	j	800043f8 <_ZN7WorkerC11workerBodyCEPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800043bc:	00006517          	auipc	a0,0x6
    800043c0:	e7450513          	addi	a0,a0,-396 # 8000a230 <CONSOLE_STATUS+0x210>
    800043c4:	00003097          	auipc	ra,0x3
    800043c8:	0f4080e7          	jalr	244(ra) # 800074b8 <_Z11printStringPKc>
    800043cc:	00000613          	li	a2,0
    800043d0:	00a00593          	li	a1,10
    800043d4:	00048513          	mv	a0,s1
    800043d8:	00003097          	auipc	ra,0x3
    800043dc:	290080e7          	jalr	656(ra) # 80007668 <_Z8printIntiii>
    800043e0:	00006517          	auipc	a0,0x6
    800043e4:	e2050513          	addi	a0,a0,-480 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800043e8:	00003097          	auipc	ra,0x3
    800043ec:	0d0080e7          	jalr	208(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800043f0:	0014849b          	addiw	s1,s1,1
    800043f4:	0ff4f493          	zext.b	s1,s1
    800043f8:	00500793          	li	a5,5
    800043fc:	fc97f0e3          	bgeu	a5,s1,800043bc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004400:	00006517          	auipc	a0,0x6
    80004404:	e0850513          	addi	a0,a0,-504 # 8000a208 <CONSOLE_STATUS+0x1e8>
    80004408:	00003097          	auipc	ra,0x3
    8000440c:	0b0080e7          	jalr	176(ra) # 800074b8 <_Z11printStringPKc>
    finishedC = true;
    80004410:	00100793          	li	a5,1
    80004414:	0000e717          	auipc	a4,0xe
    80004418:	cef70723          	sb	a5,-786(a4) # 80012102 <_ZL9finishedC>
    thread_dispatch();
    8000441c:	ffffd097          	auipc	ra,0xffffd
    80004420:	1c4080e7          	jalr	452(ra) # 800015e0 <thread_dispatch>
}
    80004424:	01813083          	ld	ra,24(sp)
    80004428:	01013403          	ld	s0,16(sp)
    8000442c:	00813483          	ld	s1,8(sp)
    80004430:	00013903          	ld	s2,0(sp)
    80004434:	02010113          	addi	sp,sp,32
    80004438:	00008067          	ret

000000008000443c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00113c23          	sd	ra,24(sp)
    80004444:	00813823          	sd	s0,16(sp)
    80004448:	00913423          	sd	s1,8(sp)
    8000444c:	01213023          	sd	s2,0(sp)
    80004450:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004454:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004458:	0400006f          	j	80004498 <_ZN7WorkerD11workerBodyDEPv+0x5c>
        printString("D: i="); printInt(i); printString("\n");
    8000445c:	00006517          	auipc	a0,0x6
    80004460:	e0450513          	addi	a0,a0,-508 # 8000a260 <CONSOLE_STATUS+0x240>
    80004464:	00003097          	auipc	ra,0x3
    80004468:	054080e7          	jalr	84(ra) # 800074b8 <_Z11printStringPKc>
    8000446c:	00000613          	li	a2,0
    80004470:	00a00593          	li	a1,10
    80004474:	00048513          	mv	a0,s1
    80004478:	00003097          	auipc	ra,0x3
    8000447c:	1f0080e7          	jalr	496(ra) # 80007668 <_Z8printIntiii>
    80004480:	00006517          	auipc	a0,0x6
    80004484:	d8050513          	addi	a0,a0,-640 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80004488:	00003097          	auipc	ra,0x3
    8000448c:	030080e7          	jalr	48(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004490:	0014849b          	addiw	s1,s1,1
    80004494:	0ff4f493          	zext.b	s1,s1
    80004498:	00c00793          	li	a5,12
    8000449c:	fc97f0e3          	bgeu	a5,s1,8000445c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800044a0:	00006517          	auipc	a0,0x6
    800044a4:	dc850513          	addi	a0,a0,-568 # 8000a268 <CONSOLE_STATUS+0x248>
    800044a8:	00003097          	auipc	ra,0x3
    800044ac:	010080e7          	jalr	16(ra) # 800074b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044b0:	00500313          	li	t1,5
    thread_dispatch();
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	12c080e7          	jalr	300(ra) # 800015e0 <thread_dispatch>

    uint64 result = fibonacci(16);
    800044bc:	01000513          	li	a0,16
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	be8080e7          	jalr	-1048(ra) # 800040a8 <_ZL9fibonaccim>
    800044c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044cc:	00006517          	auipc	a0,0x6
    800044d0:	dac50513          	addi	a0,a0,-596 # 8000a278 <CONSOLE_STATUS+0x258>
    800044d4:	00003097          	auipc	ra,0x3
    800044d8:	fe4080e7          	jalr	-28(ra) # 800074b8 <_Z11printStringPKc>
    800044dc:	00000613          	li	a2,0
    800044e0:	00a00593          	li	a1,10
    800044e4:	0009051b          	sext.w	a0,s2
    800044e8:	00003097          	auipc	ra,0x3
    800044ec:	180080e7          	jalr	384(ra) # 80007668 <_Z8printIntiii>
    800044f0:	00006517          	auipc	a0,0x6
    800044f4:	d1050513          	addi	a0,a0,-752 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800044f8:	00003097          	auipc	ra,0x3
    800044fc:	fc0080e7          	jalr	-64(ra) # 800074b8 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80004500:	0400006f          	j	80004540 <_ZN7WorkerD11workerBodyDEPv+0x104>
        printString("D: i="); printInt(i); printString("\n");
    80004504:	00006517          	auipc	a0,0x6
    80004508:	d5c50513          	addi	a0,a0,-676 # 8000a260 <CONSOLE_STATUS+0x240>
    8000450c:	00003097          	auipc	ra,0x3
    80004510:	fac080e7          	jalr	-84(ra) # 800074b8 <_Z11printStringPKc>
    80004514:	00000613          	li	a2,0
    80004518:	00a00593          	li	a1,10
    8000451c:	00048513          	mv	a0,s1
    80004520:	00003097          	auipc	ra,0x3
    80004524:	148080e7          	jalr	328(ra) # 80007668 <_Z8printIntiii>
    80004528:	00006517          	auipc	a0,0x6
    8000452c:	cd850513          	addi	a0,a0,-808 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80004530:	00003097          	auipc	ra,0x3
    80004534:	f88080e7          	jalr	-120(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004538:	0014849b          	addiw	s1,s1,1
    8000453c:	0ff4f493          	zext.b	s1,s1
    80004540:	00f00793          	li	a5,15
    80004544:	fc97f0e3          	bgeu	a5,s1,80004504 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004548:	00006517          	auipc	a0,0x6
    8000454c:	d4050513          	addi	a0,a0,-704 # 8000a288 <CONSOLE_STATUS+0x268>
    80004550:	00003097          	auipc	ra,0x3
    80004554:	f68080e7          	jalr	-152(ra) # 800074b8 <_Z11printStringPKc>
    finishedD = true;
    80004558:	00100793          	li	a5,1
    8000455c:	0000e717          	auipc	a4,0xe
    80004560:	baf703a3          	sb	a5,-1113(a4) # 80012103 <_ZL9finishedD>
    thread_dispatch();
    80004564:	ffffd097          	auipc	ra,0xffffd
    80004568:	07c080e7          	jalr	124(ra) # 800015e0 <thread_dispatch>
}
    8000456c:	01813083          	ld	ra,24(sp)
    80004570:	01013403          	ld	s0,16(sp)
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	00013903          	ld	s2,0(sp)
    8000457c:	02010113          	addi	sp,sp,32
    80004580:	00008067          	ret

0000000080004584 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004584:	fc010113          	addi	sp,sp,-64
    80004588:	02113c23          	sd	ra,56(sp)
    8000458c:	02813823          	sd	s0,48(sp)
    80004590:	02913423          	sd	s1,40(sp)
    80004594:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004598:	02000513          	li	a0,32
    8000459c:	fffff097          	auipc	ra,0xfffff
    800045a0:	560080e7          	jalr	1376(ra) # 80003afc <_Znwm>
    800045a4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800045a8:	fffff097          	auipc	ra,0xfffff
    800045ac:	694080e7          	jalr	1684(ra) # 80003c3c <_ZN6ThreadC1Ev>
    800045b0:	00008797          	auipc	a5,0x8
    800045b4:	5c078793          	addi	a5,a5,1472 # 8000cb70 <_ZTV7WorkerA+0x10>
    800045b8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800045bc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800045c0:	00006517          	auipc	a0,0x6
    800045c4:	cd850513          	addi	a0,a0,-808 # 8000a298 <CONSOLE_STATUS+0x278>
    800045c8:	00003097          	auipc	ra,0x3
    800045cc:	ef0080e7          	jalr	-272(ra) # 800074b8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800045d0:	02000513          	li	a0,32
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	528080e7          	jalr	1320(ra) # 80003afc <_Znwm>
    800045dc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800045e0:	fffff097          	auipc	ra,0xfffff
    800045e4:	65c080e7          	jalr	1628(ra) # 80003c3c <_ZN6ThreadC1Ev>
    800045e8:	00008797          	auipc	a5,0x8
    800045ec:	5b078793          	addi	a5,a5,1456 # 8000cb98 <_ZTV7WorkerB+0x10>
    800045f0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800045f4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800045f8:	00006517          	auipc	a0,0x6
    800045fc:	cb850513          	addi	a0,a0,-840 # 8000a2b0 <CONSOLE_STATUS+0x290>
    80004600:	00003097          	auipc	ra,0x3
    80004604:	eb8080e7          	jalr	-328(ra) # 800074b8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004608:	02000513          	li	a0,32
    8000460c:	fffff097          	auipc	ra,0xfffff
    80004610:	4f0080e7          	jalr	1264(ra) # 80003afc <_Znwm>
    80004614:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004618:	fffff097          	auipc	ra,0xfffff
    8000461c:	624080e7          	jalr	1572(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80004620:	00008797          	auipc	a5,0x8
    80004624:	5a078793          	addi	a5,a5,1440 # 8000cbc0 <_ZTV7WorkerC+0x10>
    80004628:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000462c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004630:	00006517          	auipc	a0,0x6
    80004634:	c9850513          	addi	a0,a0,-872 # 8000a2c8 <CONSOLE_STATUS+0x2a8>
    80004638:	00003097          	auipc	ra,0x3
    8000463c:	e80080e7          	jalr	-384(ra) # 800074b8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004640:	02000513          	li	a0,32
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	4b8080e7          	jalr	1208(ra) # 80003afc <_Znwm>
    8000464c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004650:	fffff097          	auipc	ra,0xfffff
    80004654:	5ec080e7          	jalr	1516(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80004658:	00008797          	auipc	a5,0x8
    8000465c:	59078793          	addi	a5,a5,1424 # 8000cbe8 <_ZTV7WorkerD+0x10>
    80004660:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004664:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004668:	00006517          	auipc	a0,0x6
    8000466c:	c7850513          	addi	a0,a0,-904 # 8000a2e0 <CONSOLE_STATUS+0x2c0>
    80004670:	00003097          	auipc	ra,0x3
    80004674:	e48080e7          	jalr	-440(ra) # 800074b8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004678:	00000493          	li	s1,0
    8000467c:	0200006f          	j	8000469c <_Z20Threads_CPP_API_testv+0x118>
        threads[i]->start();
    80004680:	00349793          	slli	a5,s1,0x3
    80004684:	fe078793          	addi	a5,a5,-32
    80004688:	008787b3          	add	a5,a5,s0
    8000468c:	fe07b503          	ld	a0,-32(a5)
    80004690:	fffff097          	auipc	ra,0xfffff
    80004694:	5dc080e7          	jalr	1500(ra) # 80003c6c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004698:	0014849b          	addiw	s1,s1,1
    8000469c:	00300793          	li	a5,3
    800046a0:	fe97d0e3          	bge	a5,s1,80004680 <_Z20Threads_CPP_API_testv+0xfc>
    800046a4:	00c0006f          	j	800046b0 <_Z20Threads_CPP_API_testv+0x12c>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	688080e7          	jalr	1672(ra) # 80003d30 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800046b0:	0000e797          	auipc	a5,0xe
    800046b4:	a507c783          	lbu	a5,-1456(a5) # 80012100 <_ZL9finishedA>
    800046b8:	fe0788e3          	beqz	a5,800046a8 <_Z20Threads_CPP_API_testv+0x124>
    800046bc:	0000e797          	auipc	a5,0xe
    800046c0:	a457c783          	lbu	a5,-1467(a5) # 80012101 <_ZL9finishedB>
    800046c4:	fe0782e3          	beqz	a5,800046a8 <_Z20Threads_CPP_API_testv+0x124>
    800046c8:	0000e797          	auipc	a5,0xe
    800046cc:	a3a7c783          	lbu	a5,-1478(a5) # 80012102 <_ZL9finishedC>
    800046d0:	fc078ce3          	beqz	a5,800046a8 <_Z20Threads_CPP_API_testv+0x124>
    800046d4:	0000e797          	auipc	a5,0xe
    800046d8:	a2f7c783          	lbu	a5,-1489(a5) # 80012103 <_ZL9finishedD>
    800046dc:	fc0786e3          	beqz	a5,800046a8 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    800046e0:	fc040493          	addi	s1,s0,-64
    800046e4:	0080006f          	j	800046ec <_Z20Threads_CPP_API_testv+0x168>
    800046e8:	00848493          	addi	s1,s1,8
    800046ec:	fe040793          	addi	a5,s0,-32
    800046f0:	08f48e63          	beq	s1,a5,8000478c <_Z20Threads_CPP_API_testv+0x208>
    800046f4:	0004b503          	ld	a0,0(s1)
    800046f8:	fe0508e3          	beqz	a0,800046e8 <_Z20Threads_CPP_API_testv+0x164>
    800046fc:	00053783          	ld	a5,0(a0)
    80004700:	0087b783          	ld	a5,8(a5)
    80004704:	000780e7          	jalr	a5
    80004708:	fe1ff06f          	j	800046e8 <_Z20Threads_CPP_API_testv+0x164>
    8000470c:	03213023          	sd	s2,32(sp)
    threads[0] = new WorkerA();
    80004710:	00050913          	mv	s2,a0
    80004714:	00048513          	mv	a0,s1
    80004718:	fffff097          	auipc	ra,0xfffff
    8000471c:	40c080e7          	jalr	1036(ra) # 80003b24 <_ZdlPv>
    80004720:	00090513          	mv	a0,s2
    80004724:	0000f097          	auipc	ra,0xf
    80004728:	aec080e7          	jalr	-1300(ra) # 80013210 <_Unwind_Resume>
    8000472c:	03213023          	sd	s2,32(sp)
    threads[1] = new WorkerB();
    80004730:	00050913          	mv	s2,a0
    80004734:	00048513          	mv	a0,s1
    80004738:	fffff097          	auipc	ra,0xfffff
    8000473c:	3ec080e7          	jalr	1004(ra) # 80003b24 <_ZdlPv>
    80004740:	00090513          	mv	a0,s2
    80004744:	0000f097          	auipc	ra,0xf
    80004748:	acc080e7          	jalr	-1332(ra) # 80013210 <_Unwind_Resume>
    8000474c:	03213023          	sd	s2,32(sp)
    threads[2] = new WorkerC();
    80004750:	00050913          	mv	s2,a0
    80004754:	00048513          	mv	a0,s1
    80004758:	fffff097          	auipc	ra,0xfffff
    8000475c:	3cc080e7          	jalr	972(ra) # 80003b24 <_ZdlPv>
    80004760:	00090513          	mv	a0,s2
    80004764:	0000f097          	auipc	ra,0xf
    80004768:	aac080e7          	jalr	-1364(ra) # 80013210 <_Unwind_Resume>
    8000476c:	03213023          	sd	s2,32(sp)
    threads[3] = new WorkerD();
    80004770:	00050913          	mv	s2,a0
    80004774:	00048513          	mv	a0,s1
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	3ac080e7          	jalr	940(ra) # 80003b24 <_ZdlPv>
    80004780:	00090513          	mv	a0,s2
    80004784:	0000f097          	auipc	ra,0xf
    80004788:	a8c080e7          	jalr	-1396(ra) # 80013210 <_Unwind_Resume>
}
    8000478c:	03813083          	ld	ra,56(sp)
    80004790:	03013403          	ld	s0,48(sp)
    80004794:	02813483          	ld	s1,40(sp)
    80004798:	04010113          	addi	sp,sp,64
    8000479c:	00008067          	ret

00000000800047a0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800047a0:	ff010113          	addi	sp,sp,-16
    800047a4:	00113423          	sd	ra,8(sp)
    800047a8:	00813023          	sd	s0,0(sp)
    800047ac:	01010413          	addi	s0,sp,16
    800047b0:	00008797          	auipc	a5,0x8
    800047b4:	3c078793          	addi	a5,a5,960 # 8000cb70 <_ZTV7WorkerA+0x10>
    800047b8:	00f53023          	sd	a5,0(a0)
    800047bc:	fffff097          	auipc	ra,0xfffff
    800047c0:	2ac080e7          	jalr	684(ra) # 80003a68 <_ZN6ThreadD1Ev>
    800047c4:	00813083          	ld	ra,8(sp)
    800047c8:	00013403          	ld	s0,0(sp)
    800047cc:	01010113          	addi	sp,sp,16
    800047d0:	00008067          	ret

00000000800047d4 <_ZN7WorkerAD0Ev>:
    800047d4:	fe010113          	addi	sp,sp,-32
    800047d8:	00113c23          	sd	ra,24(sp)
    800047dc:	00813823          	sd	s0,16(sp)
    800047e0:	00913423          	sd	s1,8(sp)
    800047e4:	02010413          	addi	s0,sp,32
    800047e8:	00050493          	mv	s1,a0
    800047ec:	00008797          	auipc	a5,0x8
    800047f0:	38478793          	addi	a5,a5,900 # 8000cb70 <_ZTV7WorkerA+0x10>
    800047f4:	00f53023          	sd	a5,0(a0)
    800047f8:	fffff097          	auipc	ra,0xfffff
    800047fc:	270080e7          	jalr	624(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004800:	00048513          	mv	a0,s1
    80004804:	fffff097          	auipc	ra,0xfffff
    80004808:	320080e7          	jalr	800(ra) # 80003b24 <_ZdlPv>
    8000480c:	01813083          	ld	ra,24(sp)
    80004810:	01013403          	ld	s0,16(sp)
    80004814:	00813483          	ld	s1,8(sp)
    80004818:	02010113          	addi	sp,sp,32
    8000481c:	00008067          	ret

0000000080004820 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004820:	ff010113          	addi	sp,sp,-16
    80004824:	00113423          	sd	ra,8(sp)
    80004828:	00813023          	sd	s0,0(sp)
    8000482c:	01010413          	addi	s0,sp,16
    80004830:	00008797          	auipc	a5,0x8
    80004834:	36878793          	addi	a5,a5,872 # 8000cb98 <_ZTV7WorkerB+0x10>
    80004838:	00f53023          	sd	a5,0(a0)
    8000483c:	fffff097          	auipc	ra,0xfffff
    80004840:	22c080e7          	jalr	556(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004844:	00813083          	ld	ra,8(sp)
    80004848:	00013403          	ld	s0,0(sp)
    8000484c:	01010113          	addi	sp,sp,16
    80004850:	00008067          	ret

0000000080004854 <_ZN7WorkerBD0Ev>:
    80004854:	fe010113          	addi	sp,sp,-32
    80004858:	00113c23          	sd	ra,24(sp)
    8000485c:	00813823          	sd	s0,16(sp)
    80004860:	00913423          	sd	s1,8(sp)
    80004864:	02010413          	addi	s0,sp,32
    80004868:	00050493          	mv	s1,a0
    8000486c:	00008797          	auipc	a5,0x8
    80004870:	32c78793          	addi	a5,a5,812 # 8000cb98 <_ZTV7WorkerB+0x10>
    80004874:	00f53023          	sd	a5,0(a0)
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	1f0080e7          	jalr	496(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004880:	00048513          	mv	a0,s1
    80004884:	fffff097          	auipc	ra,0xfffff
    80004888:	2a0080e7          	jalr	672(ra) # 80003b24 <_ZdlPv>
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	00813483          	ld	s1,8(sp)
    80004898:	02010113          	addi	sp,sp,32
    8000489c:	00008067          	ret

00000000800048a0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800048a0:	ff010113          	addi	sp,sp,-16
    800048a4:	00113423          	sd	ra,8(sp)
    800048a8:	00813023          	sd	s0,0(sp)
    800048ac:	01010413          	addi	s0,sp,16
    800048b0:	00008797          	auipc	a5,0x8
    800048b4:	31078793          	addi	a5,a5,784 # 8000cbc0 <_ZTV7WorkerC+0x10>
    800048b8:	00f53023          	sd	a5,0(a0)
    800048bc:	fffff097          	auipc	ra,0xfffff
    800048c0:	1ac080e7          	jalr	428(ra) # 80003a68 <_ZN6ThreadD1Ev>
    800048c4:	00813083          	ld	ra,8(sp)
    800048c8:	00013403          	ld	s0,0(sp)
    800048cc:	01010113          	addi	sp,sp,16
    800048d0:	00008067          	ret

00000000800048d4 <_ZN7WorkerCD0Ev>:
    800048d4:	fe010113          	addi	sp,sp,-32
    800048d8:	00113c23          	sd	ra,24(sp)
    800048dc:	00813823          	sd	s0,16(sp)
    800048e0:	00913423          	sd	s1,8(sp)
    800048e4:	02010413          	addi	s0,sp,32
    800048e8:	00050493          	mv	s1,a0
    800048ec:	00008797          	auipc	a5,0x8
    800048f0:	2d478793          	addi	a5,a5,724 # 8000cbc0 <_ZTV7WorkerC+0x10>
    800048f4:	00f53023          	sd	a5,0(a0)
    800048f8:	fffff097          	auipc	ra,0xfffff
    800048fc:	170080e7          	jalr	368(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004900:	00048513          	mv	a0,s1
    80004904:	fffff097          	auipc	ra,0xfffff
    80004908:	220080e7          	jalr	544(ra) # 80003b24 <_ZdlPv>
    8000490c:	01813083          	ld	ra,24(sp)
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	00813483          	ld	s1,8(sp)
    80004918:	02010113          	addi	sp,sp,32
    8000491c:	00008067          	ret

0000000080004920 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004920:	ff010113          	addi	sp,sp,-16
    80004924:	00113423          	sd	ra,8(sp)
    80004928:	00813023          	sd	s0,0(sp)
    8000492c:	01010413          	addi	s0,sp,16
    80004930:	00008797          	auipc	a5,0x8
    80004934:	2b878793          	addi	a5,a5,696 # 8000cbe8 <_ZTV7WorkerD+0x10>
    80004938:	00f53023          	sd	a5,0(a0)
    8000493c:	fffff097          	auipc	ra,0xfffff
    80004940:	12c080e7          	jalr	300(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004944:	00813083          	ld	ra,8(sp)
    80004948:	00013403          	ld	s0,0(sp)
    8000494c:	01010113          	addi	sp,sp,16
    80004950:	00008067          	ret

0000000080004954 <_ZN7WorkerDD0Ev>:
    80004954:	fe010113          	addi	sp,sp,-32
    80004958:	00113c23          	sd	ra,24(sp)
    8000495c:	00813823          	sd	s0,16(sp)
    80004960:	00913423          	sd	s1,8(sp)
    80004964:	02010413          	addi	s0,sp,32
    80004968:	00050493          	mv	s1,a0
    8000496c:	00008797          	auipc	a5,0x8
    80004970:	27c78793          	addi	a5,a5,636 # 8000cbe8 <_ZTV7WorkerD+0x10>
    80004974:	00f53023          	sd	a5,0(a0)
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	0f0080e7          	jalr	240(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004980:	00048513          	mv	a0,s1
    80004984:	fffff097          	auipc	ra,0xfffff
    80004988:	1a0080e7          	jalr	416(ra) # 80003b24 <_ZdlPv>
    8000498c:	01813083          	ld	ra,24(sp)
    80004990:	01013403          	ld	s0,16(sp)
    80004994:	00813483          	ld	s1,8(sp)
    80004998:	02010113          	addi	sp,sp,32
    8000499c:	00008067          	ret

00000000800049a0 <_ZN7WorkerA3runEv>:
    void run() override {
    800049a0:	ff010113          	addi	sp,sp,-16
    800049a4:	00113423          	sd	ra,8(sp)
    800049a8:	00813023          	sd	s0,0(sp)
    800049ac:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800049b0:	00000593          	li	a1,0
    800049b4:	fffff097          	auipc	ra,0xfffff
    800049b8:	768080e7          	jalr	1896(ra) # 8000411c <_ZN7WorkerA11workerBodyAEPv>
    }
    800049bc:	00813083          	ld	ra,8(sp)
    800049c0:	00013403          	ld	s0,0(sp)
    800049c4:	01010113          	addi	sp,sp,16
    800049c8:	00008067          	ret

00000000800049cc <_ZN7WorkerB3runEv>:
    void run() override {
    800049cc:	ff010113          	addi	sp,sp,-16
    800049d0:	00113423          	sd	ra,8(sp)
    800049d4:	00813023          	sd	s0,0(sp)
    800049d8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800049dc:	00000593          	li	a1,0
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	808080e7          	jalr	-2040(ra) # 800041e8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800049e8:	00813083          	ld	ra,8(sp)
    800049ec:	00013403          	ld	s0,0(sp)
    800049f0:	01010113          	addi	sp,sp,16
    800049f4:	00008067          	ret

00000000800049f8 <_ZN7WorkerC3runEv>:
    void run() override {
    800049f8:	ff010113          	addi	sp,sp,-16
    800049fc:	00113423          	sd	ra,8(sp)
    80004a00:	00813023          	sd	s0,0(sp)
    80004a04:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004a08:	00000593          	li	a1,0
    80004a0c:	00000097          	auipc	ra,0x0
    80004a10:	8b0080e7          	jalr	-1872(ra) # 800042bc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004a14:	00813083          	ld	ra,8(sp)
    80004a18:	00013403          	ld	s0,0(sp)
    80004a1c:	01010113          	addi	sp,sp,16
    80004a20:	00008067          	ret

0000000080004a24 <_ZN7WorkerD3runEv>:
    void run() override {
    80004a24:	ff010113          	addi	sp,sp,-16
    80004a28:	00113423          	sd	ra,8(sp)
    80004a2c:	00813023          	sd	s0,0(sp)
    80004a30:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004a34:	00000593          	li	a1,0
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	a04080e7          	jalr	-1532(ra) # 8000443c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004a40:	00813083          	ld	ra,8(sp)
    80004a44:	00013403          	ld	s0,0(sp)
    80004a48:	01010113          	addi	sp,sp,16
    80004a4c:	00008067          	ret

0000000080004a50 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004a50:	f8010113          	addi	sp,sp,-128
    80004a54:	06113c23          	sd	ra,120(sp)
    80004a58:	06813823          	sd	s0,112(sp)
    80004a5c:	06913423          	sd	s1,104(sp)
    80004a60:	07213023          	sd	s2,96(sp)
    80004a64:	05313c23          	sd	s3,88(sp)
    80004a68:	05413823          	sd	s4,80(sp)
    80004a6c:	05513423          	sd	s5,72(sp)
    80004a70:	05613023          	sd	s6,64(sp)
    80004a74:	03713c23          	sd	s7,56(sp)
    80004a78:	03813823          	sd	s8,48(sp)
    80004a7c:	03913423          	sd	s9,40(sp)
    80004a80:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
}
    80004a84:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004a88:	00006517          	auipc	a0,0x6
    80004a8c:	87050513          	addi	a0,a0,-1936 # 8000a2f8 <CONSOLE_STATUS+0x2d8>
    80004a90:	00003097          	auipc	ra,0x3
    80004a94:	a28080e7          	jalr	-1496(ra) # 800074b8 <_Z11printStringPKc>
    getString(input, 30);
    80004a98:	01e00593          	li	a1,30
    80004a9c:	f8040493          	addi	s1,s0,-128
    80004aa0:	00048513          	mv	a0,s1
    80004aa4:	00003097          	auipc	ra,0x3
    80004aa8:	a9c080e7          	jalr	-1380(ra) # 80007540 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004aac:	00048513          	mv	a0,s1
    80004ab0:	00003097          	auipc	ra,0x3
    80004ab4:	b68080e7          	jalr	-1176(ra) # 80007618 <_Z11stringToIntPKc>
    80004ab8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004abc:	00006517          	auipc	a0,0x6
    80004ac0:	85c50513          	addi	a0,a0,-1956 # 8000a318 <CONSOLE_STATUS+0x2f8>
    80004ac4:	00003097          	auipc	ra,0x3
    80004ac8:	9f4080e7          	jalr	-1548(ra) # 800074b8 <_Z11printStringPKc>
    getString(input, 30);
    80004acc:	01e00593          	li	a1,30
    80004ad0:	00048513          	mv	a0,s1
    80004ad4:	00003097          	auipc	ra,0x3
    80004ad8:	a6c080e7          	jalr	-1428(ra) # 80007540 <_Z9getStringPci>
    n = stringToInt(input);
    80004adc:	00048513          	mv	a0,s1
    80004ae0:	00003097          	auipc	ra,0x3
    80004ae4:	b38080e7          	jalr	-1224(ra) # 80007618 <_Z11stringToIntPKc>
    80004ae8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004aec:	00006517          	auipc	a0,0x6
    80004af0:	84c50513          	addi	a0,a0,-1972 # 8000a338 <CONSOLE_STATUS+0x318>
    80004af4:	00003097          	auipc	ra,0x3
    80004af8:	9c4080e7          	jalr	-1596(ra) # 800074b8 <_Z11printStringPKc>
    printInt(threadNum);
    80004afc:	00000613          	li	a2,0
    80004b00:	00a00593          	li	a1,10
    80004b04:	00098513          	mv	a0,s3
    80004b08:	00003097          	auipc	ra,0x3
    80004b0c:	b60080e7          	jalr	-1184(ra) # 80007668 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004b10:	00006517          	auipc	a0,0x6
    80004b14:	84050513          	addi	a0,a0,-1984 # 8000a350 <CONSOLE_STATUS+0x330>
    80004b18:	00003097          	auipc	ra,0x3
    80004b1c:	9a0080e7          	jalr	-1632(ra) # 800074b8 <_Z11printStringPKc>
    printInt(n);
    80004b20:	00000613          	li	a2,0
    80004b24:	00a00593          	li	a1,10
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	00003097          	auipc	ra,0x3
    80004b30:	b3c080e7          	jalr	-1220(ra) # 80007668 <_Z8printIntiii>
    printString(".\n");
    80004b34:	00006517          	auipc	a0,0x6
    80004b38:	83450513          	addi	a0,a0,-1996 # 8000a368 <CONSOLE_STATUS+0x348>
    80004b3c:	00003097          	auipc	ra,0x3
    80004b40:	97c080e7          	jalr	-1668(ra) # 800074b8 <_Z11printStringPKc>
    if (threadNum > n) {
    80004b44:	0334c463          	blt	s1,s3,80004b6c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004b48:	03305c63          	blez	s3,80004b80 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004b4c:	03800513          	li	a0,56
    80004b50:	fffff097          	auipc	ra,0xfffff
    80004b54:	fac080e7          	jalr	-84(ra) # 80003afc <_Znwm>
    80004b58:	00050a93          	mv	s5,a0
    80004b5c:	00048593          	mv	a1,s1
    80004b60:	00001097          	auipc	ra,0x1
    80004b64:	0cc080e7          	jalr	204(ra) # 80005c2c <_ZN9BufferCPPC1Ei>
    80004b68:	0300006f          	j	80004b98 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004b6c:	00006517          	auipc	a0,0x6
    80004b70:	80450513          	addi	a0,a0,-2044 # 8000a370 <CONSOLE_STATUS+0x350>
    80004b74:	00003097          	auipc	ra,0x3
    80004b78:	944080e7          	jalr	-1724(ra) # 800074b8 <_Z11printStringPKc>
        return;
    80004b7c:	0140006f          	j	80004b90 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004b80:	00006517          	auipc	a0,0x6
    80004b84:	83050513          	addi	a0,a0,-2000 # 8000a3b0 <CONSOLE_STATUS+0x390>
    80004b88:	00003097          	auipc	ra,0x3
    80004b8c:	930080e7          	jalr	-1744(ra) # 800074b8 <_Z11printStringPKc>
        return;
    80004b90:	000c0113          	mv	sp,s8
    80004b94:	2140006f          	j	80004da8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004b98:	01000513          	li	a0,16
    80004b9c:	fffff097          	auipc	ra,0xfffff
    80004ba0:	f60080e7          	jalr	-160(ra) # 80003afc <_Znwm>
    80004ba4:	00050913          	mv	s2,a0
    80004ba8:	00000593          	li	a1,0
    80004bac:	fffff097          	auipc	ra,0xfffff
    80004bb0:	238080e7          	jalr	568(ra) # 80003de4 <_ZN9SemaphoreC1Ei>
    80004bb4:	0000d797          	auipc	a5,0xd
    80004bb8:	5527be23          	sd	s2,1372(a5) # 80012110 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004bbc:	00399793          	slli	a5,s3,0x3
    80004bc0:	00f78793          	addi	a5,a5,15
    80004bc4:	ff07f793          	andi	a5,a5,-16
    80004bc8:	40f10133          	sub	sp,sp,a5
    80004bcc:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004bd0:	0019871b          	addiw	a4,s3,1
    80004bd4:	00171793          	slli	a5,a4,0x1
    80004bd8:	00e787b3          	add	a5,a5,a4
    80004bdc:	00379793          	slli	a5,a5,0x3
    80004be0:	00f78793          	addi	a5,a5,15
    80004be4:	ff07f793          	andi	a5,a5,-16
    80004be8:	40f10133          	sub	sp,sp,a5
    80004bec:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004bf0:	00199493          	slli	s1,s3,0x1
    80004bf4:	013484b3          	add	s1,s1,s3
    80004bf8:	00349493          	slli	s1,s1,0x3
    80004bfc:	009b04b3          	add	s1,s6,s1
    80004c00:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004c04:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004c08:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004c0c:	02800513          	li	a0,40
    80004c10:	fffff097          	auipc	ra,0xfffff
    80004c14:	eec080e7          	jalr	-276(ra) # 80003afc <_Znwm>
    80004c18:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004c1c:	fffff097          	auipc	ra,0xfffff
    80004c20:	020080e7          	jalr	32(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80004c24:	00008797          	auipc	a5,0x8
    80004c28:	03c78793          	addi	a5,a5,60 # 8000cc60 <_ZTV8Consumer+0x10>
    80004c2c:	00fbb023          	sd	a5,0(s7)
    80004c30:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004c34:	000b8513          	mv	a0,s7
    80004c38:	fffff097          	auipc	ra,0xfffff
    80004c3c:	034080e7          	jalr	52(ra) # 80003c6c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004c40:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004c44:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004c48:	0000d797          	auipc	a5,0xd
    80004c4c:	4c87b783          	ld	a5,1224(a5) # 80012110 <_ZL10waitForAll>
    80004c50:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004c54:	02800513          	li	a0,40
    80004c58:	fffff097          	auipc	ra,0xfffff
    80004c5c:	ea4080e7          	jalr	-348(ra) # 80003afc <_Znwm>
    80004c60:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004c64:	fffff097          	auipc	ra,0xfffff
    80004c68:	fd8080e7          	jalr	-40(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80004c6c:	00008797          	auipc	a5,0x8
    80004c70:	fa478793          	addi	a5,a5,-92 # 8000cc10 <_ZTV16ProducerKeyborad+0x10>
    80004c74:	00f4b023          	sd	a5,0(s1)
    80004c78:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004c7c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004c80:	00048513          	mv	a0,s1
    80004c84:	fffff097          	auipc	ra,0xfffff
    80004c88:	fe8080e7          	jalr	-24(ra) # 80003c6c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004c8c:	00100913          	li	s2,1
    80004c90:	0300006f          	j	80004cc0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004c94:	00008797          	auipc	a5,0x8
    80004c98:	fa478793          	addi	a5,a5,-92 # 8000cc38 <_ZTV8Producer+0x10>
    80004c9c:	00fcb023          	sd	a5,0(s9)
    80004ca0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004ca4:	00391793          	slli	a5,s2,0x3
    80004ca8:	00fa07b3          	add	a5,s4,a5
    80004cac:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004cb0:	000c8513          	mv	a0,s9
    80004cb4:	fffff097          	auipc	ra,0xfffff
    80004cb8:	fb8080e7          	jalr	-72(ra) # 80003c6c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004cbc:	0019091b          	addiw	s2,s2,1
    80004cc0:	05395263          	bge	s2,s3,80004d04 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004cc4:	00191493          	slli	s1,s2,0x1
    80004cc8:	012484b3          	add	s1,s1,s2
    80004ccc:	00349493          	slli	s1,s1,0x3
    80004cd0:	009b04b3          	add	s1,s6,s1
    80004cd4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004cd8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004cdc:	0000d797          	auipc	a5,0xd
    80004ce0:	4347b783          	ld	a5,1076(a5) # 80012110 <_ZL10waitForAll>
    80004ce4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004ce8:	02800513          	li	a0,40
    80004cec:	fffff097          	auipc	ra,0xfffff
    80004cf0:	e10080e7          	jalr	-496(ra) # 80003afc <_Znwm>
    80004cf4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004cf8:	fffff097          	auipc	ra,0xfffff
    80004cfc:	f44080e7          	jalr	-188(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80004d00:	f95ff06f          	j	80004c94 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004d04:	fffff097          	auipc	ra,0xfffff
    80004d08:	02c080e7          	jalr	44(ra) # 80003d30 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d0c:	00000493          	li	s1,0
    80004d10:	0180006f          	j	80004d28 <_Z20testConsumerProducerv+0x2d8>
        waitForAll->wait();
    80004d14:	0000d517          	auipc	a0,0xd
    80004d18:	3fc53503          	ld	a0,1020(a0) # 80012110 <_ZL10waitForAll>
    80004d1c:	fffff097          	auipc	ra,0xfffff
    80004d20:	114080e7          	jalr	276(ra) # 80003e30 <_ZNK9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d24:	0014849b          	addiw	s1,s1,1
    80004d28:	fe99d6e3          	bge	s3,s1,80004d14 <_Z20testConsumerProducerv+0x2c4>
    delete waitForAll;
    80004d2c:	0000d517          	auipc	a0,0xd
    80004d30:	3e453503          	ld	a0,996(a0) # 80012110 <_ZL10waitForAll>
    80004d34:	00050863          	beqz	a0,80004d44 <_Z20testConsumerProducerv+0x2f4>
    80004d38:	00053783          	ld	a5,0(a0)
    80004d3c:	0087b783          	ld	a5,8(a5)
    80004d40:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004d44:	00000493          	li	s1,0
    80004d48:	0080006f          	j	80004d50 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004d4c:	0014849b          	addiw	s1,s1,1
    80004d50:	0334d263          	bge	s1,s3,80004d74 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004d54:	00349793          	slli	a5,s1,0x3
    80004d58:	00fa07b3          	add	a5,s4,a5
    80004d5c:	0007b503          	ld	a0,0(a5)
    80004d60:	fe0506e3          	beqz	a0,80004d4c <_Z20testConsumerProducerv+0x2fc>
    80004d64:	00053783          	ld	a5,0(a0)
    80004d68:	0087b783          	ld	a5,8(a5)
    80004d6c:	000780e7          	jalr	a5
    80004d70:	fddff06f          	j	80004d4c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004d74:	000b8a63          	beqz	s7,80004d88 <_Z20testConsumerProducerv+0x338>
    80004d78:	000bb783          	ld	a5,0(s7)
    80004d7c:	0087b783          	ld	a5,8(a5)
    80004d80:	000b8513          	mv	a0,s7
    80004d84:	000780e7          	jalr	a5
    delete buffer;
    80004d88:	000a8e63          	beqz	s5,80004da4 <_Z20testConsumerProducerv+0x354>
    80004d8c:	000a8513          	mv	a0,s5
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	194080e7          	jalr	404(ra) # 80005f24 <_ZN9BufferCPPD1Ev>
    80004d98:	000a8513          	mv	a0,s5
    80004d9c:	fffff097          	auipc	ra,0xfffff
    80004da0:	d88080e7          	jalr	-632(ra) # 80003b24 <_ZdlPv>
    80004da4:	000c0113          	mv	sp,s8
}
    80004da8:	f8040113          	addi	sp,s0,-128
    80004dac:	07813083          	ld	ra,120(sp)
    80004db0:	07013403          	ld	s0,112(sp)
    80004db4:	06813483          	ld	s1,104(sp)
    80004db8:	06013903          	ld	s2,96(sp)
    80004dbc:	05813983          	ld	s3,88(sp)
    80004dc0:	05013a03          	ld	s4,80(sp)
    80004dc4:	04813a83          	ld	s5,72(sp)
    80004dc8:	04013b03          	ld	s6,64(sp)
    80004dcc:	03813b83          	ld	s7,56(sp)
    80004dd0:	03013c03          	ld	s8,48(sp)
    80004dd4:	02813c83          	ld	s9,40(sp)
    80004dd8:	08010113          	addi	sp,sp,128
    80004ddc:	00008067          	ret
    BufferCPP *buffer = new BufferCPP(n);
    80004de0:	00050493          	mv	s1,a0
    80004de4:	000a8513          	mv	a0,s5
    80004de8:	fffff097          	auipc	ra,0xfffff
    80004dec:	d3c080e7          	jalr	-708(ra) # 80003b24 <_ZdlPv>
    80004df0:	00048513          	mv	a0,s1
    80004df4:	0000e097          	auipc	ra,0xe
    80004df8:	41c080e7          	jalr	1052(ra) # 80013210 <_Unwind_Resume>
    waitForAll = new Semaphore(0);
    80004dfc:	00050493          	mv	s1,a0
    80004e00:	00090513          	mv	a0,s2
    80004e04:	fffff097          	auipc	ra,0xfffff
    80004e08:	d20080e7          	jalr	-736(ra) # 80003b24 <_ZdlPv>
    80004e0c:	00048513          	mv	a0,s1
    80004e10:	0000e097          	auipc	ra,0xe
    80004e14:	400080e7          	jalr	1024(ra) # 80013210 <_Unwind_Resume>
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004e18:	00050493          	mv	s1,a0
    80004e1c:	000b8513          	mv	a0,s7
    80004e20:	fffff097          	auipc	ra,0xfffff
    80004e24:	d04080e7          	jalr	-764(ra) # 80003b24 <_ZdlPv>
    80004e28:	00048513          	mv	a0,s1
    80004e2c:	0000e097          	auipc	ra,0xe
    80004e30:	3e4080e7          	jalr	996(ra) # 80013210 <_Unwind_Resume>
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004e34:	00050913          	mv	s2,a0
    80004e38:	00048513          	mv	a0,s1
    80004e3c:	fffff097          	auipc	ra,0xfffff
    80004e40:	ce8080e7          	jalr	-792(ra) # 80003b24 <_ZdlPv>
    80004e44:	00090513          	mv	a0,s2
    80004e48:	0000e097          	auipc	ra,0xe
    80004e4c:	3c8080e7          	jalr	968(ra) # 80013210 <_Unwind_Resume>
        producers[i] = new Producer(&threadData[i]);
    80004e50:	00050493          	mv	s1,a0
    80004e54:	000c8513          	mv	a0,s9
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	ccc080e7          	jalr	-820(ra) # 80003b24 <_ZdlPv>
    80004e60:	00048513          	mv	a0,s1
    80004e64:	0000e097          	auipc	ra,0xe
    80004e68:	3ac080e7          	jalr	940(ra) # 80013210 <_Unwind_Resume>

0000000080004e6c <_ZN8Consumer3runEv>:
    void run() override {
    80004e6c:	fd010113          	addi	sp,sp,-48
    80004e70:	02113423          	sd	ra,40(sp)
    80004e74:	02813023          	sd	s0,32(sp)
    80004e78:	00913c23          	sd	s1,24(sp)
    80004e7c:	01213823          	sd	s2,16(sp)
    80004e80:	01313423          	sd	s3,8(sp)
    80004e84:	03010413          	addi	s0,sp,48
    80004e88:	00050913          	mv	s2,a0
        int i = 0;
    80004e8c:	00000993          	li	s3,0
        while (!threadEnd) {
    80004e90:	0000d797          	auipc	a5,0xd
    80004e94:	2787a783          	lw	a5,632(a5) # 80012108 <_ZL9threadEnd>
    80004e98:	06079063          	bnez	a5,80004ef8 <_ZN8Consumer3runEv+0x8c>
            int key = td->buffer->get();
    80004e9c:	02093783          	ld	a5,32(s2)
    80004ea0:	0087b503          	ld	a0,8(a5)
    80004ea4:	00001097          	auipc	ra,0x1
    80004ea8:	f6c080e7          	jalr	-148(ra) # 80005e10 <_ZN9BufferCPP3getEv>
            i++;
    80004eac:	0019849b          	addiw	s1,s3,1
    80004eb0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004eb4:	0ff57513          	zext.b	a0,a0
    80004eb8:	fffff097          	auipc	ra,0xfffff
    80004ebc:	09c080e7          	jalr	156(ra) # 80003f54 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004ec0:	05000793          	li	a5,80
    80004ec4:	02f4e4bb          	remw	s1,s1,a5
    80004ec8:	fc0494e3          	bnez	s1,80004e90 <_ZN8Consumer3runEv+0x24>
                Console::putc('\n');
    80004ecc:	00a00513          	li	a0,10
    80004ed0:	fffff097          	auipc	ra,0xfffff
    80004ed4:	084080e7          	jalr	132(ra) # 80003f54 <_ZN7Console4putcEc>
    80004ed8:	fb9ff06f          	j	80004e90 <_ZN8Consumer3runEv+0x24>
            int key = td->buffer->get();
    80004edc:	02093783          	ld	a5,32(s2)
    80004ee0:	0087b503          	ld	a0,8(a5)
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	f2c080e7          	jalr	-212(ra) # 80005e10 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004eec:	0ff57513          	zext.b	a0,a0
    80004ef0:	fffff097          	auipc	ra,0xfffff
    80004ef4:	064080e7          	jalr	100(ra) # 80003f54 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004ef8:	02093783          	ld	a5,32(s2)
    80004efc:	0087b503          	ld	a0,8(a5)
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	f9c080e7          	jalr	-100(ra) # 80005e9c <_ZN9BufferCPP6getCntEv>
    80004f08:	fca04ae3          	bgtz	a0,80004edc <_ZN8Consumer3runEv+0x70>
        td->sem->signal();
    80004f0c:	02093783          	ld	a5,32(s2)
    80004f10:	0107b503          	ld	a0,16(a5)
    80004f14:	fffff097          	auipc	ra,0xfffff
    80004f18:	f48080e7          	jalr	-184(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
    }
    80004f1c:	02813083          	ld	ra,40(sp)
    80004f20:	02013403          	ld	s0,32(sp)
    80004f24:	01813483          	ld	s1,24(sp)
    80004f28:	01013903          	ld	s2,16(sp)
    80004f2c:	00813983          	ld	s3,8(sp)
    80004f30:	03010113          	addi	sp,sp,48
    80004f34:	00008067          	ret

0000000080004f38 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004f38:	ff010113          	addi	sp,sp,-16
    80004f3c:	00113423          	sd	ra,8(sp)
    80004f40:	00813023          	sd	s0,0(sp)
    80004f44:	01010413          	addi	s0,sp,16
    80004f48:	00008797          	auipc	a5,0x8
    80004f4c:	d1878793          	addi	a5,a5,-744 # 8000cc60 <_ZTV8Consumer+0x10>
    80004f50:	00f53023          	sd	a5,0(a0)
    80004f54:	fffff097          	auipc	ra,0xfffff
    80004f58:	b14080e7          	jalr	-1260(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004f5c:	00813083          	ld	ra,8(sp)
    80004f60:	00013403          	ld	s0,0(sp)
    80004f64:	01010113          	addi	sp,sp,16
    80004f68:	00008067          	ret

0000000080004f6c <_ZN8ConsumerD0Ev>:
    80004f6c:	fe010113          	addi	sp,sp,-32
    80004f70:	00113c23          	sd	ra,24(sp)
    80004f74:	00813823          	sd	s0,16(sp)
    80004f78:	00913423          	sd	s1,8(sp)
    80004f7c:	02010413          	addi	s0,sp,32
    80004f80:	00050493          	mv	s1,a0
    80004f84:	00008797          	auipc	a5,0x8
    80004f88:	cdc78793          	addi	a5,a5,-804 # 8000cc60 <_ZTV8Consumer+0x10>
    80004f8c:	00f53023          	sd	a5,0(a0)
    80004f90:	fffff097          	auipc	ra,0xfffff
    80004f94:	ad8080e7          	jalr	-1320(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004f98:	00048513          	mv	a0,s1
    80004f9c:	fffff097          	auipc	ra,0xfffff
    80004fa0:	b88080e7          	jalr	-1144(ra) # 80003b24 <_ZdlPv>
    80004fa4:	01813083          	ld	ra,24(sp)
    80004fa8:	01013403          	ld	s0,16(sp)
    80004fac:	00813483          	ld	s1,8(sp)
    80004fb0:	02010113          	addi	sp,sp,32
    80004fb4:	00008067          	ret

0000000080004fb8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004fb8:	ff010113          	addi	sp,sp,-16
    80004fbc:	00113423          	sd	ra,8(sp)
    80004fc0:	00813023          	sd	s0,0(sp)
    80004fc4:	01010413          	addi	s0,sp,16
    80004fc8:	00008797          	auipc	a5,0x8
    80004fcc:	c4878793          	addi	a5,a5,-952 # 8000cc10 <_ZTV16ProducerKeyborad+0x10>
    80004fd0:	00f53023          	sd	a5,0(a0)
    80004fd4:	fffff097          	auipc	ra,0xfffff
    80004fd8:	a94080e7          	jalr	-1388(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80004fdc:	00813083          	ld	ra,8(sp)
    80004fe0:	00013403          	ld	s0,0(sp)
    80004fe4:	01010113          	addi	sp,sp,16
    80004fe8:	00008067          	ret

0000000080004fec <_ZN16ProducerKeyboradD0Ev>:
    80004fec:	fe010113          	addi	sp,sp,-32
    80004ff0:	00113c23          	sd	ra,24(sp)
    80004ff4:	00813823          	sd	s0,16(sp)
    80004ff8:	00913423          	sd	s1,8(sp)
    80004ffc:	02010413          	addi	s0,sp,32
    80005000:	00050493          	mv	s1,a0
    80005004:	00008797          	auipc	a5,0x8
    80005008:	c0c78793          	addi	a5,a5,-1012 # 8000cc10 <_ZTV16ProducerKeyborad+0x10>
    8000500c:	00f53023          	sd	a5,0(a0)
    80005010:	fffff097          	auipc	ra,0xfffff
    80005014:	a58080e7          	jalr	-1448(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80005018:	00048513          	mv	a0,s1
    8000501c:	fffff097          	auipc	ra,0xfffff
    80005020:	b08080e7          	jalr	-1272(ra) # 80003b24 <_ZdlPv>
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00813483          	ld	s1,8(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00008067          	ret

0000000080005038 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80005038:	ff010113          	addi	sp,sp,-16
    8000503c:	00113423          	sd	ra,8(sp)
    80005040:	00813023          	sd	s0,0(sp)
    80005044:	01010413          	addi	s0,sp,16
    80005048:	00008797          	auipc	a5,0x8
    8000504c:	bf078793          	addi	a5,a5,-1040 # 8000cc38 <_ZTV8Producer+0x10>
    80005050:	00f53023          	sd	a5,0(a0)
    80005054:	fffff097          	auipc	ra,0xfffff
    80005058:	a14080e7          	jalr	-1516(ra) # 80003a68 <_ZN6ThreadD1Ev>
    8000505c:	00813083          	ld	ra,8(sp)
    80005060:	00013403          	ld	s0,0(sp)
    80005064:	01010113          	addi	sp,sp,16
    80005068:	00008067          	ret

000000008000506c <_ZN8ProducerD0Ev>:
    8000506c:	fe010113          	addi	sp,sp,-32
    80005070:	00113c23          	sd	ra,24(sp)
    80005074:	00813823          	sd	s0,16(sp)
    80005078:	00913423          	sd	s1,8(sp)
    8000507c:	02010413          	addi	s0,sp,32
    80005080:	00050493          	mv	s1,a0
    80005084:	00008797          	auipc	a5,0x8
    80005088:	bb478793          	addi	a5,a5,-1100 # 8000cc38 <_ZTV8Producer+0x10>
    8000508c:	00f53023          	sd	a5,0(a0)
    80005090:	fffff097          	auipc	ra,0xfffff
    80005094:	9d8080e7          	jalr	-1576(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80005098:	00048513          	mv	a0,s1
    8000509c:	fffff097          	auipc	ra,0xfffff
    800050a0:	a88080e7          	jalr	-1400(ra) # 80003b24 <_ZdlPv>
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00813483          	ld	s1,8(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret

00000000800050b8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800050b8:	fe010113          	addi	sp,sp,-32
    800050bc:	00113c23          	sd	ra,24(sp)
    800050c0:	00813823          	sd	s0,16(sp)
    800050c4:	00913423          	sd	s1,8(sp)
    800050c8:	02010413          	addi	s0,sp,32
    800050cc:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800050d0:	0140006f          	j	800050e4 <_ZN16ProducerKeyborad3runEv+0x2c>
            td->buffer->put(key);
    800050d4:	0204b783          	ld	a5,32(s1)
    800050d8:	0087b503          	ld	a0,8(a5)
    800050dc:	00001097          	auipc	ra,0x1
    800050e0:	ca4080e7          	jalr	-860(ra) # 80005d80 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800050e4:	ffffd097          	auipc	ra,0xffffd
    800050e8:	800080e7          	jalr	-2048(ra) # 800018e4 <getc>
    800050ec:	0005059b          	sext.w	a1,a0
    800050f0:	01b00793          	li	a5,27
    800050f4:	fef590e3          	bne	a1,a5,800050d4 <_ZN16ProducerKeyborad3runEv+0x1c>
        threadEnd = 1;
    800050f8:	00100793          	li	a5,1
    800050fc:	0000d717          	auipc	a4,0xd
    80005100:	00f72623          	sw	a5,12(a4) # 80012108 <_ZL9threadEnd>
        td->buffer->put('!');
    80005104:	0204b783          	ld	a5,32(s1)
    80005108:	02100593          	li	a1,33
    8000510c:	0087b503          	ld	a0,8(a5)
    80005110:	00001097          	auipc	ra,0x1
    80005114:	c70080e7          	jalr	-912(ra) # 80005d80 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005118:	0204b783          	ld	a5,32(s1)
    8000511c:	0107b503          	ld	a0,16(a5)
    80005120:	fffff097          	auipc	ra,0xfffff
    80005124:	d3c080e7          	jalr	-708(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
    }
    80005128:	01813083          	ld	ra,24(sp)
    8000512c:	01013403          	ld	s0,16(sp)
    80005130:	00813483          	ld	s1,8(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret

000000008000513c <_ZN8Producer3runEv>:
    void run() override {
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00113c23          	sd	ra,24(sp)
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	01213023          	sd	s2,0(sp)
    80005150:	02010413          	addi	s0,sp,32
    80005154:	00050493          	mv	s1,a0
        int i = 0;
    80005158:	00000913          	li	s2,0
        while (!threadEnd) {
    8000515c:	0400006f          	j	8000519c <_ZN8Producer3runEv+0x60>
            td->buffer->put(td->id + '0');
    80005160:	0204b783          	ld	a5,32(s1)
    80005164:	0007a583          	lw	a1,0(a5)
    80005168:	0305859b          	addiw	a1,a1,48
    8000516c:	0087b503          	ld	a0,8(a5)
    80005170:	00001097          	auipc	ra,0x1
    80005174:	c10080e7          	jalr	-1008(ra) # 80005d80 <_ZN9BufferCPP3putEi>
            i++;
    80005178:	0019071b          	addiw	a4,s2,1
    8000517c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005180:	0204b783          	ld	a5,32(s1)
    80005184:	0007a783          	lw	a5,0(a5)
    80005188:	00e787bb          	addw	a5,a5,a4
    8000518c:	00500513          	li	a0,5
    80005190:	02a7e53b          	remw	a0,a5,a0
    80005194:	fffff097          	auipc	ra,0xfffff
    80005198:	bc4080e7          	jalr	-1084(ra) # 80003d58 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000519c:	0000d797          	auipc	a5,0xd
    800051a0:	f6c7a783          	lw	a5,-148(a5) # 80012108 <_ZL9threadEnd>
    800051a4:	fa078ee3          	beqz	a5,80005160 <_ZN8Producer3runEv+0x24>
        td->sem->signal();
    800051a8:	0204b783          	ld	a5,32(s1)
    800051ac:	0107b503          	ld	a0,16(a5)
    800051b0:	fffff097          	auipc	ra,0xfffff
    800051b4:	cac080e7          	jalr	-852(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
    }
    800051b8:	01813083          	ld	ra,24(sp)
    800051bc:	01013403          	ld	s0,16(sp)
    800051c0:	00813483          	ld	s1,8(sp)
    800051c4:	00013903          	ld	s2,0(sp)
    800051c8:	02010113          	addi	sp,sp,32
    800051cc:	00008067          	ret

00000000800051d0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800051d0:	fe010113          	addi	sp,sp,-32
    800051d4:	00113c23          	sd	ra,24(sp)
    800051d8:	00813823          	sd	s0,16(sp)
    800051dc:	00913423          	sd	s1,8(sp)
    800051e0:	02010413          	addi	s0,sp,32
    800051e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800051e8:	00100793          	li	a5,1
    800051ec:	02a7fc63          	bgeu	a5,a0,80005224 <_ZL9fibonaccim+0x54>
    800051f0:	01213023          	sd	s2,0(sp)
    if (n % 10 == 0) { thread_dispatch(); }
    800051f4:	00a00793          	li	a5,10
    800051f8:	02f577b3          	remu	a5,a0,a5
    800051fc:	02078e63          	beqz	a5,80005238 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005200:	fff48513          	addi	a0,s1,-1
    80005204:	00000097          	auipc	ra,0x0
    80005208:	fcc080e7          	jalr	-52(ra) # 800051d0 <_ZL9fibonaccim>
    8000520c:	00050913          	mv	s2,a0
    80005210:	ffe48513          	addi	a0,s1,-2
    80005214:	00000097          	auipc	ra,0x0
    80005218:	fbc080e7          	jalr	-68(ra) # 800051d0 <_ZL9fibonaccim>
    8000521c:	00a90533          	add	a0,s2,a0
    80005220:	00013903          	ld	s2,0(sp)
}
    80005224:	01813083          	ld	ra,24(sp)
    80005228:	01013403          	ld	s0,16(sp)
    8000522c:	00813483          	ld	s1,8(sp)
    80005230:	02010113          	addi	sp,sp,32
    80005234:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005238:	ffffc097          	auipc	ra,0xffffc
    8000523c:	3a8080e7          	jalr	936(ra) # 800015e0 <thread_dispatch>
    80005240:	fc1ff06f          	j	80005200 <_ZL9fibonaccim+0x30>

0000000080005244 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005244:	fe010113          	addi	sp,sp,-32
    80005248:	00113c23          	sd	ra,24(sp)
    8000524c:	00813823          	sd	s0,16(sp)
    80005250:	00913423          	sd	s1,8(sp)
    80005254:	01213023          	sd	s2,0(sp)
    80005258:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000525c:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80005260:	0400006f          	j	800052a0 <_ZL11workerBodyDPv+0x5c>
        printString("D: i="); printInt(i); printString("\n");
    80005264:	00005517          	auipc	a0,0x5
    80005268:	ffc50513          	addi	a0,a0,-4 # 8000a260 <CONSOLE_STATUS+0x240>
    8000526c:	00002097          	auipc	ra,0x2
    80005270:	24c080e7          	jalr	588(ra) # 800074b8 <_Z11printStringPKc>
    80005274:	00000613          	li	a2,0
    80005278:	00a00593          	li	a1,10
    8000527c:	00048513          	mv	a0,s1
    80005280:	00002097          	auipc	ra,0x2
    80005284:	3e8080e7          	jalr	1000(ra) # 80007668 <_Z8printIntiii>
    80005288:	00005517          	auipc	a0,0x5
    8000528c:	f7850513          	addi	a0,a0,-136 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80005290:	00002097          	auipc	ra,0x2
    80005294:	228080e7          	jalr	552(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005298:	0014849b          	addiw	s1,s1,1
    8000529c:	0ff4f493          	zext.b	s1,s1
    800052a0:	00c00793          	li	a5,12
    800052a4:	fc97f0e3          	bgeu	a5,s1,80005264 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800052a8:	00005517          	auipc	a0,0x5
    800052ac:	fc050513          	addi	a0,a0,-64 # 8000a268 <CONSOLE_STATUS+0x248>
    800052b0:	00002097          	auipc	ra,0x2
    800052b4:	208080e7          	jalr	520(ra) # 800074b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800052b8:	00500313          	li	t1,5
    thread_dispatch();
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	324080e7          	jalr	804(ra) # 800015e0 <thread_dispatch>

    uint64 result = fibonacci(16);
    800052c4:	01000513          	li	a0,16
    800052c8:	00000097          	auipc	ra,0x0
    800052cc:	f08080e7          	jalr	-248(ra) # 800051d0 <_ZL9fibonaccim>
    800052d0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052d4:	00005517          	auipc	a0,0x5
    800052d8:	fa450513          	addi	a0,a0,-92 # 8000a278 <CONSOLE_STATUS+0x258>
    800052dc:	00002097          	auipc	ra,0x2
    800052e0:	1dc080e7          	jalr	476(ra) # 800074b8 <_Z11printStringPKc>
    800052e4:	00000613          	li	a2,0
    800052e8:	00a00593          	li	a1,10
    800052ec:	0009051b          	sext.w	a0,s2
    800052f0:	00002097          	auipc	ra,0x2
    800052f4:	378080e7          	jalr	888(ra) # 80007668 <_Z8printIntiii>
    800052f8:	00005517          	auipc	a0,0x5
    800052fc:	f0850513          	addi	a0,a0,-248 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80005300:	00002097          	auipc	ra,0x2
    80005304:	1b8080e7          	jalr	440(ra) # 800074b8 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80005308:	0400006f          	j	80005348 <_ZL11workerBodyDPv+0x104>
        printString("D: i="); printInt(i); printString("\n");
    8000530c:	00005517          	auipc	a0,0x5
    80005310:	f5450513          	addi	a0,a0,-172 # 8000a260 <CONSOLE_STATUS+0x240>
    80005314:	00002097          	auipc	ra,0x2
    80005318:	1a4080e7          	jalr	420(ra) # 800074b8 <_Z11printStringPKc>
    8000531c:	00000613          	li	a2,0
    80005320:	00a00593          	li	a1,10
    80005324:	00048513          	mv	a0,s1
    80005328:	00002097          	auipc	ra,0x2
    8000532c:	340080e7          	jalr	832(ra) # 80007668 <_Z8printIntiii>
    80005330:	00005517          	auipc	a0,0x5
    80005334:	ed050513          	addi	a0,a0,-304 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80005338:	00002097          	auipc	ra,0x2
    8000533c:	180080e7          	jalr	384(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005340:	0014849b          	addiw	s1,s1,1
    80005344:	0ff4f493          	zext.b	s1,s1
    80005348:	00f00793          	li	a5,15
    8000534c:	fc97f0e3          	bgeu	a5,s1,8000530c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005350:	00005517          	auipc	a0,0x5
    80005354:	f3850513          	addi	a0,a0,-200 # 8000a288 <CONSOLE_STATUS+0x268>
    80005358:	00002097          	auipc	ra,0x2
    8000535c:	160080e7          	jalr	352(ra) # 800074b8 <_Z11printStringPKc>
    finishedD = true;
    80005360:	00100793          	li	a5,1
    80005364:	0000d717          	auipc	a4,0xd
    80005368:	daf70a23          	sb	a5,-588(a4) # 80012118 <_ZL9finishedD>
    thread_dispatch();
    8000536c:	ffffc097          	auipc	ra,0xffffc
    80005370:	274080e7          	jalr	628(ra) # 800015e0 <thread_dispatch>
}
    80005374:	01813083          	ld	ra,24(sp)
    80005378:	01013403          	ld	s0,16(sp)
    8000537c:	00813483          	ld	s1,8(sp)
    80005380:	00013903          	ld	s2,0(sp)
    80005384:	02010113          	addi	sp,sp,32
    80005388:	00008067          	ret

000000008000538c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000538c:	fe010113          	addi	sp,sp,-32
    80005390:	00113c23          	sd	ra,24(sp)
    80005394:	00813823          	sd	s0,16(sp)
    80005398:	00913423          	sd	s1,8(sp)
    8000539c:	01213023          	sd	s2,0(sp)
    800053a0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800053a4:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800053a8:	0400006f          	j	800053e8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800053ac:	00005517          	auipc	a0,0x5
    800053b0:	e8450513          	addi	a0,a0,-380 # 8000a230 <CONSOLE_STATUS+0x210>
    800053b4:	00002097          	auipc	ra,0x2
    800053b8:	104080e7          	jalr	260(ra) # 800074b8 <_Z11printStringPKc>
    800053bc:	00000613          	li	a2,0
    800053c0:	00a00593          	li	a1,10
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00002097          	auipc	ra,0x2
    800053cc:	2a0080e7          	jalr	672(ra) # 80007668 <_Z8printIntiii>
    800053d0:	00005517          	auipc	a0,0x5
    800053d4:	e3050513          	addi	a0,a0,-464 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800053d8:	00002097          	auipc	ra,0x2
    800053dc:	0e0080e7          	jalr	224(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053e0:	0014849b          	addiw	s1,s1,1
    800053e4:	0ff4f493          	zext.b	s1,s1
    800053e8:	00200793          	li	a5,2
    800053ec:	fc97f0e3          	bgeu	a5,s1,800053ac <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800053f0:	00005517          	auipc	a0,0x5
    800053f4:	e4850513          	addi	a0,a0,-440 # 8000a238 <CONSOLE_STATUS+0x218>
    800053f8:	00002097          	auipc	ra,0x2
    800053fc:	0c0080e7          	jalr	192(ra) # 800074b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005400:	00700313          	li	t1,7
    thread_dispatch();
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	1dc080e7          	jalr	476(ra) # 800015e0 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000540c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005410:	00005517          	auipc	a0,0x5
    80005414:	e3850513          	addi	a0,a0,-456 # 8000a248 <CONSOLE_STATUS+0x228>
    80005418:	00002097          	auipc	ra,0x2
    8000541c:	0a0080e7          	jalr	160(ra) # 800074b8 <_Z11printStringPKc>
    80005420:	00000613          	li	a2,0
    80005424:	00a00593          	li	a1,10
    80005428:	0009051b          	sext.w	a0,s2
    8000542c:	00002097          	auipc	ra,0x2
    80005430:	23c080e7          	jalr	572(ra) # 80007668 <_Z8printIntiii>
    80005434:	00005517          	auipc	a0,0x5
    80005438:	dcc50513          	addi	a0,a0,-564 # 8000a200 <CONSOLE_STATUS+0x1e0>
    8000543c:	00002097          	auipc	ra,0x2
    80005440:	07c080e7          	jalr	124(ra) # 800074b8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005444:	00c00513          	li	a0,12
    80005448:	00000097          	auipc	ra,0x0
    8000544c:	d88080e7          	jalr	-632(ra) # 800051d0 <_ZL9fibonaccim>
    80005450:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005454:	00005517          	auipc	a0,0x5
    80005458:	dfc50513          	addi	a0,a0,-516 # 8000a250 <CONSOLE_STATUS+0x230>
    8000545c:	00002097          	auipc	ra,0x2
    80005460:	05c080e7          	jalr	92(ra) # 800074b8 <_Z11printStringPKc>
    80005464:	00000613          	li	a2,0
    80005468:	00a00593          	li	a1,10
    8000546c:	0009051b          	sext.w	a0,s2
    80005470:	00002097          	auipc	ra,0x2
    80005474:	1f8080e7          	jalr	504(ra) # 80007668 <_Z8printIntiii>
    80005478:	00005517          	auipc	a0,0x5
    8000547c:	d8850513          	addi	a0,a0,-632 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80005480:	00002097          	auipc	ra,0x2
    80005484:	038080e7          	jalr	56(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005488:	0400006f          	j	800054c8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000548c:	00005517          	auipc	a0,0x5
    80005490:	da450513          	addi	a0,a0,-604 # 8000a230 <CONSOLE_STATUS+0x210>
    80005494:	00002097          	auipc	ra,0x2
    80005498:	024080e7          	jalr	36(ra) # 800074b8 <_Z11printStringPKc>
    8000549c:	00000613          	li	a2,0
    800054a0:	00a00593          	li	a1,10
    800054a4:	00048513          	mv	a0,s1
    800054a8:	00002097          	auipc	ra,0x2
    800054ac:	1c0080e7          	jalr	448(ra) # 80007668 <_Z8printIntiii>
    800054b0:	00005517          	auipc	a0,0x5
    800054b4:	d5050513          	addi	a0,a0,-688 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800054b8:	00002097          	auipc	ra,0x2
    800054bc:	000080e7          	jalr	ra # 800074b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800054c0:	0014849b          	addiw	s1,s1,1
    800054c4:	0ff4f493          	zext.b	s1,s1
    800054c8:	00500793          	li	a5,5
    800054cc:	fc97f0e3          	bgeu	a5,s1,8000548c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800054d0:	00005517          	auipc	a0,0x5
    800054d4:	d3850513          	addi	a0,a0,-712 # 8000a208 <CONSOLE_STATUS+0x1e8>
    800054d8:	00002097          	auipc	ra,0x2
    800054dc:	fe0080e7          	jalr	-32(ra) # 800074b8 <_Z11printStringPKc>
    finishedC = true;
    800054e0:	00100793          	li	a5,1
    800054e4:	0000d717          	auipc	a4,0xd
    800054e8:	c2f70aa3          	sb	a5,-971(a4) # 80012119 <_ZL9finishedC>
    thread_dispatch();
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	0f4080e7          	jalr	244(ra) # 800015e0 <thread_dispatch>
}
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00813483          	ld	s1,8(sp)
    80005500:	00013903          	ld	s2,0(sp)
    80005504:	02010113          	addi	sp,sp,32
    80005508:	00008067          	ret

000000008000550c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000550c:	fe010113          	addi	sp,sp,-32
    80005510:	00113c23          	sd	ra,24(sp)
    80005514:	00813823          	sd	s0,16(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	01213023          	sd	s2,0(sp)
    80005520:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005524:	00000913          	li	s2,0
    80005528:	0400006f          	j	80005568 <_ZL11workerBodyBPv+0x5c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000552c:	00170713          	addi	a4,a4,1
    80005530:	000077b7          	lui	a5,0x7
    80005534:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005538:	fee7fae3          	bgeu	a5,a4,8000552c <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    8000553c:	ffffc097          	auipc	ra,0xffffc
    80005540:	0a4080e7          	jalr	164(ra) # 800015e0 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005544:	00148493          	addi	s1,s1,1
    80005548:	000027b7          	lui	a5,0x2
    8000554c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005550:	0097e663          	bltu	a5,s1,8000555c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005554:	00000713          	li	a4,0
    80005558:	fd9ff06f          	j	80005530 <_ZL11workerBodyBPv+0x24>
        if (i == 10) {
    8000555c:	00a00793          	li	a5,10
    80005560:	04f90663          	beq	s2,a5,800055ac <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005564:	00190913          	addi	s2,s2,1
    80005568:	00f00793          	li	a5,15
    8000556c:	0527e463          	bltu	a5,s2,800055b4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005570:	00005517          	auipc	a0,0x5
    80005574:	ca850513          	addi	a0,a0,-856 # 8000a218 <CONSOLE_STATUS+0x1f8>
    80005578:	00002097          	auipc	ra,0x2
    8000557c:	f40080e7          	jalr	-192(ra) # 800074b8 <_Z11printStringPKc>
    80005580:	00000613          	li	a2,0
    80005584:	00a00593          	li	a1,10
    80005588:	0009051b          	sext.w	a0,s2
    8000558c:	00002097          	auipc	ra,0x2
    80005590:	0dc080e7          	jalr	220(ra) # 80007668 <_Z8printIntiii>
    80005594:	00005517          	auipc	a0,0x5
    80005598:	c6c50513          	addi	a0,a0,-916 # 8000a200 <CONSOLE_STATUS+0x1e0>
    8000559c:	00002097          	auipc	ra,0x2
    800055a0:	f1c080e7          	jalr	-228(ra) # 800074b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800055a4:	00000493          	li	s1,0
    800055a8:	fa1ff06f          	j	80005548 <_ZL11workerBodyBPv+0x3c>
            asm volatile("csrr t6, sepc");
    800055ac:	14102ff3          	csrr	t6,sepc
    800055b0:	fb5ff06f          	j	80005564 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800055b4:	00005517          	auipc	a0,0x5
    800055b8:	c6c50513          	addi	a0,a0,-916 # 8000a220 <CONSOLE_STATUS+0x200>
    800055bc:	00002097          	auipc	ra,0x2
    800055c0:	efc080e7          	jalr	-260(ra) # 800074b8 <_Z11printStringPKc>
    finishedB = true;
    800055c4:	00100793          	li	a5,1
    800055c8:	0000d717          	auipc	a4,0xd
    800055cc:	b4f70923          	sb	a5,-1198(a4) # 8001211a <_ZL9finishedB>
    thread_dispatch();
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	010080e7          	jalr	16(ra) # 800015e0 <thread_dispatch>
}
    800055d8:	01813083          	ld	ra,24(sp)
    800055dc:	01013403          	ld	s0,16(sp)
    800055e0:	00813483          	ld	s1,8(sp)
    800055e4:	00013903          	ld	s2,0(sp)
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret

00000000800055f0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800055f0:	fe010113          	addi	sp,sp,-32
    800055f4:	00113c23          	sd	ra,24(sp)
    800055f8:	00813823          	sd	s0,16(sp)
    800055fc:	00913423          	sd	s1,8(sp)
    80005600:	01213023          	sd	s2,0(sp)
    80005604:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005608:	00000913          	li	s2,0
    8000560c:	0380006f          	j	80005644 <_ZL11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005610:	00170713          	addi	a4,a4,1
    80005614:	000077b7          	lui	a5,0x7
    80005618:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000561c:	fee7fae3          	bgeu	a5,a4,80005610 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	fc0080e7          	jalr	-64(ra) # 800015e0 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005628:	00148493          	addi	s1,s1,1
    8000562c:	000027b7          	lui	a5,0x2
    80005630:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005634:	0097e663          	bltu	a5,s1,80005640 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005638:	00000713          	li	a4,0
    8000563c:	fd9ff06f          	j	80005614 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80005640:	00190913          	addi	s2,s2,1
    80005644:	00900793          	li	a5,9
    80005648:	0527e063          	bltu	a5,s2,80005688 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000564c:	00005517          	auipc	a0,0x5
    80005650:	bac50513          	addi	a0,a0,-1108 # 8000a1f8 <CONSOLE_STATUS+0x1d8>
    80005654:	00002097          	auipc	ra,0x2
    80005658:	e64080e7          	jalr	-412(ra) # 800074b8 <_Z11printStringPKc>
    8000565c:	00000613          	li	a2,0
    80005660:	00a00593          	li	a1,10
    80005664:	0009051b          	sext.w	a0,s2
    80005668:	00002097          	auipc	ra,0x2
    8000566c:	000080e7          	jalr	ra # 80007668 <_Z8printIntiii>
    80005670:	00005517          	auipc	a0,0x5
    80005674:	b9050513          	addi	a0,a0,-1136 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80005678:	00002097          	auipc	ra,0x2
    8000567c:	e40080e7          	jalr	-448(ra) # 800074b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005680:	00000493          	li	s1,0
    80005684:	fa9ff06f          	j	8000562c <_ZL11workerBodyAPv+0x3c>
    printString("A finished!\n");
    80005688:	00005517          	auipc	a0,0x5
    8000568c:	b8050513          	addi	a0,a0,-1152 # 8000a208 <CONSOLE_STATUS+0x1e8>
    80005690:	00002097          	auipc	ra,0x2
    80005694:	e28080e7          	jalr	-472(ra) # 800074b8 <_Z11printStringPKc>
    finishedA = true;
    80005698:	00100793          	li	a5,1
    8000569c:	0000d717          	auipc	a4,0xd
    800056a0:	a6f70fa3          	sb	a5,-1409(a4) # 8001211b <_ZL9finishedA>
}
    800056a4:	01813083          	ld	ra,24(sp)
    800056a8:	01013403          	ld	s0,16(sp)
    800056ac:	00813483          	ld	s1,8(sp)
    800056b0:	00013903          	ld	s2,0(sp)
    800056b4:	02010113          	addi	sp,sp,32
    800056b8:	00008067          	ret

00000000800056bc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800056bc:	fd010113          	addi	sp,sp,-48
    800056c0:	02113423          	sd	ra,40(sp)
    800056c4:	02813023          	sd	s0,32(sp)
    800056c8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800056cc:	00000613          	li	a2,0
    800056d0:	00000597          	auipc	a1,0x0
    800056d4:	f2058593          	addi	a1,a1,-224 # 800055f0 <_ZL11workerBodyAPv>
    800056d8:	fd040513          	addi	a0,s0,-48
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	e7c080e7          	jalr	-388(ra) # 80001558 <thread_create>
    printString("ThreadA created\n");
    800056e4:	00005517          	auipc	a0,0x5
    800056e8:	bb450513          	addi	a0,a0,-1100 # 8000a298 <CONSOLE_STATUS+0x278>
    800056ec:	00002097          	auipc	ra,0x2
    800056f0:	dcc080e7          	jalr	-564(ra) # 800074b8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800056f4:	00000613          	li	a2,0
    800056f8:	00000597          	auipc	a1,0x0
    800056fc:	e1458593          	addi	a1,a1,-492 # 8000550c <_ZL11workerBodyBPv>
    80005700:	fd840513          	addi	a0,s0,-40
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	e54080e7          	jalr	-428(ra) # 80001558 <thread_create>
    printString("ThreadB created\n");
    8000570c:	00005517          	auipc	a0,0x5
    80005710:	ba450513          	addi	a0,a0,-1116 # 8000a2b0 <CONSOLE_STATUS+0x290>
    80005714:	00002097          	auipc	ra,0x2
    80005718:	da4080e7          	jalr	-604(ra) # 800074b8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000571c:	00000613          	li	a2,0
    80005720:	00000597          	auipc	a1,0x0
    80005724:	c6c58593          	addi	a1,a1,-916 # 8000538c <_ZL11workerBodyCPv>
    80005728:	fe040513          	addi	a0,s0,-32
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	e2c080e7          	jalr	-468(ra) # 80001558 <thread_create>
    printString("ThreadC created\n");
    80005734:	00005517          	auipc	a0,0x5
    80005738:	b9450513          	addi	a0,a0,-1132 # 8000a2c8 <CONSOLE_STATUS+0x2a8>
    8000573c:	00002097          	auipc	ra,0x2
    80005740:	d7c080e7          	jalr	-644(ra) # 800074b8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005744:	00000613          	li	a2,0
    80005748:	00000597          	auipc	a1,0x0
    8000574c:	afc58593          	addi	a1,a1,-1284 # 80005244 <_ZL11workerBodyDPv>
    80005750:	fe840513          	addi	a0,s0,-24
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	e04080e7          	jalr	-508(ra) # 80001558 <thread_create>
    printString("ThreadD created\n");
    8000575c:	00005517          	auipc	a0,0x5
    80005760:	b8450513          	addi	a0,a0,-1148 # 8000a2e0 <CONSOLE_STATUS+0x2c0>
    80005764:	00002097          	auipc	ra,0x2
    80005768:	d54080e7          	jalr	-684(ra) # 800074b8 <_Z11printStringPKc>
    8000576c:	00c0006f          	j	80005778 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005770:	ffffc097          	auipc	ra,0xffffc
    80005774:	e70080e7          	jalr	-400(ra) # 800015e0 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005778:	0000d797          	auipc	a5,0xd
    8000577c:	9a37c783          	lbu	a5,-1629(a5) # 8001211b <_ZL9finishedA>
    80005780:	fe0788e3          	beqz	a5,80005770 <_Z16System_Mode_testv+0xb4>
    80005784:	0000d797          	auipc	a5,0xd
    80005788:	9967c783          	lbu	a5,-1642(a5) # 8001211a <_ZL9finishedB>
    8000578c:	fe0782e3          	beqz	a5,80005770 <_Z16System_Mode_testv+0xb4>
    80005790:	0000d797          	auipc	a5,0xd
    80005794:	9897c783          	lbu	a5,-1655(a5) # 80012119 <_ZL9finishedC>
    80005798:	fc078ce3          	beqz	a5,80005770 <_Z16System_Mode_testv+0xb4>
    8000579c:	0000d797          	auipc	a5,0xd
    800057a0:	97c7c783          	lbu	a5,-1668(a5) # 80012118 <_ZL9finishedD>
    800057a4:	fc0786e3          	beqz	a5,80005770 <_Z16System_Mode_testv+0xb4>
    }
    printString("Finished");
    800057a8:	00005517          	auipc	a0,0x5
    800057ac:	c3850513          	addi	a0,a0,-968 # 8000a3e0 <CONSOLE_STATUS+0x3c0>
    800057b0:	00002097          	auipc	ra,0x2
    800057b4:	d08080e7          	jalr	-760(ra) # 800074b8 <_Z11printStringPKc>
}
    800057b8:	02813083          	ld	ra,40(sp)
    800057bc:	02013403          	ld	s0,32(sp)
    800057c0:	03010113          	addi	sp,sp,48
    800057c4:	00008067          	ret

00000000800057c8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800057c8:	fe010113          	addi	sp,sp,-32
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	01213023          	sd	s2,0(sp)
    800057dc:	02010413          	addi	s0,sp,32
    800057e0:	00050493          	mv	s1,a0
    800057e4:	00058913          	mv	s2,a1
    800057e8:	0015879b          	addiw	a5,a1,1
    800057ec:	0007851b          	sext.w	a0,a5
    800057f0:	00f4a023          	sw	a5,0(s1)
    800057f4:	0004a823          	sw	zero,16(s1)
    800057f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057fc:	00251513          	slli	a0,a0,0x2
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	be0080e7          	jalr	-1056(ra) # 800013e0 <mem_alloc>
    80005808:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000580c:	00000593          	li	a1,0
    80005810:	02048513          	addi	a0,s1,32
    80005814:	ffffc097          	auipc	ra,0xffffc
    80005818:	e0c080e7          	jalr	-500(ra) # 80001620 <sem_open>
    sem_open(&spaceAvailable, _cap);
    8000581c:	00090593          	mv	a1,s2
    80005820:	01848513          	addi	a0,s1,24
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	dfc080e7          	jalr	-516(ra) # 80001620 <sem_open>
    sem_open(&mutexHead, 1);
    8000582c:	00100593          	li	a1,1
    80005830:	02848513          	addi	a0,s1,40
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	dec080e7          	jalr	-532(ra) # 80001620 <sem_open>
    sem_open(&mutexTail, 1);
    8000583c:	00100593          	li	a1,1
    80005840:	03048513          	addi	a0,s1,48
    80005844:	ffffc097          	auipc	ra,0xffffc
    80005848:	ddc080e7          	jalr	-548(ra) # 80001620 <sem_open>
}
    8000584c:	01813083          	ld	ra,24(sp)
    80005850:	01013403          	ld	s0,16(sp)
    80005854:	00813483          	ld	s1,8(sp)
    80005858:	00013903          	ld	s2,0(sp)
    8000585c:	02010113          	addi	sp,sp,32
    80005860:	00008067          	ret

0000000080005864 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005864:	fe010113          	addi	sp,sp,-32
    80005868:	00113c23          	sd	ra,24(sp)
    8000586c:	00813823          	sd	s0,16(sp)
    80005870:	00913423          	sd	s1,8(sp)
    80005874:	01213023          	sd	s2,0(sp)
    80005878:	02010413          	addi	s0,sp,32
    8000587c:	00050493          	mv	s1,a0
    80005880:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005884:	01853503          	ld	a0,24(a0)
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	e38080e7          	jalr	-456(ra) # 800016c0 <sem_wait>

    sem_wait(mutexTail);
    80005890:	0304b503          	ld	a0,48(s1)
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	e2c080e7          	jalr	-468(ra) # 800016c0 <sem_wait>
    buffer[tail] = val;
    8000589c:	0084b783          	ld	a5,8(s1)
    800058a0:	0144a703          	lw	a4,20(s1)
    800058a4:	00271713          	slli	a4,a4,0x2
    800058a8:	00e787b3          	add	a5,a5,a4
    800058ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058b0:	0144a783          	lw	a5,20(s1)
    800058b4:	0017879b          	addiw	a5,a5,1
    800058b8:	0004a703          	lw	a4,0(s1)
    800058bc:	02e7e7bb          	remw	a5,a5,a4
    800058c0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800058c4:	0304b503          	ld	a0,48(s1)
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	e48080e7          	jalr	-440(ra) # 80001710 <sem_signal>

    sem_signal(itemAvailable);
    800058d0:	0204b503          	ld	a0,32(s1)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	e3c080e7          	jalr	-452(ra) # 80001710 <sem_signal>

}
    800058dc:	01813083          	ld	ra,24(sp)
    800058e0:	01013403          	ld	s0,16(sp)
    800058e4:	00813483          	ld	s1,8(sp)
    800058e8:	00013903          	ld	s2,0(sp)
    800058ec:	02010113          	addi	sp,sp,32
    800058f0:	00008067          	ret

00000000800058f4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800058f4:	fe010113          	addi	sp,sp,-32
    800058f8:	00113c23          	sd	ra,24(sp)
    800058fc:	00813823          	sd	s0,16(sp)
    80005900:	00913423          	sd	s1,8(sp)
    80005904:	01213023          	sd	s2,0(sp)
    80005908:	02010413          	addi	s0,sp,32
    8000590c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005910:	02053503          	ld	a0,32(a0)
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	dac080e7          	jalr	-596(ra) # 800016c0 <sem_wait>

    sem_wait(mutexHead);
    8000591c:	0284b503          	ld	a0,40(s1)
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	da0080e7          	jalr	-608(ra) # 800016c0 <sem_wait>

    int ret = buffer[head];
    80005928:	0084b703          	ld	a4,8(s1)
    8000592c:	0104a783          	lw	a5,16(s1)
    80005930:	00279693          	slli	a3,a5,0x2
    80005934:	00d70733          	add	a4,a4,a3
    80005938:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000593c:	0017879b          	addiw	a5,a5,1
    80005940:	0004a703          	lw	a4,0(s1)
    80005944:	02e7e7bb          	remw	a5,a5,a4
    80005948:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000594c:	0284b503          	ld	a0,40(s1)
    80005950:	ffffc097          	auipc	ra,0xffffc
    80005954:	dc0080e7          	jalr	-576(ra) # 80001710 <sem_signal>

    sem_signal(spaceAvailable);
    80005958:	0184b503          	ld	a0,24(s1)
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	db4080e7          	jalr	-588(ra) # 80001710 <sem_signal>

    return ret;
}
    80005964:	00090513          	mv	a0,s2
    80005968:	01813083          	ld	ra,24(sp)
    8000596c:	01013403          	ld	s0,16(sp)
    80005970:	00813483          	ld	s1,8(sp)
    80005974:	00013903          	ld	s2,0(sp)
    80005978:	02010113          	addi	sp,sp,32
    8000597c:	00008067          	ret

0000000080005980 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005980:	fe010113          	addi	sp,sp,-32
    80005984:	00113c23          	sd	ra,24(sp)
    80005988:	00813823          	sd	s0,16(sp)
    8000598c:	00913423          	sd	s1,8(sp)
    80005990:	01213023          	sd	s2,0(sp)
    80005994:	02010413          	addi	s0,sp,32
    80005998:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000599c:	02853503          	ld	a0,40(a0)
    800059a0:	ffffc097          	auipc	ra,0xffffc
    800059a4:	d20080e7          	jalr	-736(ra) # 800016c0 <sem_wait>
    sem_wait(mutexTail);
    800059a8:	0304b503          	ld	a0,48(s1)
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	d14080e7          	jalr	-748(ra) # 800016c0 <sem_wait>

    if (tail >= head) {
    800059b4:	0144a783          	lw	a5,20(s1)
    800059b8:	0104a703          	lw	a4,16(s1)
    800059bc:	02e7ce63          	blt	a5,a4,800059f8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800059c0:	40e7893b          	subw	s2,a5,a4
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800059c4:	0304b503          	ld	a0,48(s1)
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	d48080e7          	jalr	-696(ra) # 80001710 <sem_signal>
    sem_signal(mutexHead);
    800059d0:	0284b503          	ld	a0,40(s1)
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	d3c080e7          	jalr	-708(ra) # 80001710 <sem_signal>

    return ret;
}
    800059dc:	00090513          	mv	a0,s2
    800059e0:	01813083          	ld	ra,24(sp)
    800059e4:	01013403          	ld	s0,16(sp)
    800059e8:	00813483          	ld	s1,8(sp)
    800059ec:	00013903          	ld	s2,0(sp)
    800059f0:	02010113          	addi	sp,sp,32
    800059f4:	00008067          	ret
        ret = cap - head + tail;
    800059f8:	0004a683          	lw	a3,0(s1)
    800059fc:	40e6873b          	subw	a4,a3,a4
    80005a00:	00f7093b          	addw	s2,a4,a5
    80005a04:	fc1ff06f          	j	800059c4 <_ZN6Buffer6getCntEv+0x44>

0000000080005a08 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005a08:	fe010113          	addi	sp,sp,-32
    80005a0c:	00113c23          	sd	ra,24(sp)
    80005a10:	00813823          	sd	s0,16(sp)
    80005a14:	00913423          	sd	s1,8(sp)
    80005a18:	02010413          	addi	s0,sp,32
    80005a1c:	00050493          	mv	s1,a0
    putc('\n');
    80005a20:	00a00513          	li	a0,10
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	f04080e7          	jalr	-252(ra) # 80001928 <putc>
    printString("Buffer deleted!\n");
    80005a2c:	00005517          	auipc	a0,0x5
    80005a30:	9c450513          	addi	a0,a0,-1596 # 8000a3f0 <CONSOLE_STATUS+0x3d0>
    80005a34:	00002097          	auipc	ra,0x2
    80005a38:	a84080e7          	jalr	-1404(ra) # 800074b8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005a3c:	0340006f          	j	80005a70 <_ZN6BufferD1Ev+0x68>
        char ch = buffer[head];
    80005a40:	0084b783          	ld	a5,8(s1)
    80005a44:	0104a703          	lw	a4,16(s1)
    80005a48:	00271713          	slli	a4,a4,0x2
    80005a4c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005a50:	0007c503          	lbu	a0,0(a5)
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	ed4080e7          	jalr	-300(ra) # 80001928 <putc>
        head = (head + 1) % cap;
    80005a5c:	0104a783          	lw	a5,16(s1)
    80005a60:	0017879b          	addiw	a5,a5,1
    80005a64:	0004a703          	lw	a4,0(s1)
    80005a68:	02e7e7bb          	remw	a5,a5,a4
    80005a6c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005a70:	00048513          	mv	a0,s1
    80005a74:	00000097          	auipc	ra,0x0
    80005a78:	f0c080e7          	jalr	-244(ra) # 80005980 <_ZN6Buffer6getCntEv>
    80005a7c:	fca042e3          	bgtz	a0,80005a40 <_ZN6BufferD1Ev+0x38>
    putc('!');
    80005a80:	02100513          	li	a0,33
    80005a84:	ffffc097          	auipc	ra,0xffffc
    80005a88:	ea4080e7          	jalr	-348(ra) # 80001928 <putc>
    putc('\n');
    80005a8c:	00a00513          	li	a0,10
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	e98080e7          	jalr	-360(ra) # 80001928 <putc>
    mem_free(buffer);
    80005a98:	0084b503          	ld	a0,8(s1)
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	a24080e7          	jalr	-1500(ra) # 800014c0 <mem_free>
    sem_close(itemAvailable);
    80005aa4:	0204b503          	ld	a0,32(s1)
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	bc8080e7          	jalr	-1080(ra) # 80001670 <sem_close>
    sem_close(spaceAvailable);
    80005ab0:	0184b503          	ld	a0,24(s1)
    80005ab4:	ffffc097          	auipc	ra,0xffffc
    80005ab8:	bbc080e7          	jalr	-1092(ra) # 80001670 <sem_close>
    sem_close(mutexTail);
    80005abc:	0304b503          	ld	a0,48(s1)
    80005ac0:	ffffc097          	auipc	ra,0xffffc
    80005ac4:	bb0080e7          	jalr	-1104(ra) # 80001670 <sem_close>
    sem_close(mutexHead);
    80005ac8:	0284b503          	ld	a0,40(s1)
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	ba4080e7          	jalr	-1116(ra) # 80001670 <sem_close>
}
    80005ad4:	01813083          	ld	ra,24(sp)
    80005ad8:	01013403          	ld	s0,16(sp)
    80005adc:	00813483          	ld	s1,8(sp)
    80005ae0:	02010113          	addi	sp,sp,32
    80005ae4:	00008067          	ret

0000000080005ae8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005ae8:	fe010113          	addi	sp,sp,-32
    80005aec:	00113c23          	sd	ra,24(sp)
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00913423          	sd	s1,8(sp)
    80005af8:	01213023          	sd	s2,0(sp)
    80005afc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005b00:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005b04:	00600493          	li	s1,6
    while (--i > 0) {
    80005b08:	0440006f          	j	80005b4c <_ZL9sleepyRunPv+0x64>

        printString("Hello ");
    80005b0c:	00005517          	auipc	a0,0x5
    80005b10:	8fc50513          	addi	a0,a0,-1796 # 8000a408 <CONSOLE_STATUS+0x3e8>
    80005b14:	00002097          	auipc	ra,0x2
    80005b18:	9a4080e7          	jalr	-1628(ra) # 800074b8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005b1c:	00000613          	li	a2,0
    80005b20:	00a00593          	li	a1,10
    80005b24:	0009051b          	sext.w	a0,s2
    80005b28:	00002097          	auipc	ra,0x2
    80005b2c:	b40080e7          	jalr	-1216(ra) # 80007668 <_Z8printIntiii>
        printString(" !\n");
    80005b30:	00005517          	auipc	a0,0x5
    80005b34:	8e050513          	addi	a0,a0,-1824 # 8000a410 <CONSOLE_STATUS+0x3f0>
    80005b38:	00002097          	auipc	ra,0x2
    80005b3c:	980080e7          	jalr	-1664(ra) # 800074b8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005b40:	00090513          	mv	a0,s2
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	cdc080e7          	jalr	-804(ra) # 80001820 <time_sleep>
    while (--i > 0) {
    80005b4c:	fff4849b          	addiw	s1,s1,-1
    80005b50:	fa904ee3          	bgtz	s1,80005b0c <_ZL9sleepyRunPv+0x24>
    }
    finished[sleep_time/10-1] = true;
    80005b54:	00a00793          	li	a5,10
    80005b58:	02f95933          	divu	s2,s2,a5
    80005b5c:	fff90913          	addi	s2,s2,-1
    80005b60:	0000c797          	auipc	a5,0xc
    80005b64:	5c078793          	addi	a5,a5,1472 # 80012120 <_ZL8finished>
    80005b68:	012787b3          	add	a5,a5,s2
    80005b6c:	00100713          	li	a4,1
    80005b70:	00e78023          	sb	a4,0(a5)
}
    80005b74:	01813083          	ld	ra,24(sp)
    80005b78:	01013403          	ld	s0,16(sp)
    80005b7c:	00813483          	ld	s1,8(sp)
    80005b80:	00013903          	ld	s2,0(sp)
    80005b84:	02010113          	addi	sp,sp,32
    80005b88:	00008067          	ret

0000000080005b8c <_Z12testSleepingv>:

void testSleeping() {
    80005b8c:	fc010113          	addi	sp,sp,-64
    80005b90:	02113c23          	sd	ra,56(sp)
    80005b94:	02813823          	sd	s0,48(sp)
    80005b98:	02913423          	sd	s1,40(sp)
    80005b9c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ba0:	00a00793          	li	a5,10
    80005ba4:	fcf43823          	sd	a5,-48(s0)
    80005ba8:	01400793          	li	a5,20
    80005bac:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005bb0:	00000493          	li	s1,0
    80005bb4:	02c0006f          	j	80005be0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005bb8:	00349793          	slli	a5,s1,0x3
    80005bbc:	fd040613          	addi	a2,s0,-48
    80005bc0:	00f60633          	add	a2,a2,a5
    80005bc4:	00000597          	auipc	a1,0x0
    80005bc8:	f2458593          	addi	a1,a1,-220 # 80005ae8 <_ZL9sleepyRunPv>
    80005bcc:	fc040513          	addi	a0,s0,-64
    80005bd0:	00f50533          	add	a0,a0,a5
    80005bd4:	ffffc097          	auipc	ra,0xffffc
    80005bd8:	984080e7          	jalr	-1660(ra) # 80001558 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005bdc:	0014849b          	addiw	s1,s1,1
    80005be0:	00100793          	li	a5,1
    80005be4:	fc97dae3          	bge	a5,s1,80005bb8 <_Z12testSleepingv+0x2c>
    80005be8:	0140006f          	j	80005bfc <_Z12testSleepingv+0x70>
    }

    while (!(finished[0] && finished[1])) {}
    80005bec:	0000c717          	auipc	a4,0xc
    80005bf0:	53574703          	lbu	a4,1333(a4) # 80012121 <_ZL8finished+0x1>
    80005bf4:	00071e63          	bnez	a4,80005c10 <_Z12testSleepingv+0x84>
    80005bf8:	02078063          	beqz	a5,80005c18 <_Z12testSleepingv+0x8c>
    80005bfc:	0000c797          	auipc	a5,0xc
    80005c00:	5247c783          	lbu	a5,1316(a5) # 80012120 <_ZL8finished>
    80005c04:	fe0794e3          	bnez	a5,80005bec <_Z12testSleepingv+0x60>
    80005c08:	00100793          	li	a5,1
    80005c0c:	fedff06f          	j	80005bf8 <_Z12testSleepingv+0x6c>
    80005c10:	00000793          	li	a5,0
    80005c14:	fe5ff06f          	j	80005bf8 <_Z12testSleepingv+0x6c>
}
    80005c18:	03813083          	ld	ra,56(sp)
    80005c1c:	03013403          	ld	s0,48(sp)
    80005c20:	02813483          	ld	s1,40(sp)
    80005c24:	04010113          	addi	sp,sp,64
    80005c28:	00008067          	ret

0000000080005c2c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c2c:	fd010113          	addi	sp,sp,-48
    80005c30:	02113423          	sd	ra,40(sp)
    80005c34:	02813023          	sd	s0,32(sp)
    80005c38:	00913c23          	sd	s1,24(sp)
    80005c3c:	01213823          	sd	s2,16(sp)
    80005c40:	01313423          	sd	s3,8(sp)
    80005c44:	03010413          	addi	s0,sp,48
    80005c48:	00050493          	mv	s1,a0
    80005c4c:	00058913          	mv	s2,a1
    80005c50:	0015879b          	addiw	a5,a1,1
    80005c54:	0007851b          	sext.w	a0,a5
    80005c58:	00f4a023          	sw	a5,0(s1)
    80005c5c:	0004a823          	sw	zero,16(s1)
    80005c60:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c64:	00251513          	slli	a0,a0,0x2
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	778080e7          	jalr	1912(ra) # 800013e0 <mem_alloc>
    80005c70:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c74:	01000513          	li	a0,16
    80005c78:	ffffe097          	auipc	ra,0xffffe
    80005c7c:	e84080e7          	jalr	-380(ra) # 80003afc <_Znwm>
    80005c80:	00050993          	mv	s3,a0
    80005c84:	00000593          	li	a1,0
    80005c88:	ffffe097          	auipc	ra,0xffffe
    80005c8c:	15c080e7          	jalr	348(ra) # 80003de4 <_ZN9SemaphoreC1Ei>
    80005c90:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c94:	01000513          	li	a0,16
    80005c98:	ffffe097          	auipc	ra,0xffffe
    80005c9c:	e64080e7          	jalr	-412(ra) # 80003afc <_Znwm>
    80005ca0:	00050993          	mv	s3,a0
    80005ca4:	00090593          	mv	a1,s2
    80005ca8:	ffffe097          	auipc	ra,0xffffe
    80005cac:	13c080e7          	jalr	316(ra) # 80003de4 <_ZN9SemaphoreC1Ei>
    80005cb0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005cb4:	01000513          	li	a0,16
    80005cb8:	ffffe097          	auipc	ra,0xffffe
    80005cbc:	e44080e7          	jalr	-444(ra) # 80003afc <_Znwm>
    80005cc0:	00050913          	mv	s2,a0
    80005cc4:	00100593          	li	a1,1
    80005cc8:	ffffe097          	auipc	ra,0xffffe
    80005ccc:	11c080e7          	jalr	284(ra) # 80003de4 <_ZN9SemaphoreC1Ei>
    80005cd0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005cd4:	01000513          	li	a0,16
    80005cd8:	ffffe097          	auipc	ra,0xffffe
    80005cdc:	e24080e7          	jalr	-476(ra) # 80003afc <_Znwm>
    80005ce0:	00050913          	mv	s2,a0
    80005ce4:	00100593          	li	a1,1
    80005ce8:	ffffe097          	auipc	ra,0xffffe
    80005cec:	0fc080e7          	jalr	252(ra) # 80003de4 <_ZN9SemaphoreC1Ei>
    80005cf0:	0324b823          	sd	s2,48(s1)
}
    80005cf4:	02813083          	ld	ra,40(sp)
    80005cf8:	02013403          	ld	s0,32(sp)
    80005cfc:	01813483          	ld	s1,24(sp)
    80005d00:	01013903          	ld	s2,16(sp)
    80005d04:	00813983          	ld	s3,8(sp)
    80005d08:	03010113          	addi	sp,sp,48
    80005d0c:	00008067          	ret
    itemAvailable = new Semaphore(0);
    80005d10:	00050493          	mv	s1,a0
    80005d14:	00098513          	mv	a0,s3
    80005d18:	ffffe097          	auipc	ra,0xffffe
    80005d1c:	e0c080e7          	jalr	-500(ra) # 80003b24 <_ZdlPv>
    80005d20:	00048513          	mv	a0,s1
    80005d24:	0000d097          	auipc	ra,0xd
    80005d28:	4ec080e7          	jalr	1260(ra) # 80013210 <_Unwind_Resume>
    spaceAvailable = new Semaphore(_cap);
    80005d2c:	00050493          	mv	s1,a0
    80005d30:	00098513          	mv	a0,s3
    80005d34:	ffffe097          	auipc	ra,0xffffe
    80005d38:	df0080e7          	jalr	-528(ra) # 80003b24 <_ZdlPv>
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	0000d097          	auipc	ra,0xd
    80005d44:	4d0080e7          	jalr	1232(ra) # 80013210 <_Unwind_Resume>
    mutexHead = new Semaphore(1);
    80005d48:	00050493          	mv	s1,a0
    80005d4c:	00090513          	mv	a0,s2
    80005d50:	ffffe097          	auipc	ra,0xffffe
    80005d54:	dd4080e7          	jalr	-556(ra) # 80003b24 <_ZdlPv>
    80005d58:	00048513          	mv	a0,s1
    80005d5c:	0000d097          	auipc	ra,0xd
    80005d60:	4b4080e7          	jalr	1204(ra) # 80013210 <_Unwind_Resume>
    mutexTail = new Semaphore(1);
    80005d64:	00050493          	mv	s1,a0
    80005d68:	00090513          	mv	a0,s2
    80005d6c:	ffffe097          	auipc	ra,0xffffe
    80005d70:	db8080e7          	jalr	-584(ra) # 80003b24 <_ZdlPv>
    80005d74:	00048513          	mv	a0,s1
    80005d78:	0000d097          	auipc	ra,0xd
    80005d7c:	498080e7          	jalr	1176(ra) # 80013210 <_Unwind_Resume>

0000000080005d80 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d80:	fe010113          	addi	sp,sp,-32
    80005d84:	00113c23          	sd	ra,24(sp)
    80005d88:	00813823          	sd	s0,16(sp)
    80005d8c:	00913423          	sd	s1,8(sp)
    80005d90:	01213023          	sd	s2,0(sp)
    80005d94:	02010413          	addi	s0,sp,32
    80005d98:	00050493          	mv	s1,a0
    80005d9c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005da0:	01853503          	ld	a0,24(a0)
    80005da4:	ffffe097          	auipc	ra,0xffffe
    80005da8:	08c080e7          	jalr	140(ra) # 80003e30 <_ZNK9Semaphore4waitEv>

    mutexTail->wait();
    80005dac:	0304b503          	ld	a0,48(s1)
    80005db0:	ffffe097          	auipc	ra,0xffffe
    80005db4:	080080e7          	jalr	128(ra) # 80003e30 <_ZNK9Semaphore4waitEv>
    buffer[tail] = val;
    80005db8:	0084b783          	ld	a5,8(s1)
    80005dbc:	0144a703          	lw	a4,20(s1)
    80005dc0:	00271713          	slli	a4,a4,0x2
    80005dc4:	00e787b3          	add	a5,a5,a4
    80005dc8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005dcc:	0144a783          	lw	a5,20(s1)
    80005dd0:	0017879b          	addiw	a5,a5,1
    80005dd4:	0004a703          	lw	a4,0(s1)
    80005dd8:	02e7e7bb          	remw	a5,a5,a4
    80005ddc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005de0:	0304b503          	ld	a0,48(s1)
    80005de4:	ffffe097          	auipc	ra,0xffffe
    80005de8:	078080e7          	jalr	120(ra) # 80003e5c <_ZNK9Semaphore6signalEv>

    itemAvailable->signal();
    80005dec:	0204b503          	ld	a0,32(s1)
    80005df0:	ffffe097          	auipc	ra,0xffffe
    80005df4:	06c080e7          	jalr	108(ra) # 80003e5c <_ZNK9Semaphore6signalEv>

}
    80005df8:	01813083          	ld	ra,24(sp)
    80005dfc:	01013403          	ld	s0,16(sp)
    80005e00:	00813483          	ld	s1,8(sp)
    80005e04:	00013903          	ld	s2,0(sp)
    80005e08:	02010113          	addi	sp,sp,32
    80005e0c:	00008067          	ret

0000000080005e10 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e10:	fe010113          	addi	sp,sp,-32
    80005e14:	00113c23          	sd	ra,24(sp)
    80005e18:	00813823          	sd	s0,16(sp)
    80005e1c:	00913423          	sd	s1,8(sp)
    80005e20:	01213023          	sd	s2,0(sp)
    80005e24:	02010413          	addi	s0,sp,32
    80005e28:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e2c:	02053503          	ld	a0,32(a0)
    80005e30:	ffffe097          	auipc	ra,0xffffe
    80005e34:	000080e7          	jalr	ra # 80003e30 <_ZNK9Semaphore4waitEv>

    mutexHead->wait();
    80005e38:	0284b503          	ld	a0,40(s1)
    80005e3c:	ffffe097          	auipc	ra,0xffffe
    80005e40:	ff4080e7          	jalr	-12(ra) # 80003e30 <_ZNK9Semaphore4waitEv>

    int ret = buffer[head];
    80005e44:	0084b703          	ld	a4,8(s1)
    80005e48:	0104a783          	lw	a5,16(s1)
    80005e4c:	00279693          	slli	a3,a5,0x2
    80005e50:	00d70733          	add	a4,a4,a3
    80005e54:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e58:	0017879b          	addiw	a5,a5,1
    80005e5c:	0004a703          	lw	a4,0(s1)
    80005e60:	02e7e7bb          	remw	a5,a5,a4
    80005e64:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e68:	0284b503          	ld	a0,40(s1)
    80005e6c:	ffffe097          	auipc	ra,0xffffe
    80005e70:	ff0080e7          	jalr	-16(ra) # 80003e5c <_ZNK9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e74:	0184b503          	ld	a0,24(s1)
    80005e78:	ffffe097          	auipc	ra,0xffffe
    80005e7c:	fe4080e7          	jalr	-28(ra) # 80003e5c <_ZNK9Semaphore6signalEv>

    return ret;
}
    80005e80:	00090513          	mv	a0,s2
    80005e84:	01813083          	ld	ra,24(sp)
    80005e88:	01013403          	ld	s0,16(sp)
    80005e8c:	00813483          	ld	s1,8(sp)
    80005e90:	00013903          	ld	s2,0(sp)
    80005e94:	02010113          	addi	sp,sp,32
    80005e98:	00008067          	ret

0000000080005e9c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005e9c:	fe010113          	addi	sp,sp,-32
    80005ea0:	00113c23          	sd	ra,24(sp)
    80005ea4:	00813823          	sd	s0,16(sp)
    80005ea8:	00913423          	sd	s1,8(sp)
    80005eac:	01213023          	sd	s2,0(sp)
    80005eb0:	02010413          	addi	s0,sp,32
    80005eb4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005eb8:	02853503          	ld	a0,40(a0)
    80005ebc:	ffffe097          	auipc	ra,0xffffe
    80005ec0:	f74080e7          	jalr	-140(ra) # 80003e30 <_ZNK9Semaphore4waitEv>
    mutexTail->wait();
    80005ec4:	0304b503          	ld	a0,48(s1)
    80005ec8:	ffffe097          	auipc	ra,0xffffe
    80005ecc:	f68080e7          	jalr	-152(ra) # 80003e30 <_ZNK9Semaphore4waitEv>

    if (tail >= head) {
    80005ed0:	0144a783          	lw	a5,20(s1)
    80005ed4:	0104a703          	lw	a4,16(s1)
    80005ed8:	02e7ce63          	blt	a5,a4,80005f14 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005edc:	40e7893b          	subw	s2,a5,a4
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005ee0:	0304b503          	ld	a0,48(s1)
    80005ee4:	ffffe097          	auipc	ra,0xffffe
    80005ee8:	f78080e7          	jalr	-136(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
    mutexHead->signal();
    80005eec:	0284b503          	ld	a0,40(s1)
    80005ef0:	ffffe097          	auipc	ra,0xffffe
    80005ef4:	f6c080e7          	jalr	-148(ra) # 80003e5c <_ZNK9Semaphore6signalEv>

    return ret;
}
    80005ef8:	00090513          	mv	a0,s2
    80005efc:	01813083          	ld	ra,24(sp)
    80005f00:	01013403          	ld	s0,16(sp)
    80005f04:	00813483          	ld	s1,8(sp)
    80005f08:	00013903          	ld	s2,0(sp)
    80005f0c:	02010113          	addi	sp,sp,32
    80005f10:	00008067          	ret
        ret = cap - head + tail;
    80005f14:	0004a683          	lw	a3,0(s1)
    80005f18:	40e6873b          	subw	a4,a3,a4
    80005f1c:	00f7093b          	addw	s2,a4,a5
    80005f20:	fc1ff06f          	j	80005ee0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005f24 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f24:	fe010113          	addi	sp,sp,-32
    80005f28:	00113c23          	sd	ra,24(sp)
    80005f2c:	00813823          	sd	s0,16(sp)
    80005f30:	00913423          	sd	s1,8(sp)
    80005f34:	02010413          	addi	s0,sp,32
    80005f38:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005f3c:	00a00513          	li	a0,10
    80005f40:	ffffe097          	auipc	ra,0xffffe
    80005f44:	014080e7          	jalr	20(ra) # 80003f54 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005f48:	00004517          	auipc	a0,0x4
    80005f4c:	4a850513          	addi	a0,a0,1192 # 8000a3f0 <CONSOLE_STATUS+0x3d0>
    80005f50:	00001097          	auipc	ra,0x1
    80005f54:	568080e7          	jalr	1384(ra) # 800074b8 <_Z11printStringPKc>
    while (getCnt()) {
    80005f58:	0340006f          	j	80005f8c <_ZN9BufferCPPD1Ev+0x68>
        char ch = buffer[head];
    80005f5c:	0084b783          	ld	a5,8(s1)
    80005f60:	0104a703          	lw	a4,16(s1)
    80005f64:	00271713          	slli	a4,a4,0x2
    80005f68:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005f6c:	0007c503          	lbu	a0,0(a5)
    80005f70:	ffffe097          	auipc	ra,0xffffe
    80005f74:	fe4080e7          	jalr	-28(ra) # 80003f54 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005f78:	0104a783          	lw	a5,16(s1)
    80005f7c:	0017879b          	addiw	a5,a5,1
    80005f80:	0004a703          	lw	a4,0(s1)
    80005f84:	02e7e7bb          	remw	a5,a5,a4
    80005f88:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005f8c:	00048513          	mv	a0,s1
    80005f90:	00000097          	auipc	ra,0x0
    80005f94:	f0c080e7          	jalr	-244(ra) # 80005e9c <_ZN9BufferCPP6getCntEv>
    80005f98:	fc0512e3          	bnez	a0,80005f5c <_ZN9BufferCPPD1Ev+0x38>
    Console::putc('!');
    80005f9c:	02100513          	li	a0,33
    80005fa0:	ffffe097          	auipc	ra,0xffffe
    80005fa4:	fb4080e7          	jalr	-76(ra) # 80003f54 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005fa8:	00a00513          	li	a0,10
    80005fac:	ffffe097          	auipc	ra,0xffffe
    80005fb0:	fa8080e7          	jalr	-88(ra) # 80003f54 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005fb4:	0084b503          	ld	a0,8(s1)
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	508080e7          	jalr	1288(ra) # 800014c0 <mem_free>
    delete itemAvailable;
    80005fc0:	0204b503          	ld	a0,32(s1)
    80005fc4:	00050863          	beqz	a0,80005fd4 <_ZN9BufferCPPD1Ev+0xb0>
    80005fc8:	00053783          	ld	a5,0(a0)
    80005fcc:	0087b783          	ld	a5,8(a5)
    80005fd0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005fd4:	0184b503          	ld	a0,24(s1)
    80005fd8:	00050863          	beqz	a0,80005fe8 <_ZN9BufferCPPD1Ev+0xc4>
    80005fdc:	00053783          	ld	a5,0(a0)
    80005fe0:	0087b783          	ld	a5,8(a5)
    80005fe4:	000780e7          	jalr	a5
    delete mutexTail;
    80005fe8:	0304b503          	ld	a0,48(s1)
    80005fec:	00050863          	beqz	a0,80005ffc <_ZN9BufferCPPD1Ev+0xd8>
    80005ff0:	00053783          	ld	a5,0(a0)
    80005ff4:	0087b783          	ld	a5,8(a5)
    80005ff8:	000780e7          	jalr	a5
    delete mutexHead;
    80005ffc:	0284b503          	ld	a0,40(s1)
    80006000:	00050863          	beqz	a0,80006010 <_ZN9BufferCPPD1Ev+0xec>
    80006004:	00053783          	ld	a5,0(a0)
    80006008:	0087b783          	ld	a5,8(a5)
    8000600c:	000780e7          	jalr	a5
}
    80006010:	01813083          	ld	ra,24(sp)
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	00813483          	ld	s1,8(sp)
    8000601c:	02010113          	addi	sp,sp,32
    80006020:	00008067          	ret

0000000080006024 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80006024:	fd010113          	addi	sp,sp,-48
    80006028:	02113423          	sd	ra,40(sp)
    8000602c:	02813023          	sd	s0,32(sp)
    80006030:	00913c23          	sd	s1,24(sp)
    80006034:	01213823          	sd	s2,16(sp)
    80006038:	01313423          	sd	s3,8(sp)
    8000603c:	03010413          	addi	s0,sp,48
    80006040:	00050993          	mv	s3,a0
    80006044:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80006048:	00000913          	li	s2,0
    while ((key = getc()) != 0x1b) {
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	898080e7          	jalr	-1896(ra) # 800018e4 <getc>
    80006054:	0005059b          	sext.w	a1,a0
    80006058:	01b00793          	li	a5,27
    8000605c:	02f58e63          	beq	a1,a5,80006098 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x74>
        data->buffer->put(key);
    80006060:	0084b503          	ld	a0,8(s1)
    80006064:	00000097          	auipc	ra,0x0
    80006068:	d1c080e7          	jalr	-740(ra) # 80005d80 <_ZN9BufferCPP3putEi>
        i++;
    8000606c:	0019071b          	addiw	a4,s2,1
    80006070:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80006074:	0004a683          	lw	a3,0(s1)
    80006078:	0026979b          	slliw	a5,a3,0x2
    8000607c:	00d787bb          	addw	a5,a5,a3
    80006080:	0017979b          	slliw	a5,a5,0x1
    80006084:	02f7673b          	remw	a4,a4,a5
    80006088:	fc0712e3          	bnez	a4,8000604c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x28>
            Thread::dispatch();
    8000608c:	ffffe097          	auipc	ra,0xffffe
    80006090:	ca4080e7          	jalr	-860(ra) # 80003d30 <_ZN6Thread8dispatchEv>
    80006094:	fb9ff06f          	j	8000604c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x28>
        }
    }

    threadEnd = 1;
    80006098:	00100793          	li	a5,1
    8000609c:	0000c717          	auipc	a4,0xc
    800060a0:	08f72623          	sw	a5,140(a4) # 80012128 <_ZL9threadEnd>
    td->buffer->put('!');
    800060a4:	0209b783          	ld	a5,32(s3)
    800060a8:	02100593          	li	a1,33
    800060ac:	0087b503          	ld	a0,8(a5)
    800060b0:	00000097          	auipc	ra,0x0
    800060b4:	cd0080e7          	jalr	-816(ra) # 80005d80 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800060b8:	0104b503          	ld	a0,16(s1)
    800060bc:	ffffe097          	auipc	ra,0xffffe
    800060c0:	da0080e7          	jalr	-608(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
}
    800060c4:	02813083          	ld	ra,40(sp)
    800060c8:	02013403          	ld	s0,32(sp)
    800060cc:	01813483          	ld	s1,24(sp)
    800060d0:	01013903          	ld	s2,16(sp)
    800060d4:	00813983          	ld	s3,8(sp)
    800060d8:	03010113          	addi	sp,sp,48
    800060dc:	00008067          	ret

00000000800060e0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800060e0:	fe010113          	addi	sp,sp,-32
    800060e4:	00113c23          	sd	ra,24(sp)
    800060e8:	00813823          	sd	s0,16(sp)
    800060ec:	00913423          	sd	s1,8(sp)
    800060f0:	01213023          	sd	s2,0(sp)
    800060f4:	02010413          	addi	s0,sp,32
    800060f8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800060fc:	00000913          	li	s2,0
    while (!threadEnd) {
    80006100:	0000c797          	auipc	a5,0xc
    80006104:	0287a783          	lw	a5,40(a5) # 80012128 <_ZL9threadEnd>
    80006108:	04079263          	bnez	a5,8000614c <_ZN12ProducerSync8producerEPv+0x6c>
        data->buffer->put(data->id + '0');
    8000610c:	0004a583          	lw	a1,0(s1)
    80006110:	0305859b          	addiw	a1,a1,48
    80006114:	0084b503          	ld	a0,8(s1)
    80006118:	00000097          	auipc	ra,0x0
    8000611c:	c68080e7          	jalr	-920(ra) # 80005d80 <_ZN9BufferCPP3putEi>
        i++;
    80006120:	0019071b          	addiw	a4,s2,1
    80006124:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80006128:	0004a683          	lw	a3,0(s1)
    8000612c:	0026979b          	slliw	a5,a3,0x2
    80006130:	00d787bb          	addw	a5,a5,a3
    80006134:	0017979b          	slliw	a5,a5,0x1
    80006138:	02f7673b          	remw	a4,a4,a5
    8000613c:	fc0712e3          	bnez	a4,80006100 <_ZN12ProducerSync8producerEPv+0x20>
            Thread::dispatch();
    80006140:	ffffe097          	auipc	ra,0xffffe
    80006144:	bf0080e7          	jalr	-1040(ra) # 80003d30 <_ZN6Thread8dispatchEv>
    80006148:	fb9ff06f          	j	80006100 <_ZN12ProducerSync8producerEPv+0x20>
        }
    }

    data->wait->signal();
    8000614c:	0104b503          	ld	a0,16(s1)
    80006150:	ffffe097          	auipc	ra,0xffffe
    80006154:	d0c080e7          	jalr	-756(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
}
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	00013903          	ld	s2,0(sp)
    80006168:	02010113          	addi	sp,sp,32
    8000616c:	00008067          	ret

0000000080006170 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80006170:	fd010113          	addi	sp,sp,-48
    80006174:	02113423          	sd	ra,40(sp)
    80006178:	02813023          	sd	s0,32(sp)
    8000617c:	00913c23          	sd	s1,24(sp)
    80006180:	01213823          	sd	s2,16(sp)
    80006184:	01313423          	sd	s3,8(sp)
    80006188:	01413023          	sd	s4,0(sp)
    8000618c:	03010413          	addi	s0,sp,48
    80006190:	00050993          	mv	s3,a0
    80006194:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006198:	00000a13          	li	s4,0
    while (!threadEnd) {
    8000619c:	0000c797          	auipc	a5,0xc
    800061a0:	f8c7a783          	lw	a5,-116(a5) # 80012128 <_ZL9threadEnd>
    800061a4:	06079e63          	bnez	a5,80006220 <_ZN12ConsumerSync8consumerEPv+0xb0>
        int key = data->buffer->get();
    800061a8:	00893503          	ld	a0,8(s2)
    800061ac:	00000097          	auipc	ra,0x0
    800061b0:	c64080e7          	jalr	-924(ra) # 80005e10 <_ZN9BufferCPP3getEv>
        i++;
    800061b4:	001a049b          	addiw	s1,s4,1
    800061b8:	00048a1b          	sext.w	s4,s1

        putc(key);
    800061bc:	0ff57513          	zext.b	a0,a0
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	768080e7          	jalr	1896(ra) # 80001928 <putc>

        if (i % (5 * data->id) == 0) {
    800061c8:	00092703          	lw	a4,0(s2)
    800061cc:	0027179b          	slliw	a5,a4,0x2
    800061d0:	00e787bb          	addw	a5,a5,a4
    800061d4:	02f4e7bb          	remw	a5,s1,a5
    800061d8:	02078063          	beqz	a5,800061f8 <_ZN12ConsumerSync8consumerEPv+0x88>
            Thread::dispatch();
        }

        if (i % 80 == 0) {
    800061dc:	05000793          	li	a5,80
    800061e0:	02f4e4bb          	remw	s1,s1,a5
    800061e4:	fa049ce3          	bnez	s1,8000619c <_ZN12ConsumerSync8consumerEPv+0x2c>
            putc('\n');
    800061e8:	00a00513          	li	a0,10
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	73c080e7          	jalr	1852(ra) # 80001928 <putc>
    800061f4:	fa9ff06f          	j	8000619c <_ZN12ConsumerSync8consumerEPv+0x2c>
            Thread::dispatch();
    800061f8:	ffffe097          	auipc	ra,0xffffe
    800061fc:	b38080e7          	jalr	-1224(ra) # 80003d30 <_ZN6Thread8dispatchEv>
    80006200:	fddff06f          	j	800061dc <_ZN12ConsumerSync8consumerEPv+0x6c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80006204:	0209b783          	ld	a5,32(s3)
    80006208:	0087b503          	ld	a0,8(a5)
    8000620c:	00000097          	auipc	ra,0x0
    80006210:	c04080e7          	jalr	-1020(ra) # 80005e10 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80006214:	0ff57513          	zext.b	a0,a0
    80006218:	ffffe097          	auipc	ra,0xffffe
    8000621c:	d3c080e7          	jalr	-708(ra) # 80003f54 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80006220:	0209b783          	ld	a5,32(s3)
    80006224:	0087b503          	ld	a0,8(a5)
    80006228:	00000097          	auipc	ra,0x0
    8000622c:	c74080e7          	jalr	-908(ra) # 80005e9c <_ZN9BufferCPP6getCntEv>
    80006230:	fca04ae3          	bgtz	a0,80006204 <_ZN12ConsumerSync8consumerEPv+0x94>
    }

    data->wait->signal();
    80006234:	01093503          	ld	a0,16(s2)
    80006238:	ffffe097          	auipc	ra,0xffffe
    8000623c:	c24080e7          	jalr	-988(ra) # 80003e5c <_ZNK9Semaphore6signalEv>
}
    80006240:	02813083          	ld	ra,40(sp)
    80006244:	02013403          	ld	s0,32(sp)
    80006248:	01813483          	ld	s1,24(sp)
    8000624c:	01013903          	ld	s2,16(sp)
    80006250:	00813983          	ld	s3,8(sp)
    80006254:	00013a03          	ld	s4,0(sp)
    80006258:	03010113          	addi	sp,sp,48
    8000625c:	00008067          	ret

0000000080006260 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80006260:	f8010113          	addi	sp,sp,-128
    80006264:	06113c23          	sd	ra,120(sp)
    80006268:	06813823          	sd	s0,112(sp)
    8000626c:	06913423          	sd	s1,104(sp)
    80006270:	07213023          	sd	s2,96(sp)
    80006274:	05313c23          	sd	s3,88(sp)
    80006278:	05413823          	sd	s4,80(sp)
    8000627c:	05513423          	sd	s5,72(sp)
    80006280:	05613023          	sd	s6,64(sp)
    80006284:	03713c23          	sd	s7,56(sp)
    80006288:	03813823          	sd	s8,48(sp)
    8000628c:	03913423          	sd	s9,40(sp)
    80006290:	08010413          	addi	s0,sp,128
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;

}
    80006294:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80006298:	00004517          	auipc	a0,0x4
    8000629c:	06050513          	addi	a0,a0,96 # 8000a2f8 <CONSOLE_STATUS+0x2d8>
    800062a0:	00001097          	auipc	ra,0x1
    800062a4:	218080e7          	jalr	536(ra) # 800074b8 <_Z11printStringPKc>
    getString(input, 30);
    800062a8:	01e00593          	li	a1,30
    800062ac:	f8040493          	addi	s1,s0,-128
    800062b0:	00048513          	mv	a0,s1
    800062b4:	00001097          	auipc	ra,0x1
    800062b8:	28c080e7          	jalr	652(ra) # 80007540 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800062bc:	00048513          	mv	a0,s1
    800062c0:	00001097          	auipc	ra,0x1
    800062c4:	358080e7          	jalr	856(ra) # 80007618 <_Z11stringToIntPKc>
    800062c8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800062cc:	00004517          	auipc	a0,0x4
    800062d0:	04c50513          	addi	a0,a0,76 # 8000a318 <CONSOLE_STATUS+0x2f8>
    800062d4:	00001097          	auipc	ra,0x1
    800062d8:	1e4080e7          	jalr	484(ra) # 800074b8 <_Z11printStringPKc>
    getString(input, 30);
    800062dc:	01e00593          	li	a1,30
    800062e0:	00048513          	mv	a0,s1
    800062e4:	00001097          	auipc	ra,0x1
    800062e8:	25c080e7          	jalr	604(ra) # 80007540 <_Z9getStringPci>
    n = stringToInt(input);
    800062ec:	00048513          	mv	a0,s1
    800062f0:	00001097          	auipc	ra,0x1
    800062f4:	328080e7          	jalr	808(ra) # 80007618 <_Z11stringToIntPKc>
    800062f8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800062fc:	00004517          	auipc	a0,0x4
    80006300:	03c50513          	addi	a0,a0,60 # 8000a338 <CONSOLE_STATUS+0x318>
    80006304:	00001097          	auipc	ra,0x1
    80006308:	1b4080e7          	jalr	436(ra) # 800074b8 <_Z11printStringPKc>
    8000630c:	00000613          	li	a2,0
    80006310:	00a00593          	li	a1,10
    80006314:	00090513          	mv	a0,s2
    80006318:	00001097          	auipc	ra,0x1
    8000631c:	350080e7          	jalr	848(ra) # 80007668 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80006320:	00004517          	auipc	a0,0x4
    80006324:	03050513          	addi	a0,a0,48 # 8000a350 <CONSOLE_STATUS+0x330>
    80006328:	00001097          	auipc	ra,0x1
    8000632c:	190080e7          	jalr	400(ra) # 800074b8 <_Z11printStringPKc>
    80006330:	00000613          	li	a2,0
    80006334:	00a00593          	li	a1,10
    80006338:	00048513          	mv	a0,s1
    8000633c:	00001097          	auipc	ra,0x1
    80006340:	32c080e7          	jalr	812(ra) # 80007668 <_Z8printIntiii>
    printString(".\n");
    80006344:	00004517          	auipc	a0,0x4
    80006348:	02450513          	addi	a0,a0,36 # 8000a368 <CONSOLE_STATUS+0x348>
    8000634c:	00001097          	auipc	ra,0x1
    80006350:	16c080e7          	jalr	364(ra) # 800074b8 <_Z11printStringPKc>
    if(threadNum > n) {
    80006354:	0324c463          	blt	s1,s2,8000637c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80006358:	03205c63          	blez	s2,80006390 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000635c:	03800513          	li	a0,56
    80006360:	ffffd097          	auipc	ra,0xffffd
    80006364:	79c080e7          	jalr	1948(ra) # 80003afc <_Znwm>
    80006368:	00050a93          	mv	s5,a0
    8000636c:	00048593          	mv	a1,s1
    80006370:	00000097          	auipc	ra,0x0
    80006374:	8bc080e7          	jalr	-1860(ra) # 80005c2c <_ZN9BufferCPPC1Ei>
    80006378:	0300006f          	j	800063a8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000637c:	00004517          	auipc	a0,0x4
    80006380:	ff450513          	addi	a0,a0,-12 # 8000a370 <CONSOLE_STATUS+0x350>
    80006384:	00001097          	auipc	ra,0x1
    80006388:	134080e7          	jalr	308(ra) # 800074b8 <_Z11printStringPKc>
        return;
    8000638c:	0140006f          	j	800063a0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006390:	00004517          	auipc	a0,0x4
    80006394:	02050513          	addi	a0,a0,32 # 8000a3b0 <CONSOLE_STATUS+0x390>
    80006398:	00001097          	auipc	ra,0x1
    8000639c:	120080e7          	jalr	288(ra) # 800074b8 <_Z11printStringPKc>
        return;
    800063a0:	000b8113          	mv	sp,s7
    800063a4:	2380006f          	j	800065dc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800063a8:	01000513          	li	a0,16
    800063ac:	ffffd097          	auipc	ra,0xffffd
    800063b0:	750080e7          	jalr	1872(ra) # 80003afc <_Znwm>
    800063b4:	00050493          	mv	s1,a0
    800063b8:	00000593          	li	a1,0
    800063bc:	ffffe097          	auipc	ra,0xffffe
    800063c0:	a28080e7          	jalr	-1496(ra) # 80003de4 <_ZN9SemaphoreC1Ei>
    800063c4:	0000c797          	auipc	a5,0xc
    800063c8:	d697b623          	sd	s1,-660(a5) # 80012130 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800063cc:	00391793          	slli	a5,s2,0x3
    800063d0:	00f78793          	addi	a5,a5,15
    800063d4:	ff07f793          	andi	a5,a5,-16
    800063d8:	40f10133          	sub	sp,sp,a5
    800063dc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800063e0:	0019071b          	addiw	a4,s2,1
    800063e4:	00171793          	slli	a5,a4,0x1
    800063e8:	00e787b3          	add	a5,a5,a4
    800063ec:	00379793          	slli	a5,a5,0x3
    800063f0:	00f78793          	addi	a5,a5,15
    800063f4:	ff07f793          	andi	a5,a5,-16
    800063f8:	40f10133          	sub	sp,sp,a5
    800063fc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80006400:	00191c13          	slli	s8,s2,0x1
    80006404:	012c07b3          	add	a5,s8,s2
    80006408:	00379793          	slli	a5,a5,0x3
    8000640c:	00fa07b3          	add	a5,s4,a5
    80006410:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006414:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80006418:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000641c:	02800513          	li	a0,40
    80006420:	ffffd097          	auipc	ra,0xffffd
    80006424:	6dc080e7          	jalr	1756(ra) # 80003afc <_Znwm>
    80006428:	00050b13          	mv	s6,a0
    8000642c:	012c0c33          	add	s8,s8,s2
    80006430:	003c1c13          	slli	s8,s8,0x3
    80006434:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80006438:	ffffe097          	auipc	ra,0xffffe
    8000643c:	804080e7          	jalr	-2044(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80006440:	00007797          	auipc	a5,0x7
    80006444:	89878793          	addi	a5,a5,-1896 # 8000ccd8 <_ZTV12ConsumerSync+0x10>
    80006448:	00fb3023          	sd	a5,0(s6)
    8000644c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80006450:	000b0513          	mv	a0,s6
    80006454:	ffffe097          	auipc	ra,0xffffe
    80006458:	818080e7          	jalr	-2024(ra) # 80003c6c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000645c:	00000493          	li	s1,0
    80006460:	0380006f          	j	80006498 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80006464:	00007797          	auipc	a5,0x7
    80006468:	84c78793          	addi	a5,a5,-1972 # 8000ccb0 <_ZTV12ProducerSync+0x10>
    8000646c:	00fcb023          	sd	a5,0(s9)
    80006470:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80006474:	00349793          	slli	a5,s1,0x3
    80006478:	00f987b3          	add	a5,s3,a5
    8000647c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80006480:	00349793          	slli	a5,s1,0x3
    80006484:	00f987b3          	add	a5,s3,a5
    80006488:	0007b503          	ld	a0,0(a5)
    8000648c:	ffffd097          	auipc	ra,0xffffd
    80006490:	7e0080e7          	jalr	2016(ra) # 80003c6c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80006494:	0014849b          	addiw	s1,s1,1
    80006498:	0b24d063          	bge	s1,s2,80006538 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000649c:	00149793          	slli	a5,s1,0x1
    800064a0:	009787b3          	add	a5,a5,s1
    800064a4:	00379793          	slli	a5,a5,0x3
    800064a8:	00fa07b3          	add	a5,s4,a5
    800064ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800064b0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800064b4:	0000c717          	auipc	a4,0xc
    800064b8:	c7c73703          	ld	a4,-900(a4) # 80012130 <_ZL10waitForAll>
    800064bc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800064c0:	02905863          	blez	s1,800064f0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800064c4:	02800513          	li	a0,40
    800064c8:	ffffd097          	auipc	ra,0xffffd
    800064cc:	634080e7          	jalr	1588(ra) # 80003afc <_Znwm>
    800064d0:	00050c93          	mv	s9,a0
    800064d4:	00149c13          	slli	s8,s1,0x1
    800064d8:	009c0c33          	add	s8,s8,s1
    800064dc:	003c1c13          	slli	s8,s8,0x3
    800064e0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800064e4:	ffffd097          	auipc	ra,0xffffd
    800064e8:	758080e7          	jalr	1880(ra) # 80003c3c <_ZN6ThreadC1Ev>
    800064ec:	f79ff06f          	j	80006464 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800064f0:	02800513          	li	a0,40
    800064f4:	ffffd097          	auipc	ra,0xffffd
    800064f8:	608080e7          	jalr	1544(ra) # 80003afc <_Znwm>
    800064fc:	00050c93          	mv	s9,a0
    80006500:	00149c13          	slli	s8,s1,0x1
    80006504:	009c0c33          	add	s8,s8,s1
    80006508:	003c1c13          	slli	s8,s8,0x3
    8000650c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80006510:	ffffd097          	auipc	ra,0xffffd
    80006514:	72c080e7          	jalr	1836(ra) # 80003c3c <_ZN6ThreadC1Ev>
    80006518:	00006797          	auipc	a5,0x6
    8000651c:	77078793          	addi	a5,a5,1904 # 8000cc88 <_ZTV16ProducerKeyboard+0x10>
    80006520:	00fcb023          	sd	a5,0(s9)
    80006524:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80006528:	00349793          	slli	a5,s1,0x3
    8000652c:	00f987b3          	add	a5,s3,a5
    80006530:	0197b023          	sd	s9,0(a5)
    80006534:	f4dff06f          	j	80006480 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80006538:	ffffd097          	auipc	ra,0xffffd
    8000653c:	7f8080e7          	jalr	2040(ra) # 80003d30 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80006540:	00000493          	li	s1,0
    80006544:	0180006f          	j	8000655c <_Z29producerConsumer_CPP_Sync_APIv+0x2fc>
        waitForAll->wait();
    80006548:	0000c517          	auipc	a0,0xc
    8000654c:	be853503          	ld	a0,-1048(a0) # 80012130 <_ZL10waitForAll>
    80006550:	ffffe097          	auipc	ra,0xffffe
    80006554:	8e0080e7          	jalr	-1824(ra) # 80003e30 <_ZNK9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80006558:	0014849b          	addiw	s1,s1,1
    8000655c:	fe9956e3          	bge	s2,s1,80006548 <_Z29producerConsumer_CPP_Sync_APIv+0x2e8>
    for (int i = 0; i < threadNum; i++) {
    80006560:	00000493          	li	s1,0
    80006564:	0140006f          	j	80006578 <_Z29producerConsumer_CPP_Sync_APIv+0x318>
        delete threads[i];
    80006568:	00053783          	ld	a5,0(a0)
    8000656c:	0087b783          	ld	a5,8(a5)
    80006570:	000780e7          	jalr	a5
    for (int i = 0; i < threadNum; i++) {
    80006574:	0014849b          	addiw	s1,s1,1
    80006578:	0124dc63          	bge	s1,s2,80006590 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000657c:	00349793          	slli	a5,s1,0x3
    80006580:	00f987b3          	add	a5,s3,a5
    80006584:	0007b503          	ld	a0,0(a5)
    80006588:	fe0510e3          	bnez	a0,80006568 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000658c:	fe9ff06f          	j	80006574 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    delete consumerThread;
    80006590:	000b0a63          	beqz	s6,800065a4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80006594:	000b3783          	ld	a5,0(s6)
    80006598:	0087b783          	ld	a5,8(a5)
    8000659c:	000b0513          	mv	a0,s6
    800065a0:	000780e7          	jalr	a5
    delete waitForAll;
    800065a4:	0000c517          	auipc	a0,0xc
    800065a8:	b8c53503          	ld	a0,-1140(a0) # 80012130 <_ZL10waitForAll>
    800065ac:	00050863          	beqz	a0,800065bc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800065b0:	00053783          	ld	a5,0(a0)
    800065b4:	0087b783          	ld	a5,8(a5)
    800065b8:	000780e7          	jalr	a5
    delete buffer;
    800065bc:	000a8e63          	beqz	s5,800065d8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800065c0:	000a8513          	mv	a0,s5
    800065c4:	00000097          	auipc	ra,0x0
    800065c8:	960080e7          	jalr	-1696(ra) # 80005f24 <_ZN9BufferCPPD1Ev>
    800065cc:	000a8513          	mv	a0,s5
    800065d0:	ffffd097          	auipc	ra,0xffffd
    800065d4:	554080e7          	jalr	1364(ra) # 80003b24 <_ZdlPv>
    800065d8:	000b8113          	mv	sp,s7
}
    800065dc:	f8040113          	addi	sp,s0,-128
    800065e0:	07813083          	ld	ra,120(sp)
    800065e4:	07013403          	ld	s0,112(sp)
    800065e8:	06813483          	ld	s1,104(sp)
    800065ec:	06013903          	ld	s2,96(sp)
    800065f0:	05813983          	ld	s3,88(sp)
    800065f4:	05013a03          	ld	s4,80(sp)
    800065f8:	04813a83          	ld	s5,72(sp)
    800065fc:	04013b03          	ld	s6,64(sp)
    80006600:	03813b83          	ld	s7,56(sp)
    80006604:	03013c03          	ld	s8,48(sp)
    80006608:	02813c83          	ld	s9,40(sp)
    8000660c:	08010113          	addi	sp,sp,128
    80006610:	00008067          	ret
    BufferCPP *buffer = new BufferCPP(n);
    80006614:	00050493          	mv	s1,a0
    80006618:	000a8513          	mv	a0,s5
    8000661c:	ffffd097          	auipc	ra,0xffffd
    80006620:	508080e7          	jalr	1288(ra) # 80003b24 <_ZdlPv>
    80006624:	00048513          	mv	a0,s1
    80006628:	0000d097          	auipc	ra,0xd
    8000662c:	be8080e7          	jalr	-1048(ra) # 80013210 <_Unwind_Resume>
    waitForAll = new Semaphore(0);
    80006630:	00050913          	mv	s2,a0
    80006634:	00048513          	mv	a0,s1
    80006638:	ffffd097          	auipc	ra,0xffffd
    8000663c:	4ec080e7          	jalr	1260(ra) # 80003b24 <_ZdlPv>
    80006640:	00090513          	mv	a0,s2
    80006644:	0000d097          	auipc	ra,0xd
    80006648:	bcc080e7          	jalr	-1076(ra) # 80013210 <_Unwind_Resume>
    consumerThread = new ConsumerSync(data+threadNum);
    8000664c:	00050493          	mv	s1,a0
    80006650:	000b0513          	mv	a0,s6
    80006654:	ffffd097          	auipc	ra,0xffffd
    80006658:	4d0080e7          	jalr	1232(ra) # 80003b24 <_ZdlPv>
    8000665c:	00048513          	mv	a0,s1
    80006660:	0000d097          	auipc	ra,0xd
    80006664:	bb0080e7          	jalr	-1104(ra) # 80013210 <_Unwind_Resume>
            threads[i] = new ProducerSync(data+i);
    80006668:	00050493          	mv	s1,a0
    8000666c:	000c8513          	mv	a0,s9
    80006670:	ffffd097          	auipc	ra,0xffffd
    80006674:	4b4080e7          	jalr	1204(ra) # 80003b24 <_ZdlPv>
    80006678:	00048513          	mv	a0,s1
    8000667c:	0000d097          	auipc	ra,0xd
    80006680:	b94080e7          	jalr	-1132(ra) # 80013210 <_Unwind_Resume>
            threads[i] = new ProducerKeyboard(data+i);
    80006684:	00050493          	mv	s1,a0
    80006688:	000c8513          	mv	a0,s9
    8000668c:	ffffd097          	auipc	ra,0xffffd
    80006690:	498080e7          	jalr	1176(ra) # 80003b24 <_ZdlPv>
    80006694:	00048513          	mv	a0,s1
    80006698:	0000d097          	auipc	ra,0xd
    8000669c:	b78080e7          	jalr	-1160(ra) # 80013210 <_Unwind_Resume>

00000000800066a0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800066a0:	ff010113          	addi	sp,sp,-16
    800066a4:	00113423          	sd	ra,8(sp)
    800066a8:	00813023          	sd	s0,0(sp)
    800066ac:	01010413          	addi	s0,sp,16
    800066b0:	00006797          	auipc	a5,0x6
    800066b4:	62878793          	addi	a5,a5,1576 # 8000ccd8 <_ZTV12ConsumerSync+0x10>
    800066b8:	00f53023          	sd	a5,0(a0)
    800066bc:	ffffd097          	auipc	ra,0xffffd
    800066c0:	3ac080e7          	jalr	940(ra) # 80003a68 <_ZN6ThreadD1Ev>
    800066c4:	00813083          	ld	ra,8(sp)
    800066c8:	00013403          	ld	s0,0(sp)
    800066cc:	01010113          	addi	sp,sp,16
    800066d0:	00008067          	ret

00000000800066d4 <_ZN12ConsumerSyncD0Ev>:
    800066d4:	fe010113          	addi	sp,sp,-32
    800066d8:	00113c23          	sd	ra,24(sp)
    800066dc:	00813823          	sd	s0,16(sp)
    800066e0:	00913423          	sd	s1,8(sp)
    800066e4:	02010413          	addi	s0,sp,32
    800066e8:	00050493          	mv	s1,a0
    800066ec:	00006797          	auipc	a5,0x6
    800066f0:	5ec78793          	addi	a5,a5,1516 # 8000ccd8 <_ZTV12ConsumerSync+0x10>
    800066f4:	00f53023          	sd	a5,0(a0)
    800066f8:	ffffd097          	auipc	ra,0xffffd
    800066fc:	370080e7          	jalr	880(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80006700:	00048513          	mv	a0,s1
    80006704:	ffffd097          	auipc	ra,0xffffd
    80006708:	420080e7          	jalr	1056(ra) # 80003b24 <_ZdlPv>
    8000670c:	01813083          	ld	ra,24(sp)
    80006710:	01013403          	ld	s0,16(sp)
    80006714:	00813483          	ld	s1,8(sp)
    80006718:	02010113          	addi	sp,sp,32
    8000671c:	00008067          	ret

0000000080006720 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00113423          	sd	ra,8(sp)
    80006728:	00813023          	sd	s0,0(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	00006797          	auipc	a5,0x6
    80006734:	58078793          	addi	a5,a5,1408 # 8000ccb0 <_ZTV12ProducerSync+0x10>
    80006738:	00f53023          	sd	a5,0(a0)
    8000673c:	ffffd097          	auipc	ra,0xffffd
    80006740:	32c080e7          	jalr	812(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80006744:	00813083          	ld	ra,8(sp)
    80006748:	00013403          	ld	s0,0(sp)
    8000674c:	01010113          	addi	sp,sp,16
    80006750:	00008067          	ret

0000000080006754 <_ZN12ProducerSyncD0Ev>:
    80006754:	fe010113          	addi	sp,sp,-32
    80006758:	00113c23          	sd	ra,24(sp)
    8000675c:	00813823          	sd	s0,16(sp)
    80006760:	00913423          	sd	s1,8(sp)
    80006764:	02010413          	addi	s0,sp,32
    80006768:	00050493          	mv	s1,a0
    8000676c:	00006797          	auipc	a5,0x6
    80006770:	54478793          	addi	a5,a5,1348 # 8000ccb0 <_ZTV12ProducerSync+0x10>
    80006774:	00f53023          	sd	a5,0(a0)
    80006778:	ffffd097          	auipc	ra,0xffffd
    8000677c:	2f0080e7          	jalr	752(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80006780:	00048513          	mv	a0,s1
    80006784:	ffffd097          	auipc	ra,0xffffd
    80006788:	3a0080e7          	jalr	928(ra) # 80003b24 <_ZdlPv>
    8000678c:	01813083          	ld	ra,24(sp)
    80006790:	01013403          	ld	s0,16(sp)
    80006794:	00813483          	ld	s1,8(sp)
    80006798:	02010113          	addi	sp,sp,32
    8000679c:	00008067          	ret

00000000800067a0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800067a0:	ff010113          	addi	sp,sp,-16
    800067a4:	00113423          	sd	ra,8(sp)
    800067a8:	00813023          	sd	s0,0(sp)
    800067ac:	01010413          	addi	s0,sp,16
    800067b0:	00006797          	auipc	a5,0x6
    800067b4:	4d878793          	addi	a5,a5,1240 # 8000cc88 <_ZTV16ProducerKeyboard+0x10>
    800067b8:	00f53023          	sd	a5,0(a0)
    800067bc:	ffffd097          	auipc	ra,0xffffd
    800067c0:	2ac080e7          	jalr	684(ra) # 80003a68 <_ZN6ThreadD1Ev>
    800067c4:	00813083          	ld	ra,8(sp)
    800067c8:	00013403          	ld	s0,0(sp)
    800067cc:	01010113          	addi	sp,sp,16
    800067d0:	00008067          	ret

00000000800067d4 <_ZN16ProducerKeyboardD0Ev>:
    800067d4:	fe010113          	addi	sp,sp,-32
    800067d8:	00113c23          	sd	ra,24(sp)
    800067dc:	00813823          	sd	s0,16(sp)
    800067e0:	00913423          	sd	s1,8(sp)
    800067e4:	02010413          	addi	s0,sp,32
    800067e8:	00050493          	mv	s1,a0
    800067ec:	00006797          	auipc	a5,0x6
    800067f0:	49c78793          	addi	a5,a5,1180 # 8000cc88 <_ZTV16ProducerKeyboard+0x10>
    800067f4:	00f53023          	sd	a5,0(a0)
    800067f8:	ffffd097          	auipc	ra,0xffffd
    800067fc:	270080e7          	jalr	624(ra) # 80003a68 <_ZN6ThreadD1Ev>
    80006800:	00048513          	mv	a0,s1
    80006804:	ffffd097          	auipc	ra,0xffffd
    80006808:	320080e7          	jalr	800(ra) # 80003b24 <_ZdlPv>
    8000680c:	01813083          	ld	ra,24(sp)
    80006810:	01013403          	ld	s0,16(sp)
    80006814:	00813483          	ld	s1,8(sp)
    80006818:	02010113          	addi	sp,sp,32
    8000681c:	00008067          	ret

0000000080006820 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00113423          	sd	ra,8(sp)
    80006828:	00813023          	sd	s0,0(sp)
    8000682c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006830:	02053583          	ld	a1,32(a0)
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	7f0080e7          	jalr	2032(ra) # 80006024 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000683c:	00813083          	ld	ra,8(sp)
    80006840:	00013403          	ld	s0,0(sp)
    80006844:	01010113          	addi	sp,sp,16
    80006848:	00008067          	ret

000000008000684c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000684c:	ff010113          	addi	sp,sp,-16
    80006850:	00113423          	sd	ra,8(sp)
    80006854:	00813023          	sd	s0,0(sp)
    80006858:	01010413          	addi	s0,sp,16
        producer(td);
    8000685c:	02053583          	ld	a1,32(a0)
    80006860:	00000097          	auipc	ra,0x0
    80006864:	880080e7          	jalr	-1920(ra) # 800060e0 <_ZN12ProducerSync8producerEPv>
    }
    80006868:	00813083          	ld	ra,8(sp)
    8000686c:	00013403          	ld	s0,0(sp)
    80006870:	01010113          	addi	sp,sp,16
    80006874:	00008067          	ret

0000000080006878 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006878:	ff010113          	addi	sp,sp,-16
    8000687c:	00113423          	sd	ra,8(sp)
    80006880:	00813023          	sd	s0,0(sp)
    80006884:	01010413          	addi	s0,sp,16
        consumer(td);
    80006888:	02053583          	ld	a1,32(a0)
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	8e4080e7          	jalr	-1820(ra) # 80006170 <_ZN12ConsumerSync8consumerEPv>
    }
    80006894:	00813083          	ld	ra,8(sp)
    80006898:	00013403          	ld	s0,0(sp)
    8000689c:	01010113          	addi	sp,sp,16
    800068a0:	00008067          	ret

00000000800068a4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800068a4:	fe010113          	addi	sp,sp,-32
    800068a8:	00113c23          	sd	ra,24(sp)
    800068ac:	00813823          	sd	s0,16(sp)
    800068b0:	00913423          	sd	s1,8(sp)
    800068b4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800068b8:	00004517          	auipc	a0,0x4
    800068bc:	b6050513          	addi	a0,a0,-1184 # 8000a418 <CONSOLE_STATUS+0x3f8>
    800068c0:	00001097          	auipc	ra,0x1
    800068c4:	bf8080e7          	jalr	-1032(ra) # 800074b8 <_Z11printStringPKc>
    int test = getc() - '0';
    800068c8:	ffffb097          	auipc	ra,0xffffb
    800068cc:	01c080e7          	jalr	28(ra) # 800018e4 <getc>
    800068d0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	010080e7          	jalr	16(ra) # 800018e4 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800068dc:	00700793          	li	a5,7
    800068e0:	1097e263          	bltu	a5,s1,800069e4 <_Z8userMainv+0x140>
    800068e4:	00249493          	slli	s1,s1,0x2
    800068e8:	00004717          	auipc	a4,0x4
    800068ec:	f4070713          	addi	a4,a4,-192 # 8000a828 <CONSOLE_STATUS+0x808>
    800068f0:	00e484b3          	add	s1,s1,a4
    800068f4:	0004a783          	lw	a5,0(s1)
    800068f8:	00e787b3          	add	a5,a5,a4
    800068fc:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006900:	00001097          	auipc	ra,0x1
    80006904:	abc080e7          	jalr	-1348(ra) # 800073bc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006908:	00004517          	auipc	a0,0x4
    8000690c:	b3050513          	addi	a0,a0,-1232 # 8000a438 <CONSOLE_STATUS+0x418>
    80006910:	00001097          	auipc	ra,0x1
    80006914:	ba8080e7          	jalr	-1112(ra) # 800074b8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006918:	01813083          	ld	ra,24(sp)
    8000691c:	01013403          	ld	s0,16(sp)
    80006920:	00813483          	ld	s1,8(sp)
    80006924:	02010113          	addi	sp,sp,32
    80006928:	00008067          	ret
            Threads_CPP_API_test();
    8000692c:	ffffe097          	auipc	ra,0xffffe
    80006930:	c58080e7          	jalr	-936(ra) # 80004584 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006934:	00004517          	auipc	a0,0x4
    80006938:	b4450513          	addi	a0,a0,-1212 # 8000a478 <CONSOLE_STATUS+0x458>
    8000693c:	00001097          	auipc	ra,0x1
    80006940:	b7c080e7          	jalr	-1156(ra) # 800074b8 <_Z11printStringPKc>
            break;
    80006944:	fd5ff06f          	j	80006918 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006948:	00000097          	auipc	ra,0x0
    8000694c:	2c8080e7          	jalr	712(ra) # 80006c10 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006950:	00004517          	auipc	a0,0x4
    80006954:	b6850513          	addi	a0,a0,-1176 # 8000a4b8 <CONSOLE_STATUS+0x498>
    80006958:	00001097          	auipc	ra,0x1
    8000695c:	b60080e7          	jalr	-1184(ra) # 800074b8 <_Z11printStringPKc>
            break;
    80006960:	fb9ff06f          	j	80006918 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006964:	00000097          	auipc	ra,0x0
    80006968:	8fc080e7          	jalr	-1796(ra) # 80006260 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000696c:	00004517          	auipc	a0,0x4
    80006970:	b9c50513          	addi	a0,a0,-1124 # 8000a508 <CONSOLE_STATUS+0x4e8>
    80006974:	00001097          	auipc	ra,0x1
    80006978:	b44080e7          	jalr	-1212(ra) # 800074b8 <_Z11printStringPKc>
            break;
    8000697c:	f9dff06f          	j	80006918 <_Z8userMainv+0x74>
            testSleeping();
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	20c080e7          	jalr	524(ra) # 80005b8c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006988:	00004517          	auipc	a0,0x4
    8000698c:	bd850513          	addi	a0,a0,-1064 # 8000a560 <CONSOLE_STATUS+0x540>
    80006990:	00001097          	auipc	ra,0x1
    80006994:	b28080e7          	jalr	-1240(ra) # 800074b8 <_Z11printStringPKc>
            break;
    80006998:	f81ff06f          	j	80006918 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000699c:	ffffe097          	auipc	ra,0xffffe
    800069a0:	0b4080e7          	jalr	180(ra) # 80004a50 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800069a4:	00004517          	auipc	a0,0x4
    800069a8:	bec50513          	addi	a0,a0,-1044 # 8000a590 <CONSOLE_STATUS+0x570>
    800069ac:	00001097          	auipc	ra,0x1
    800069b0:	b0c080e7          	jalr	-1268(ra) # 800074b8 <_Z11printStringPKc>
            break;
    800069b4:	f65ff06f          	j	80006918 <_Z8userMainv+0x74>
            System_Mode_test();
    800069b8:	fffff097          	auipc	ra,0xfffff
    800069bc:	d04080e7          	jalr	-764(ra) # 800056bc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800069c0:	00004517          	auipc	a0,0x4
    800069c4:	c1050513          	addi	a0,a0,-1008 # 8000a5d0 <CONSOLE_STATUS+0x5b0>
    800069c8:	00001097          	auipc	ra,0x1
    800069cc:	af0080e7          	jalr	-1296(ra) # 800074b8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800069d0:	00004517          	auipc	a0,0x4
    800069d4:	c2050513          	addi	a0,a0,-992 # 8000a5f0 <CONSOLE_STATUS+0x5d0>
    800069d8:	00001097          	auipc	ra,0x1
    800069dc:	ae0080e7          	jalr	-1312(ra) # 800074b8 <_Z11printStringPKc>
            break;
    800069e0:	f39ff06f          	j	80006918 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800069e4:	00004517          	auipc	a0,0x4
    800069e8:	c6450513          	addi	a0,a0,-924 # 8000a648 <CONSOLE_STATUS+0x628>
    800069ec:	00001097          	auipc	ra,0x1
    800069f0:	acc080e7          	jalr	-1332(ra) # 800074b8 <_Z11printStringPKc>
    800069f4:	f25ff06f          	j	80006918 <_Z8userMainv+0x74>

00000000800069f8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800069f8:	fe010113          	addi	sp,sp,-32
    800069fc:	00113c23          	sd	ra,24(sp)
    80006a00:	00813823          	sd	s0,16(sp)
    80006a04:	00913423          	sd	s1,8(sp)
    80006a08:	01213023          	sd	s2,0(sp)
    80006a0c:	02010413          	addi	s0,sp,32
    80006a10:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80006a14:	00000913          	li	s2,0
    while ((key = getc()) != 0x1b) {
    80006a18:	ffffb097          	auipc	ra,0xffffb
    80006a1c:	ecc080e7          	jalr	-308(ra) # 800018e4 <getc>
    80006a20:	0005059b          	sext.w	a1,a0
    80006a24:	01b00793          	li	a5,27
    80006a28:	02f58e63          	beq	a1,a5,80006a64 <_ZL16producerKeyboardPv+0x6c>
        data->buffer->put(key);
    80006a2c:	0084b503          	ld	a0,8(s1)
    80006a30:	fffff097          	auipc	ra,0xfffff
    80006a34:	e34080e7          	jalr	-460(ra) # 80005864 <_ZN6Buffer3putEi>
        i++;
    80006a38:	0019071b          	addiw	a4,s2,1
    80006a3c:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80006a40:	0004a683          	lw	a3,0(s1)
    80006a44:	0026979b          	slliw	a5,a3,0x2
    80006a48:	00d787bb          	addw	a5,a5,a3
    80006a4c:	0017979b          	slliw	a5,a5,0x1
    80006a50:	02f7673b          	remw	a4,a4,a5
    80006a54:	fc0712e3          	bnez	a4,80006a18 <_ZL16producerKeyboardPv+0x20>
            thread_dispatch();
    80006a58:	ffffb097          	auipc	ra,0xffffb
    80006a5c:	b88080e7          	jalr	-1144(ra) # 800015e0 <thread_dispatch>
    80006a60:	fb9ff06f          	j	80006a18 <_ZL16producerKeyboardPv+0x20>
        }
    }

    threadEnd = 1;
    80006a64:	00100793          	li	a5,1
    80006a68:	0000b717          	auipc	a4,0xb
    80006a6c:	6cf72823          	sw	a5,1744(a4) # 80012138 <_ZL9threadEnd>
    data->buffer->put('!');
    80006a70:	02100593          	li	a1,33
    80006a74:	0084b503          	ld	a0,8(s1)
    80006a78:	fffff097          	auipc	ra,0xfffff
    80006a7c:	dec080e7          	jalr	-532(ra) # 80005864 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80006a80:	0104b503          	ld	a0,16(s1)
    80006a84:	ffffb097          	auipc	ra,0xffffb
    80006a88:	c8c080e7          	jalr	-884(ra) # 80001710 <sem_signal>
}
    80006a8c:	01813083          	ld	ra,24(sp)
    80006a90:	01013403          	ld	s0,16(sp)
    80006a94:	00813483          	ld	s1,8(sp)
    80006a98:	00013903          	ld	s2,0(sp)
    80006a9c:	02010113          	addi	sp,sp,32
    80006aa0:	00008067          	ret

0000000080006aa4 <_ZL8producerPv>:

static void producer(void *arg) {
    80006aa4:	fe010113          	addi	sp,sp,-32
    80006aa8:	00113c23          	sd	ra,24(sp)
    80006aac:	00813823          	sd	s0,16(sp)
    80006ab0:	00913423          	sd	s1,8(sp)
    80006ab4:	01213023          	sd	s2,0(sp)
    80006ab8:	02010413          	addi	s0,sp,32
    80006abc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006ac0:	00000913          	li	s2,0
    while (!threadEnd) {
    80006ac4:	0000b797          	auipc	a5,0xb
    80006ac8:	6747a783          	lw	a5,1652(a5) # 80012138 <_ZL9threadEnd>
    80006acc:	04079263          	bnez	a5,80006b10 <_ZL8producerPv+0x6c>
        data->buffer->put(data->id + '0');
    80006ad0:	0004a583          	lw	a1,0(s1)
    80006ad4:	0305859b          	addiw	a1,a1,48
    80006ad8:	0084b503          	ld	a0,8(s1)
    80006adc:	fffff097          	auipc	ra,0xfffff
    80006ae0:	d88080e7          	jalr	-632(ra) # 80005864 <_ZN6Buffer3putEi>
        i++;
    80006ae4:	0019071b          	addiw	a4,s2,1
    80006ae8:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80006aec:	0004a683          	lw	a3,0(s1)
    80006af0:	0026979b          	slliw	a5,a3,0x2
    80006af4:	00d787bb          	addw	a5,a5,a3
    80006af8:	0017979b          	slliw	a5,a5,0x1
    80006afc:	02f7673b          	remw	a4,a4,a5
    80006b00:	fc0712e3          	bnez	a4,80006ac4 <_ZL8producerPv+0x20>
            thread_dispatch();
    80006b04:	ffffb097          	auipc	ra,0xffffb
    80006b08:	adc080e7          	jalr	-1316(ra) # 800015e0 <thread_dispatch>
    80006b0c:	fb9ff06f          	j	80006ac4 <_ZL8producerPv+0x20>
        }
    }

    sem_signal(data->wait);
    80006b10:	0104b503          	ld	a0,16(s1)
    80006b14:	ffffb097          	auipc	ra,0xffffb
    80006b18:	bfc080e7          	jalr	-1028(ra) # 80001710 <sem_signal>
}
    80006b1c:	01813083          	ld	ra,24(sp)
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	00813483          	ld	s1,8(sp)
    80006b28:	00013903          	ld	s2,0(sp)
    80006b2c:	02010113          	addi	sp,sp,32
    80006b30:	00008067          	ret

0000000080006b34 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80006b34:	fd010113          	addi	sp,sp,-48
    80006b38:	02113423          	sd	ra,40(sp)
    80006b3c:	02813023          	sd	s0,32(sp)
    80006b40:	00913c23          	sd	s1,24(sp)
    80006b44:	01213823          	sd	s2,16(sp)
    80006b48:	01313423          	sd	s3,8(sp)
    80006b4c:	03010413          	addi	s0,sp,48
    80006b50:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006b54:	00000993          	li	s3,0
    while (!threadEnd) {
    80006b58:	0000b797          	auipc	a5,0xb
    80006b5c:	5e07a783          	lw	a5,1504(a5) # 80012138 <_ZL9threadEnd>
    80006b60:	06079c63          	bnez	a5,80006bd8 <_ZL8consumerPv+0xa4>
        int key = data->buffer->get();
    80006b64:	00893503          	ld	a0,8(s2)
    80006b68:	fffff097          	auipc	ra,0xfffff
    80006b6c:	d8c080e7          	jalr	-628(ra) # 800058f4 <_ZN6Buffer3getEv>
        i++;
    80006b70:	0019849b          	addiw	s1,s3,1
    80006b74:	0004899b          	sext.w	s3,s1

        putc(key);
    80006b78:	0ff57513          	zext.b	a0,a0
    80006b7c:	ffffb097          	auipc	ra,0xffffb
    80006b80:	dac080e7          	jalr	-596(ra) # 80001928 <putc>

        if (i % (5 * data->id) == 0) {
    80006b84:	00092703          	lw	a4,0(s2)
    80006b88:	0027179b          	slliw	a5,a4,0x2
    80006b8c:	00e787bb          	addw	a5,a5,a4
    80006b90:	02f4e7bb          	remw	a5,s1,a5
    80006b94:	02078063          	beqz	a5,80006bb4 <_ZL8consumerPv+0x80>
            thread_dispatch();
        }

        if (i % 80 == 0) {
    80006b98:	05000793          	li	a5,80
    80006b9c:	02f4e4bb          	remw	s1,s1,a5
    80006ba0:	fa049ce3          	bnez	s1,80006b58 <_ZL8consumerPv+0x24>
            putc('\n');
    80006ba4:	00a00513          	li	a0,10
    80006ba8:	ffffb097          	auipc	ra,0xffffb
    80006bac:	d80080e7          	jalr	-640(ra) # 80001928 <putc>
    80006bb0:	fa9ff06f          	j	80006b58 <_ZL8consumerPv+0x24>
            thread_dispatch();
    80006bb4:	ffffb097          	auipc	ra,0xffffb
    80006bb8:	a2c080e7          	jalr	-1492(ra) # 800015e0 <thread_dispatch>
    80006bbc:	fddff06f          	j	80006b98 <_ZL8consumerPv+0x64>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80006bc0:	00893503          	ld	a0,8(s2)
    80006bc4:	fffff097          	auipc	ra,0xfffff
    80006bc8:	d30080e7          	jalr	-720(ra) # 800058f4 <_ZN6Buffer3getEv>
        putc(key);
    80006bcc:	0ff57513          	zext.b	a0,a0
    80006bd0:	ffffb097          	auipc	ra,0xffffb
    80006bd4:	d58080e7          	jalr	-680(ra) # 80001928 <putc>
    while (data->buffer->getCnt() > 0) {
    80006bd8:	00893503          	ld	a0,8(s2)
    80006bdc:	fffff097          	auipc	ra,0xfffff
    80006be0:	da4080e7          	jalr	-604(ra) # 80005980 <_ZN6Buffer6getCntEv>
    80006be4:	fca04ee3          	bgtz	a0,80006bc0 <_ZL8consumerPv+0x8c>
    }

    sem_signal(data->wait);
    80006be8:	01093503          	ld	a0,16(s2)
    80006bec:	ffffb097          	auipc	ra,0xffffb
    80006bf0:	b24080e7          	jalr	-1244(ra) # 80001710 <sem_signal>
}
    80006bf4:	02813083          	ld	ra,40(sp)
    80006bf8:	02013403          	ld	s0,32(sp)
    80006bfc:	01813483          	ld	s1,24(sp)
    80006c00:	01013903          	ld	s2,16(sp)
    80006c04:	00813983          	ld	s3,8(sp)
    80006c08:	03010113          	addi	sp,sp,48
    80006c0c:	00008067          	ret

0000000080006c10 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80006c10:	f9010113          	addi	sp,sp,-112
    80006c14:	06113423          	sd	ra,104(sp)
    80006c18:	06813023          	sd	s0,96(sp)
    80006c1c:	04913c23          	sd	s1,88(sp)
    80006c20:	05213823          	sd	s2,80(sp)
    80006c24:	05313423          	sd	s3,72(sp)
    80006c28:	05413023          	sd	s4,64(sp)
    80006c2c:	03513c23          	sd	s5,56(sp)
    80006c30:	03613823          	sd	s6,48(sp)
    80006c34:	07010413          	addi	s0,sp,112

    sem_close(waitForAll);

    delete buffer;

}
    80006c38:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80006c3c:	00003517          	auipc	a0,0x3
    80006c40:	6bc50513          	addi	a0,a0,1724 # 8000a2f8 <CONSOLE_STATUS+0x2d8>
    80006c44:	00001097          	auipc	ra,0x1
    80006c48:	874080e7          	jalr	-1932(ra) # 800074b8 <_Z11printStringPKc>
    getString(input, 30);
    80006c4c:	01e00593          	li	a1,30
    80006c50:	fa040493          	addi	s1,s0,-96
    80006c54:	00048513          	mv	a0,s1
    80006c58:	00001097          	auipc	ra,0x1
    80006c5c:	8e8080e7          	jalr	-1816(ra) # 80007540 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80006c60:	00048513          	mv	a0,s1
    80006c64:	00001097          	auipc	ra,0x1
    80006c68:	9b4080e7          	jalr	-1612(ra) # 80007618 <_Z11stringToIntPKc>
    80006c6c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80006c70:	00003517          	auipc	a0,0x3
    80006c74:	6a850513          	addi	a0,a0,1704 # 8000a318 <CONSOLE_STATUS+0x2f8>
    80006c78:	00001097          	auipc	ra,0x1
    80006c7c:	840080e7          	jalr	-1984(ra) # 800074b8 <_Z11printStringPKc>
    getString(input, 30);
    80006c80:	01e00593          	li	a1,30
    80006c84:	00048513          	mv	a0,s1
    80006c88:	00001097          	auipc	ra,0x1
    80006c8c:	8b8080e7          	jalr	-1864(ra) # 80007540 <_Z9getStringPci>
    n = stringToInt(input);
    80006c90:	00048513          	mv	a0,s1
    80006c94:	00001097          	auipc	ra,0x1
    80006c98:	984080e7          	jalr	-1660(ra) # 80007618 <_Z11stringToIntPKc>
    80006c9c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80006ca0:	00003517          	auipc	a0,0x3
    80006ca4:	69850513          	addi	a0,a0,1688 # 8000a338 <CONSOLE_STATUS+0x318>
    80006ca8:	00001097          	auipc	ra,0x1
    80006cac:	810080e7          	jalr	-2032(ra) # 800074b8 <_Z11printStringPKc>
    80006cb0:	00000613          	li	a2,0
    80006cb4:	00a00593          	li	a1,10
    80006cb8:	00090513          	mv	a0,s2
    80006cbc:	00001097          	auipc	ra,0x1
    80006cc0:	9ac080e7          	jalr	-1620(ra) # 80007668 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80006cc4:	00003517          	auipc	a0,0x3
    80006cc8:	68c50513          	addi	a0,a0,1676 # 8000a350 <CONSOLE_STATUS+0x330>
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	7ec080e7          	jalr	2028(ra) # 800074b8 <_Z11printStringPKc>
    80006cd4:	00000613          	li	a2,0
    80006cd8:	00a00593          	li	a1,10
    80006cdc:	00048513          	mv	a0,s1
    80006ce0:	00001097          	auipc	ra,0x1
    80006ce4:	988080e7          	jalr	-1656(ra) # 80007668 <_Z8printIntiii>
    printString(".\n");
    80006ce8:	00003517          	auipc	a0,0x3
    80006cec:	68050513          	addi	a0,a0,1664 # 8000a368 <CONSOLE_STATUS+0x348>
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	7c8080e7          	jalr	1992(ra) # 800074b8 <_Z11printStringPKc>
    if(threadNum > n) {
    80006cf8:	0324c463          	blt	s1,s2,80006d20 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80006cfc:	03205c63          	blez	s2,80006d34 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80006d00:	03800513          	li	a0,56
    80006d04:	ffffd097          	auipc	ra,0xffffd
    80006d08:	df8080e7          	jalr	-520(ra) # 80003afc <_Znwm>
    80006d0c:	00050a13          	mv	s4,a0
    80006d10:	00048593          	mv	a1,s1
    80006d14:	fffff097          	auipc	ra,0xfffff
    80006d18:	ab4080e7          	jalr	-1356(ra) # 800057c8 <_ZN6BufferC1Ei>
    80006d1c:	0300006f          	j	80006d4c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80006d20:	00003517          	auipc	a0,0x3
    80006d24:	65050513          	addi	a0,a0,1616 # 8000a370 <CONSOLE_STATUS+0x350>
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	790080e7          	jalr	1936(ra) # 800074b8 <_Z11printStringPKc>
        return;
    80006d30:	0140006f          	j	80006d44 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006d34:	00003517          	auipc	a0,0x3
    80006d38:	67c50513          	addi	a0,a0,1660 # 8000a3b0 <CONSOLE_STATUS+0x390>
    80006d3c:	00000097          	auipc	ra,0x0
    80006d40:	77c080e7          	jalr	1916(ra) # 800074b8 <_Z11printStringPKc>
        return;
    80006d44:	000b0113          	mv	sp,s6
    80006d48:	1500006f          	j	80006e98 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80006d4c:	00000593          	li	a1,0
    80006d50:	0000b517          	auipc	a0,0xb
    80006d54:	3f050513          	addi	a0,a0,1008 # 80012140 <_ZL10waitForAll>
    80006d58:	ffffb097          	auipc	ra,0xffffb
    80006d5c:	8c8080e7          	jalr	-1848(ra) # 80001620 <sem_open>
    thread_t threads[threadNum];
    80006d60:	00391793          	slli	a5,s2,0x3
    80006d64:	00f78793          	addi	a5,a5,15
    80006d68:	ff07f793          	andi	a5,a5,-16
    80006d6c:	40f10133          	sub	sp,sp,a5
    80006d70:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80006d74:	0019071b          	addiw	a4,s2,1
    80006d78:	00171793          	slli	a5,a4,0x1
    80006d7c:	00e787b3          	add	a5,a5,a4
    80006d80:	00379793          	slli	a5,a5,0x3
    80006d84:	00f78793          	addi	a5,a5,15
    80006d88:	ff07f793          	andi	a5,a5,-16
    80006d8c:	40f10133          	sub	sp,sp,a5
    80006d90:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80006d94:	00191613          	slli	a2,s2,0x1
    80006d98:	012607b3          	add	a5,a2,s2
    80006d9c:	00379793          	slli	a5,a5,0x3
    80006da0:	00f987b3          	add	a5,s3,a5
    80006da4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006da8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80006dac:	0000b717          	auipc	a4,0xb
    80006db0:	39473703          	ld	a4,916(a4) # 80012140 <_ZL10waitForAll>
    80006db4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80006db8:	00078613          	mv	a2,a5
    80006dbc:	00000597          	auipc	a1,0x0
    80006dc0:	d7858593          	addi	a1,a1,-648 # 80006b34 <_ZL8consumerPv>
    80006dc4:	f9840513          	addi	a0,s0,-104
    80006dc8:	ffffa097          	auipc	ra,0xffffa
    80006dcc:	790080e7          	jalr	1936(ra) # 80001558 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80006dd0:	00000493          	li	s1,0
    80006dd4:	0280006f          	j	80006dfc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80006dd8:	00000597          	auipc	a1,0x0
    80006ddc:	c2058593          	addi	a1,a1,-992 # 800069f8 <_ZL16producerKeyboardPv>
                      data + i);
    80006de0:	00179613          	slli	a2,a5,0x1
    80006de4:	00f60633          	add	a2,a2,a5
    80006de8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80006dec:	00c98633          	add	a2,s3,a2
    80006df0:	ffffa097          	auipc	ra,0xffffa
    80006df4:	768080e7          	jalr	1896(ra) # 80001558 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80006df8:	0014849b          	addiw	s1,s1,1
    80006dfc:	0524d263          	bge	s1,s2,80006e40 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80006e00:	00149793          	slli	a5,s1,0x1
    80006e04:	009787b3          	add	a5,a5,s1
    80006e08:	00379793          	slli	a5,a5,0x3
    80006e0c:	00f987b3          	add	a5,s3,a5
    80006e10:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80006e14:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80006e18:	0000b717          	auipc	a4,0xb
    80006e1c:	32873703          	ld	a4,808(a4) # 80012140 <_ZL10waitForAll>
    80006e20:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80006e24:	00048793          	mv	a5,s1
    80006e28:	00349513          	slli	a0,s1,0x3
    80006e2c:	00aa8533          	add	a0,s5,a0
    80006e30:	fa9054e3          	blez	s1,80006dd8 <_Z22producerConsumer_C_APIv+0x1c8>
    80006e34:	00000597          	auipc	a1,0x0
    80006e38:	c7058593          	addi	a1,a1,-912 # 80006aa4 <_ZL8producerPv>
    80006e3c:	fa5ff06f          	j	80006de0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80006e40:	ffffa097          	auipc	ra,0xffffa
    80006e44:	7a0080e7          	jalr	1952(ra) # 800015e0 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80006e48:	00000493          	li	s1,0
    80006e4c:	0180006f          	j	80006e64 <_Z22producerConsumer_C_APIv+0x254>
        sem_wait(waitForAll);
    80006e50:	0000b517          	auipc	a0,0xb
    80006e54:	2f053503          	ld	a0,752(a0) # 80012140 <_ZL10waitForAll>
    80006e58:	ffffb097          	auipc	ra,0xffffb
    80006e5c:	868080e7          	jalr	-1944(ra) # 800016c0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80006e60:	0014849b          	addiw	s1,s1,1
    80006e64:	fe9956e3          	bge	s2,s1,80006e50 <_Z22producerConsumer_C_APIv+0x240>
    sem_close(waitForAll);
    80006e68:	0000b517          	auipc	a0,0xb
    80006e6c:	2d853503          	ld	a0,728(a0) # 80012140 <_ZL10waitForAll>
    80006e70:	ffffb097          	auipc	ra,0xffffb
    80006e74:	800080e7          	jalr	-2048(ra) # 80001670 <sem_close>
    delete buffer;
    80006e78:	000a0e63          	beqz	s4,80006e94 <_Z22producerConsumer_C_APIv+0x284>
    80006e7c:	000a0513          	mv	a0,s4
    80006e80:	fffff097          	auipc	ra,0xfffff
    80006e84:	b88080e7          	jalr	-1144(ra) # 80005a08 <_ZN6BufferD1Ev>
    80006e88:	000a0513          	mv	a0,s4
    80006e8c:	ffffd097          	auipc	ra,0xffffd
    80006e90:	c98080e7          	jalr	-872(ra) # 80003b24 <_ZdlPv>
    80006e94:	000b0113          	mv	sp,s6
}
    80006e98:	f9040113          	addi	sp,s0,-112
    80006e9c:	06813083          	ld	ra,104(sp)
    80006ea0:	06013403          	ld	s0,96(sp)
    80006ea4:	05813483          	ld	s1,88(sp)
    80006ea8:	05013903          	ld	s2,80(sp)
    80006eac:	04813983          	ld	s3,72(sp)
    80006eb0:	04013a03          	ld	s4,64(sp)
    80006eb4:	03813a83          	ld	s5,56(sp)
    80006eb8:	03013b03          	ld	s6,48(sp)
    80006ebc:	07010113          	addi	sp,sp,112
    80006ec0:	00008067          	ret
    Buffer *buffer = new Buffer(n);
    80006ec4:	00050493          	mv	s1,a0
    80006ec8:	000a0513          	mv	a0,s4
    80006ecc:	ffffd097          	auipc	ra,0xffffd
    80006ed0:	c58080e7          	jalr	-936(ra) # 80003b24 <_ZdlPv>
    80006ed4:	00048513          	mv	a0,s1
    80006ed8:	0000c097          	auipc	ra,0xc
    80006edc:	338080e7          	jalr	824(ra) # 80013210 <_Unwind_Resume>

0000000080006ee0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006ee0:	fe010113          	addi	sp,sp,-32
    80006ee4:	00113c23          	sd	ra,24(sp)
    80006ee8:	00813823          	sd	s0,16(sp)
    80006eec:	00913423          	sd	s1,8(sp)
    80006ef0:	02010413          	addi	s0,sp,32
    80006ef4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006ef8:	00100793          	li	a5,1
    80006efc:	02a7fc63          	bgeu	a5,a0,80006f34 <_ZL9fibonaccim+0x54>
    80006f00:	01213023          	sd	s2,0(sp)
    if (n % 10 == 0) { thread_dispatch(); }
    80006f04:	00a00793          	li	a5,10
    80006f08:	02f577b3          	remu	a5,a0,a5
    80006f0c:	02078e63          	beqz	a5,80006f48 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006f10:	fff48513          	addi	a0,s1,-1
    80006f14:	00000097          	auipc	ra,0x0
    80006f18:	fcc080e7          	jalr	-52(ra) # 80006ee0 <_ZL9fibonaccim>
    80006f1c:	00050913          	mv	s2,a0
    80006f20:	ffe48513          	addi	a0,s1,-2
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	fbc080e7          	jalr	-68(ra) # 80006ee0 <_ZL9fibonaccim>
    80006f2c:	00a90533          	add	a0,s2,a0
    80006f30:	00013903          	ld	s2,0(sp)
}
    80006f34:	01813083          	ld	ra,24(sp)
    80006f38:	01013403          	ld	s0,16(sp)
    80006f3c:	00813483          	ld	s1,8(sp)
    80006f40:	02010113          	addi	sp,sp,32
    80006f44:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006f48:	ffffa097          	auipc	ra,0xffffa
    80006f4c:	698080e7          	jalr	1688(ra) # 800015e0 <thread_dispatch>
    80006f50:	fc1ff06f          	j	80006f10 <_ZL9fibonaccim+0x30>

0000000080006f54 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006f54:	fe010113          	addi	sp,sp,-32
    80006f58:	00113c23          	sd	ra,24(sp)
    80006f5c:	00813823          	sd	s0,16(sp)
    80006f60:	00913423          	sd	s1,8(sp)
    80006f64:	01213023          	sd	s2,0(sp)
    80006f68:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006f6c:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80006f70:	0400006f          	j	80006fb0 <_ZL11workerBodyDPv+0x5c>
        printString("D: i="); printInt(i); printString("\n");
    80006f74:	00003517          	auipc	a0,0x3
    80006f78:	2ec50513          	addi	a0,a0,748 # 8000a260 <CONSOLE_STATUS+0x240>
    80006f7c:	00000097          	auipc	ra,0x0
    80006f80:	53c080e7          	jalr	1340(ra) # 800074b8 <_Z11printStringPKc>
    80006f84:	00000613          	li	a2,0
    80006f88:	00a00593          	li	a1,10
    80006f8c:	00048513          	mv	a0,s1
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	6d8080e7          	jalr	1752(ra) # 80007668 <_Z8printIntiii>
    80006f98:	00003517          	auipc	a0,0x3
    80006f9c:	26850513          	addi	a0,a0,616 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80006fa0:	00000097          	auipc	ra,0x0
    80006fa4:	518080e7          	jalr	1304(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006fa8:	0014849b          	addiw	s1,s1,1
    80006fac:	0ff4f493          	zext.b	s1,s1
    80006fb0:	00c00793          	li	a5,12
    80006fb4:	fc97f0e3          	bgeu	a5,s1,80006f74 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006fb8:	00003517          	auipc	a0,0x3
    80006fbc:	2b050513          	addi	a0,a0,688 # 8000a268 <CONSOLE_STATUS+0x248>
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	4f8080e7          	jalr	1272(ra) # 800074b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006fc8:	00500313          	li	t1,5
    thread_dispatch();
    80006fcc:	ffffa097          	auipc	ra,0xffffa
    80006fd0:	614080e7          	jalr	1556(ra) # 800015e0 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006fd4:	01000513          	li	a0,16
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	f08080e7          	jalr	-248(ra) # 80006ee0 <_ZL9fibonaccim>
    80006fe0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006fe4:	00003517          	auipc	a0,0x3
    80006fe8:	29450513          	addi	a0,a0,660 # 8000a278 <CONSOLE_STATUS+0x258>
    80006fec:	00000097          	auipc	ra,0x0
    80006ff0:	4cc080e7          	jalr	1228(ra) # 800074b8 <_Z11printStringPKc>
    80006ff4:	00000613          	li	a2,0
    80006ff8:	00a00593          	li	a1,10
    80006ffc:	0009051b          	sext.w	a0,s2
    80007000:	00000097          	auipc	ra,0x0
    80007004:	668080e7          	jalr	1640(ra) # 80007668 <_Z8printIntiii>
    80007008:	00003517          	auipc	a0,0x3
    8000700c:	1f850513          	addi	a0,a0,504 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80007010:	00000097          	auipc	ra,0x0
    80007014:	4a8080e7          	jalr	1192(ra) # 800074b8 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80007018:	0400006f          	j	80007058 <_ZL11workerBodyDPv+0x104>
        printString("D: i="); printInt(i); printString("\n");
    8000701c:	00003517          	auipc	a0,0x3
    80007020:	24450513          	addi	a0,a0,580 # 8000a260 <CONSOLE_STATUS+0x240>
    80007024:	00000097          	auipc	ra,0x0
    80007028:	494080e7          	jalr	1172(ra) # 800074b8 <_Z11printStringPKc>
    8000702c:	00000613          	li	a2,0
    80007030:	00a00593          	li	a1,10
    80007034:	00048513          	mv	a0,s1
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	630080e7          	jalr	1584(ra) # 80007668 <_Z8printIntiii>
    80007040:	00003517          	auipc	a0,0x3
    80007044:	1c050513          	addi	a0,a0,448 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80007048:	00000097          	auipc	ra,0x0
    8000704c:	470080e7          	jalr	1136(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80007050:	0014849b          	addiw	s1,s1,1
    80007054:	0ff4f493          	zext.b	s1,s1
    80007058:	00f00793          	li	a5,15
    8000705c:	fc97f0e3          	bgeu	a5,s1,8000701c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80007060:	00003517          	auipc	a0,0x3
    80007064:	22850513          	addi	a0,a0,552 # 8000a288 <CONSOLE_STATUS+0x268>
    80007068:	00000097          	auipc	ra,0x0
    8000706c:	450080e7          	jalr	1104(ra) # 800074b8 <_Z11printStringPKc>
    finishedD = true;
    80007070:	00100793          	li	a5,1
    80007074:	0000b717          	auipc	a4,0xb
    80007078:	0cf70a23          	sb	a5,212(a4) # 80012148 <_ZL9finishedD>
    thread_dispatch();
    8000707c:	ffffa097          	auipc	ra,0xffffa
    80007080:	564080e7          	jalr	1380(ra) # 800015e0 <thread_dispatch>
}
    80007084:	01813083          	ld	ra,24(sp)
    80007088:	01013403          	ld	s0,16(sp)
    8000708c:	00813483          	ld	s1,8(sp)
    80007090:	00013903          	ld	s2,0(sp)
    80007094:	02010113          	addi	sp,sp,32
    80007098:	00008067          	ret

000000008000709c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000709c:	fe010113          	addi	sp,sp,-32
    800070a0:	00113c23          	sd	ra,24(sp)
    800070a4:	00813823          	sd	s0,16(sp)
    800070a8:	00913423          	sd	s1,8(sp)
    800070ac:	01213023          	sd	s2,0(sp)
    800070b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800070b4:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800070b8:	0400006f          	j	800070f8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800070bc:	00003517          	auipc	a0,0x3
    800070c0:	17450513          	addi	a0,a0,372 # 8000a230 <CONSOLE_STATUS+0x210>
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	3f4080e7          	jalr	1012(ra) # 800074b8 <_Z11printStringPKc>
    800070cc:	00000613          	li	a2,0
    800070d0:	00a00593          	li	a1,10
    800070d4:	00048513          	mv	a0,s1
    800070d8:	00000097          	auipc	ra,0x0
    800070dc:	590080e7          	jalr	1424(ra) # 80007668 <_Z8printIntiii>
    800070e0:	00003517          	auipc	a0,0x3
    800070e4:	12050513          	addi	a0,a0,288 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	3d0080e7          	jalr	976(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800070f0:	0014849b          	addiw	s1,s1,1
    800070f4:	0ff4f493          	zext.b	s1,s1
    800070f8:	00200793          	li	a5,2
    800070fc:	fc97f0e3          	bgeu	a5,s1,800070bc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80007100:	00003517          	auipc	a0,0x3
    80007104:	13850513          	addi	a0,a0,312 # 8000a238 <CONSOLE_STATUS+0x218>
    80007108:	00000097          	auipc	ra,0x0
    8000710c:	3b0080e7          	jalr	944(ra) # 800074b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80007110:	00700313          	li	t1,7
    thread_dispatch();
    80007114:	ffffa097          	auipc	ra,0xffffa
    80007118:	4cc080e7          	jalr	1228(ra) # 800015e0 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000711c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80007120:	00003517          	auipc	a0,0x3
    80007124:	12850513          	addi	a0,a0,296 # 8000a248 <CONSOLE_STATUS+0x228>
    80007128:	00000097          	auipc	ra,0x0
    8000712c:	390080e7          	jalr	912(ra) # 800074b8 <_Z11printStringPKc>
    80007130:	00000613          	li	a2,0
    80007134:	00a00593          	li	a1,10
    80007138:	0009051b          	sext.w	a0,s2
    8000713c:	00000097          	auipc	ra,0x0
    80007140:	52c080e7          	jalr	1324(ra) # 80007668 <_Z8printIntiii>
    80007144:	00003517          	auipc	a0,0x3
    80007148:	0bc50513          	addi	a0,a0,188 # 8000a200 <CONSOLE_STATUS+0x1e0>
    8000714c:	00000097          	auipc	ra,0x0
    80007150:	36c080e7          	jalr	876(ra) # 800074b8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80007154:	00c00513          	li	a0,12
    80007158:	00000097          	auipc	ra,0x0
    8000715c:	d88080e7          	jalr	-632(ra) # 80006ee0 <_ZL9fibonaccim>
    80007160:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80007164:	00003517          	auipc	a0,0x3
    80007168:	0ec50513          	addi	a0,a0,236 # 8000a250 <CONSOLE_STATUS+0x230>
    8000716c:	00000097          	auipc	ra,0x0
    80007170:	34c080e7          	jalr	844(ra) # 800074b8 <_Z11printStringPKc>
    80007174:	00000613          	li	a2,0
    80007178:	00a00593          	li	a1,10
    8000717c:	0009051b          	sext.w	a0,s2
    80007180:	00000097          	auipc	ra,0x0
    80007184:	4e8080e7          	jalr	1256(ra) # 80007668 <_Z8printIntiii>
    80007188:	00003517          	auipc	a0,0x3
    8000718c:	07850513          	addi	a0,a0,120 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80007190:	00000097          	auipc	ra,0x0
    80007194:	328080e7          	jalr	808(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80007198:	0400006f          	j	800071d8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000719c:	00003517          	auipc	a0,0x3
    800071a0:	09450513          	addi	a0,a0,148 # 8000a230 <CONSOLE_STATUS+0x210>
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	314080e7          	jalr	788(ra) # 800074b8 <_Z11printStringPKc>
    800071ac:	00000613          	li	a2,0
    800071b0:	00a00593          	li	a1,10
    800071b4:	00048513          	mv	a0,s1
    800071b8:	00000097          	auipc	ra,0x0
    800071bc:	4b0080e7          	jalr	1200(ra) # 80007668 <_Z8printIntiii>
    800071c0:	00003517          	auipc	a0,0x3
    800071c4:	04050513          	addi	a0,a0,64 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	2f0080e7          	jalr	752(ra) # 800074b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800071d0:	0014849b          	addiw	s1,s1,1
    800071d4:	0ff4f493          	zext.b	s1,s1
    800071d8:	00500793          	li	a5,5
    800071dc:	fc97f0e3          	bgeu	a5,s1,8000719c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800071e0:	00003517          	auipc	a0,0x3
    800071e4:	02850513          	addi	a0,a0,40 # 8000a208 <CONSOLE_STATUS+0x1e8>
    800071e8:	00000097          	auipc	ra,0x0
    800071ec:	2d0080e7          	jalr	720(ra) # 800074b8 <_Z11printStringPKc>
    finishedC = true;
    800071f0:	00100793          	li	a5,1
    800071f4:	0000b717          	auipc	a4,0xb
    800071f8:	f4f70aa3          	sb	a5,-171(a4) # 80012149 <_ZL9finishedC>
    thread_dispatch();
    800071fc:	ffffa097          	auipc	ra,0xffffa
    80007200:	3e4080e7          	jalr	996(ra) # 800015e0 <thread_dispatch>
}
    80007204:	01813083          	ld	ra,24(sp)
    80007208:	01013403          	ld	s0,16(sp)
    8000720c:	00813483          	ld	s1,8(sp)
    80007210:	00013903          	ld	s2,0(sp)
    80007214:	02010113          	addi	sp,sp,32
    80007218:	00008067          	ret

000000008000721c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00113c23          	sd	ra,24(sp)
    80007224:	00813823          	sd	s0,16(sp)
    80007228:	00913423          	sd	s1,8(sp)
    8000722c:	01213023          	sd	s2,0(sp)
    80007230:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80007234:	00000913          	li	s2,0
    80007238:	0380006f          	j	80007270 <_ZL11workerBodyBPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000723c:	00170713          	addi	a4,a4,1
    80007240:	000077b7          	lui	a5,0x7
    80007244:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007248:	fee7fae3          	bgeu	a5,a4,8000723c <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    8000724c:	ffffa097          	auipc	ra,0xffffa
    80007250:	394080e7          	jalr	916(ra) # 800015e0 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80007254:	00148493          	addi	s1,s1,1
    80007258:	000027b7          	lui	a5,0x2
    8000725c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007260:	0097e663          	bltu	a5,s1,8000726c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80007264:	00000713          	li	a4,0
    80007268:	fd9ff06f          	j	80007240 <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    8000726c:	00190913          	addi	s2,s2,1
    80007270:	00f00793          	li	a5,15
    80007274:	0527e063          	bltu	a5,s2,800072b4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80007278:	00003517          	auipc	a0,0x3
    8000727c:	fa050513          	addi	a0,a0,-96 # 8000a218 <CONSOLE_STATUS+0x1f8>
    80007280:	00000097          	auipc	ra,0x0
    80007284:	238080e7          	jalr	568(ra) # 800074b8 <_Z11printStringPKc>
    80007288:	00000613          	li	a2,0
    8000728c:	00a00593          	li	a1,10
    80007290:	0009051b          	sext.w	a0,s2
    80007294:	00000097          	auipc	ra,0x0
    80007298:	3d4080e7          	jalr	980(ra) # 80007668 <_Z8printIntiii>
    8000729c:	00003517          	auipc	a0,0x3
    800072a0:	f6450513          	addi	a0,a0,-156 # 8000a200 <CONSOLE_STATUS+0x1e0>
    800072a4:	00000097          	auipc	ra,0x0
    800072a8:	214080e7          	jalr	532(ra) # 800074b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800072ac:	00000493          	li	s1,0
    800072b0:	fa9ff06f          	j	80007258 <_ZL11workerBodyBPv+0x3c>
    printString("B finished!\n");
    800072b4:	00003517          	auipc	a0,0x3
    800072b8:	f6c50513          	addi	a0,a0,-148 # 8000a220 <CONSOLE_STATUS+0x200>
    800072bc:	00000097          	auipc	ra,0x0
    800072c0:	1fc080e7          	jalr	508(ra) # 800074b8 <_Z11printStringPKc>
    finishedB = true;
    800072c4:	00100793          	li	a5,1
    800072c8:	0000b717          	auipc	a4,0xb
    800072cc:	e8f70123          	sb	a5,-382(a4) # 8001214a <_ZL9finishedB>
    thread_dispatch();
    800072d0:	ffffa097          	auipc	ra,0xffffa
    800072d4:	310080e7          	jalr	784(ra) # 800015e0 <thread_dispatch>
}
    800072d8:	01813083          	ld	ra,24(sp)
    800072dc:	01013403          	ld	s0,16(sp)
    800072e0:	00813483          	ld	s1,8(sp)
    800072e4:	00013903          	ld	s2,0(sp)
    800072e8:	02010113          	addi	sp,sp,32
    800072ec:	00008067          	ret

00000000800072f0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800072f0:	fe010113          	addi	sp,sp,-32
    800072f4:	00113c23          	sd	ra,24(sp)
    800072f8:	00813823          	sd	s0,16(sp)
    800072fc:	00913423          	sd	s1,8(sp)
    80007300:	01213023          	sd	s2,0(sp)
    80007304:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80007308:	00000913          	li	s2,0
    8000730c:	0380006f          	j	80007344 <_ZL11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80007310:	00170713          	addi	a4,a4,1
    80007314:	000077b7          	lui	a5,0x7
    80007318:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000731c:	fee7fae3          	bgeu	a5,a4,80007310 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80007320:	ffffa097          	auipc	ra,0xffffa
    80007324:	2c0080e7          	jalr	704(ra) # 800015e0 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80007328:	00148493          	addi	s1,s1,1
    8000732c:	000027b7          	lui	a5,0x2
    80007330:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007334:	0097e663          	bltu	a5,s1,80007340 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80007338:	00000713          	li	a4,0
    8000733c:	fd9ff06f          	j	80007314 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80007340:	00190913          	addi	s2,s2,1
    80007344:	00900793          	li	a5,9
    80007348:	0527e063          	bltu	a5,s2,80007388 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000734c:	00003517          	auipc	a0,0x3
    80007350:	eac50513          	addi	a0,a0,-340 # 8000a1f8 <CONSOLE_STATUS+0x1d8>
    80007354:	00000097          	auipc	ra,0x0
    80007358:	164080e7          	jalr	356(ra) # 800074b8 <_Z11printStringPKc>
    8000735c:	00000613          	li	a2,0
    80007360:	00a00593          	li	a1,10
    80007364:	0009051b          	sext.w	a0,s2
    80007368:	00000097          	auipc	ra,0x0
    8000736c:	300080e7          	jalr	768(ra) # 80007668 <_Z8printIntiii>
    80007370:	00003517          	auipc	a0,0x3
    80007374:	e9050513          	addi	a0,a0,-368 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80007378:	00000097          	auipc	ra,0x0
    8000737c:	140080e7          	jalr	320(ra) # 800074b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80007380:	00000493          	li	s1,0
    80007384:	fa9ff06f          	j	8000732c <_ZL11workerBodyAPv+0x3c>
    printString("A finished!\n");
    80007388:	00003517          	auipc	a0,0x3
    8000738c:	e8050513          	addi	a0,a0,-384 # 8000a208 <CONSOLE_STATUS+0x1e8>
    80007390:	00000097          	auipc	ra,0x0
    80007394:	128080e7          	jalr	296(ra) # 800074b8 <_Z11printStringPKc>
    finishedA = true;
    80007398:	00100793          	li	a5,1
    8000739c:	0000b717          	auipc	a4,0xb
    800073a0:	daf707a3          	sb	a5,-593(a4) # 8001214b <_ZL9finishedA>
}
    800073a4:	01813083          	ld	ra,24(sp)
    800073a8:	01013403          	ld	s0,16(sp)
    800073ac:	00813483          	ld	s1,8(sp)
    800073b0:	00013903          	ld	s2,0(sp)
    800073b4:	02010113          	addi	sp,sp,32
    800073b8:	00008067          	ret

00000000800073bc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800073bc:	fd010113          	addi	sp,sp,-48
    800073c0:	02113423          	sd	ra,40(sp)
    800073c4:	02813023          	sd	s0,32(sp)
    800073c8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800073cc:	00000613          	li	a2,0
    800073d0:	00000597          	auipc	a1,0x0
    800073d4:	f2058593          	addi	a1,a1,-224 # 800072f0 <_ZL11workerBodyAPv>
    800073d8:	fd040513          	addi	a0,s0,-48
    800073dc:	ffffa097          	auipc	ra,0xffffa
    800073e0:	17c080e7          	jalr	380(ra) # 80001558 <thread_create>
    printString("ThreadA created\n");
    800073e4:	00003517          	auipc	a0,0x3
    800073e8:	eb450513          	addi	a0,a0,-332 # 8000a298 <CONSOLE_STATUS+0x278>
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	0cc080e7          	jalr	204(ra) # 800074b8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800073f4:	00000613          	li	a2,0
    800073f8:	00000597          	auipc	a1,0x0
    800073fc:	e2458593          	addi	a1,a1,-476 # 8000721c <_ZL11workerBodyBPv>
    80007400:	fd840513          	addi	a0,s0,-40
    80007404:	ffffa097          	auipc	ra,0xffffa
    80007408:	154080e7          	jalr	340(ra) # 80001558 <thread_create>
    printString("ThreadB created\n");
    8000740c:	00003517          	auipc	a0,0x3
    80007410:	ea450513          	addi	a0,a0,-348 # 8000a2b0 <CONSOLE_STATUS+0x290>
    80007414:	00000097          	auipc	ra,0x0
    80007418:	0a4080e7          	jalr	164(ra) # 800074b8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000741c:	00000613          	li	a2,0
    80007420:	00000597          	auipc	a1,0x0
    80007424:	c7c58593          	addi	a1,a1,-900 # 8000709c <_ZL11workerBodyCPv>
    80007428:	fe040513          	addi	a0,s0,-32
    8000742c:	ffffa097          	auipc	ra,0xffffa
    80007430:	12c080e7          	jalr	300(ra) # 80001558 <thread_create>
    printString("ThreadC created\n");
    80007434:	00003517          	auipc	a0,0x3
    80007438:	e9450513          	addi	a0,a0,-364 # 8000a2c8 <CONSOLE_STATUS+0x2a8>
    8000743c:	00000097          	auipc	ra,0x0
    80007440:	07c080e7          	jalr	124(ra) # 800074b8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80007444:	00000613          	li	a2,0
    80007448:	00000597          	auipc	a1,0x0
    8000744c:	b0c58593          	addi	a1,a1,-1268 # 80006f54 <_ZL11workerBodyDPv>
    80007450:	fe840513          	addi	a0,s0,-24
    80007454:	ffffa097          	auipc	ra,0xffffa
    80007458:	104080e7          	jalr	260(ra) # 80001558 <thread_create>
    printString("ThreadD created\n");
    8000745c:	00003517          	auipc	a0,0x3
    80007460:	e8450513          	addi	a0,a0,-380 # 8000a2e0 <CONSOLE_STATUS+0x2c0>
    80007464:	00000097          	auipc	ra,0x0
    80007468:	054080e7          	jalr	84(ra) # 800074b8 <_Z11printStringPKc>
    8000746c:	00c0006f          	j	80007478 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80007470:	ffffa097          	auipc	ra,0xffffa
    80007474:	170080e7          	jalr	368(ra) # 800015e0 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80007478:	0000b797          	auipc	a5,0xb
    8000747c:	cd37c783          	lbu	a5,-813(a5) # 8001214b <_ZL9finishedA>
    80007480:	fe0788e3          	beqz	a5,80007470 <_Z18Threads_C_API_testv+0xb4>
    80007484:	0000b797          	auipc	a5,0xb
    80007488:	cc67c783          	lbu	a5,-826(a5) # 8001214a <_ZL9finishedB>
    8000748c:	fe0782e3          	beqz	a5,80007470 <_Z18Threads_C_API_testv+0xb4>
    80007490:	0000b797          	auipc	a5,0xb
    80007494:	cb97c783          	lbu	a5,-839(a5) # 80012149 <_ZL9finishedC>
    80007498:	fc078ce3          	beqz	a5,80007470 <_Z18Threads_C_API_testv+0xb4>
    8000749c:	0000b797          	auipc	a5,0xb
    800074a0:	cac7c783          	lbu	a5,-852(a5) # 80012148 <_ZL9finishedD>
    800074a4:	fc0786e3          	beqz	a5,80007470 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800074a8:	02813083          	ld	ra,40(sp)
    800074ac:	02013403          	ld	s0,32(sp)
    800074b0:	03010113          	addi	sp,sp,48
    800074b4:	00008067          	ret

00000000800074b8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800074b8:	fe010113          	addi	sp,sp,-32
    800074bc:	00113c23          	sd	ra,24(sp)
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00913423          	sd	s1,8(sp)
    800074c8:	02010413          	addi	s0,sp,32
    800074cc:	00050493          	mv	s1,a0
    LOCK();
    800074d0:	00c0006f          	j	800074dc <_Z11printStringPKc+0x24>
    800074d4:	ffffa097          	auipc	ra,0xffffa
    800074d8:	10c080e7          	jalr	268(ra) # 800015e0 <thread_dispatch>
    800074dc:	00100613          	li	a2,1
    800074e0:	00000593          	li	a1,0
    800074e4:	0000b517          	auipc	a0,0xb
    800074e8:	c6c50513          	addi	a0,a0,-916 # 80012150 <lockPrint>
    800074ec:	ffffa097          	auipc	ra,0xffffa
    800074f0:	dc4080e7          	jalr	-572(ra) # 800012b0 <copy_and_swap>
    800074f4:	fe0510e3          	bnez	a0,800074d4 <_Z11printStringPKc+0x1c>
    800074f8:	0100006f          	j	80007508 <_Z11printStringPKc+0x50>
    while (*string != '\0')
    {
        putc(*string);
    800074fc:	ffffa097          	auipc	ra,0xffffa
    80007500:	42c080e7          	jalr	1068(ra) # 80001928 <putc>
        string++;
    80007504:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80007508:	0004c503          	lbu	a0,0(s1)
    8000750c:	fe0518e3          	bnez	a0,800074fc <_Z11printStringPKc+0x44>
    }
    UNLOCK();
    80007510:	00000613          	li	a2,0
    80007514:	00100593          	li	a1,1
    80007518:	0000b517          	auipc	a0,0xb
    8000751c:	c3850513          	addi	a0,a0,-968 # 80012150 <lockPrint>
    80007520:	ffffa097          	auipc	ra,0xffffa
    80007524:	d90080e7          	jalr	-624(ra) # 800012b0 <copy_and_swap>
    80007528:	fe0514e3          	bnez	a0,80007510 <_Z11printStringPKc+0x58>
}
    8000752c:	01813083          	ld	ra,24(sp)
    80007530:	01013403          	ld	s0,16(sp)
    80007534:	00813483          	ld	s1,8(sp)
    80007538:	02010113          	addi	sp,sp,32
    8000753c:	00008067          	ret

0000000080007540 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80007540:	fd010113          	addi	sp,sp,-48
    80007544:	02113423          	sd	ra,40(sp)
    80007548:	02813023          	sd	s0,32(sp)
    8000754c:	00913c23          	sd	s1,24(sp)
    80007550:	01213823          	sd	s2,16(sp)
    80007554:	01313423          	sd	s3,8(sp)
    80007558:	01413023          	sd	s4,0(sp)
    8000755c:	03010413          	addi	s0,sp,48
    80007560:	00050993          	mv	s3,a0
    80007564:	00058a13          	mv	s4,a1
    LOCK();
    80007568:	00c0006f          	j	80007574 <_Z9getStringPci+0x34>
    8000756c:	ffffa097          	auipc	ra,0xffffa
    80007570:	074080e7          	jalr	116(ra) # 800015e0 <thread_dispatch>
    80007574:	00100613          	li	a2,1
    80007578:	00000593          	li	a1,0
    8000757c:	0000b517          	auipc	a0,0xb
    80007580:	bd450513          	addi	a0,a0,-1068 # 80012150 <lockPrint>
    80007584:	ffffa097          	auipc	ra,0xffffa
    80007588:	d2c080e7          	jalr	-724(ra) # 800012b0 <copy_and_swap>
    8000758c:	fe0510e3          	bnez	a0,8000756c <_Z9getStringPci+0x2c>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80007590:	00000913          	li	s2,0
    80007594:	00090493          	mv	s1,s2
    80007598:	0019091b          	addiw	s2,s2,1
    8000759c:	03495a63          	bge	s2,s4,800075d0 <_Z9getStringPci+0x90>
        cc = getc();
    800075a0:	ffffa097          	auipc	ra,0xffffa
    800075a4:	344080e7          	jalr	836(ra) # 800018e4 <getc>
        if(cc < 1)
    800075a8:	02050463          	beqz	a0,800075d0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800075ac:	009984b3          	add	s1,s3,s1
    800075b0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800075b4:	00a00793          	li	a5,10
    800075b8:	00f50a63          	beq	a0,a5,800075cc <_Z9getStringPci+0x8c>
    800075bc:	00d00793          	li	a5,13
    800075c0:	fcf51ae3          	bne	a0,a5,80007594 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800075c4:	00090493          	mv	s1,s2
    800075c8:	0080006f          	j	800075d0 <_Z9getStringPci+0x90>
    800075cc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800075d0:	009984b3          	add	s1,s3,s1
    800075d4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800075d8:	00000613          	li	a2,0
    800075dc:	00100593          	li	a1,1
    800075e0:	0000b517          	auipc	a0,0xb
    800075e4:	b7050513          	addi	a0,a0,-1168 # 80012150 <lockPrint>
    800075e8:	ffffa097          	auipc	ra,0xffffa
    800075ec:	cc8080e7          	jalr	-824(ra) # 800012b0 <copy_and_swap>
    800075f0:	fe0514e3          	bnez	a0,800075d8 <_Z9getStringPci+0x98>
    return buf;
}
    800075f4:	00098513          	mv	a0,s3
    800075f8:	02813083          	ld	ra,40(sp)
    800075fc:	02013403          	ld	s0,32(sp)
    80007600:	01813483          	ld	s1,24(sp)
    80007604:	01013903          	ld	s2,16(sp)
    80007608:	00813983          	ld	s3,8(sp)
    8000760c:	00013a03          	ld	s4,0(sp)
    80007610:	03010113          	addi	sp,sp,48
    80007614:	00008067          	ret

0000000080007618 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80007618:	ff010113          	addi	sp,sp,-16
    8000761c:	00813423          	sd	s0,8(sp)
    80007620:	01010413          	addi	s0,sp,16
    80007624:	00050713          	mv	a4,a0
    int n;

    n = 0;
    80007628:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000762c:	01c0006f          	j	80007648 <_Z11stringToIntPKc+0x30>
        n = n * 10 + *s++ - '0';
    80007630:	0025179b          	slliw	a5,a0,0x2
    80007634:	00a787bb          	addw	a5,a5,a0
    80007638:	0017979b          	slliw	a5,a5,0x1
    8000763c:	00170713          	addi	a4,a4,1
    80007640:	00d787bb          	addw	a5,a5,a3
    80007644:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80007648:	00074683          	lbu	a3,0(a4)
    8000764c:	fd06879b          	addiw	a5,a3,-48
    80007650:	0ff7f793          	zext.b	a5,a5
    80007654:	00900613          	li	a2,9
    80007658:	fcf67ce3          	bgeu	a2,a5,80007630 <_Z11stringToIntPKc+0x18>
    return n;
}
    8000765c:	00813403          	ld	s0,8(sp)
    80007660:	01010113          	addi	sp,sp,16
    80007664:	00008067          	ret

0000000080007668 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80007668:	fc010113          	addi	sp,sp,-64
    8000766c:	02113c23          	sd	ra,56(sp)
    80007670:	02813823          	sd	s0,48(sp)
    80007674:	02913423          	sd	s1,40(sp)
    80007678:	03213023          	sd	s2,32(sp)
    8000767c:	01313c23          	sd	s3,24(sp)
    80007680:	04010413          	addi	s0,sp,64
    80007684:	00050493          	mv	s1,a0
    80007688:	00058913          	mv	s2,a1
    8000768c:	00060993          	mv	s3,a2
    LOCK();
    80007690:	00c0006f          	j	8000769c <_Z8printIntiii+0x34>
    80007694:	ffffa097          	auipc	ra,0xffffa
    80007698:	f4c080e7          	jalr	-180(ra) # 800015e0 <thread_dispatch>
    8000769c:	00100613          	li	a2,1
    800076a0:	00000593          	li	a1,0
    800076a4:	0000b517          	auipc	a0,0xb
    800076a8:	aac50513          	addi	a0,a0,-1364 # 80012150 <lockPrint>
    800076ac:	ffffa097          	auipc	ra,0xffffa
    800076b0:	c04080e7          	jalr	-1020(ra) # 800012b0 <copy_and_swap>
    800076b4:	fe0510e3          	bnez	a0,80007694 <_Z8printIntiii+0x2c>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800076b8:	00098463          	beqz	s3,800076c0 <_Z8printIntiii+0x58>
    800076bc:	0604c663          	bltz	s1,80007728 <_Z8printIntiii+0xc0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800076c0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800076c4:	00000593          	li	a1,0
    }

    i = 0;
    800076c8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800076cc:	0009079b          	sext.w	a5,s2
    800076d0:	032576bb          	remuw	a3,a0,s2
    800076d4:	00048613          	mv	a2,s1
    800076d8:	0014849b          	addiw	s1,s1,1
    800076dc:	02069693          	slli	a3,a3,0x20
    800076e0:	0206d693          	srli	a3,a3,0x20
    800076e4:	00005717          	auipc	a4,0x5
    800076e8:	60c70713          	addi	a4,a4,1548 # 8000ccf0 <digits>
    800076ec:	00d70733          	add	a4,a4,a3
    800076f0:	00074683          	lbu	a3,0(a4)
    800076f4:	fd060713          	addi	a4,a2,-48
    800076f8:	00870733          	add	a4,a4,s0
    800076fc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80007700:	0005071b          	sext.w	a4,a0
    80007704:	0325553b          	divuw	a0,a0,s2
    80007708:	fcf772e3          	bgeu	a4,a5,800076cc <_Z8printIntiii+0x64>
    if(neg)
    8000770c:	02058e63          	beqz	a1,80007748 <_Z8printIntiii+0xe0>
        buf[i++] = '-';
    80007710:	fd048793          	addi	a5,s1,-48
    80007714:	008784b3          	add	s1,a5,s0
    80007718:	02d00793          	li	a5,45
    8000771c:	fef48823          	sb	a5,-16(s1)
    80007720:	0026049b          	addiw	s1,a2,2
    80007724:	0240006f          	j	80007748 <_Z8printIntiii+0xe0>
        x = -xx;
    80007728:	4090053b          	negw	a0,s1
        neg = 1;
    8000772c:	00100593          	li	a1,1
        x = -xx;
    80007730:	f99ff06f          	j	800076c8 <_Z8printIntiii+0x60>

    while(--i >= 0)
        putc(buf[i]);
    80007734:	fd048793          	addi	a5,s1,-48
    80007738:	008787b3          	add	a5,a5,s0
    8000773c:	ff07c503          	lbu	a0,-16(a5)
    80007740:	ffffa097          	auipc	ra,0xffffa
    80007744:	1e8080e7          	jalr	488(ra) # 80001928 <putc>
    while(--i >= 0)
    80007748:	fff4849b          	addiw	s1,s1,-1
    8000774c:	fe04d4e3          	bgez	s1,80007734 <_Z8printIntiii+0xcc>

    UNLOCK();
    80007750:	00000613          	li	a2,0
    80007754:	00100593          	li	a1,1
    80007758:	0000b517          	auipc	a0,0xb
    8000775c:	9f850513          	addi	a0,a0,-1544 # 80012150 <lockPrint>
    80007760:	ffffa097          	auipc	ra,0xffffa
    80007764:	b50080e7          	jalr	-1200(ra) # 800012b0 <copy_and_swap>
    80007768:	fe0514e3          	bnez	a0,80007750 <_Z8printIntiii+0xe8>
    8000776c:	03813083          	ld	ra,56(sp)
    80007770:	03013403          	ld	s0,48(sp)
    80007774:	02813483          	ld	s1,40(sp)
    80007778:	02013903          	ld	s2,32(sp)
    8000777c:	01813983          	ld	s3,24(sp)
    80007780:	04010113          	addi	sp,sp,64
    80007784:	00008067          	ret

0000000080007788 <plicinit>:
    80007788:	ff010113          	addi	sp,sp,-16
    8000778c:	00813423          	sd	s0,8(sp)
    80007790:	01010413          	addi	s0,sp,16
    80007794:	00813403          	ld	s0,8(sp)
    80007798:	0c0007b7          	lui	a5,0xc000
    8000779c:	00100713          	li	a4,1
    800077a0:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800077a4:	00e7a223          	sw	a4,4(a5)
    800077a8:	01010113          	addi	sp,sp,16
    800077ac:	00008067          	ret

00000000800077b0 <plicinithart>:
    800077b0:	ff010113          	addi	sp,sp,-16
    800077b4:	00813023          	sd	s0,0(sp)
    800077b8:	00113423          	sd	ra,8(sp)
    800077bc:	01010413          	addi	s0,sp,16
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	0b8080e7          	jalr	184(ra) # 80007878 <cpuid>
    800077c8:	0085171b          	slliw	a4,a0,0x8
    800077cc:	0c0027b7          	lui	a5,0xc002
    800077d0:	00e787b3          	add	a5,a5,a4
    800077d4:	40200713          	li	a4,1026
    800077d8:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800077dc:	00813083          	ld	ra,8(sp)
    800077e0:	00013403          	ld	s0,0(sp)
    800077e4:	00d5151b          	slliw	a0,a0,0xd
    800077e8:	0c2017b7          	lui	a5,0xc201
    800077ec:	00a78533          	add	a0,a5,a0
    800077f0:	00052023          	sw	zero,0(a0)
    800077f4:	01010113          	addi	sp,sp,16
    800077f8:	00008067          	ret

00000000800077fc <plic_claim>:
    800077fc:	ff010113          	addi	sp,sp,-16
    80007800:	00813023          	sd	s0,0(sp)
    80007804:	00113423          	sd	ra,8(sp)
    80007808:	01010413          	addi	s0,sp,16
    8000780c:	00000097          	auipc	ra,0x0
    80007810:	06c080e7          	jalr	108(ra) # 80007878 <cpuid>
    80007814:	00813083          	ld	ra,8(sp)
    80007818:	00013403          	ld	s0,0(sp)
    8000781c:	00d5151b          	slliw	a0,a0,0xd
    80007820:	0c2017b7          	lui	a5,0xc201
    80007824:	00a78533          	add	a0,a5,a0
    80007828:	00452503          	lw	a0,4(a0)
    8000782c:	01010113          	addi	sp,sp,16
    80007830:	00008067          	ret

0000000080007834 <plic_complete>:
    80007834:	fe010113          	addi	sp,sp,-32
    80007838:	00813823          	sd	s0,16(sp)
    8000783c:	00913423          	sd	s1,8(sp)
    80007840:	00113c23          	sd	ra,24(sp)
    80007844:	02010413          	addi	s0,sp,32
    80007848:	00050493          	mv	s1,a0
    8000784c:	00000097          	auipc	ra,0x0
    80007850:	02c080e7          	jalr	44(ra) # 80007878 <cpuid>
    80007854:	01813083          	ld	ra,24(sp)
    80007858:	01013403          	ld	s0,16(sp)
    8000785c:	00d5179b          	slliw	a5,a0,0xd
    80007860:	0c201737          	lui	a4,0xc201
    80007864:	00f707b3          	add	a5,a4,a5
    80007868:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    8000786c:	00813483          	ld	s1,8(sp)
    80007870:	02010113          	addi	sp,sp,32
    80007874:	00008067          	ret

0000000080007878 <cpuid>:
    80007878:	ff010113          	addi	sp,sp,-16
    8000787c:	00813423          	sd	s0,8(sp)
    80007880:	01010413          	addi	s0,sp,16
    80007884:	00020513          	mv	a0,tp
    80007888:	00813403          	ld	s0,8(sp)
    8000788c:	0005051b          	sext.w	a0,a0
    80007890:	01010113          	addi	sp,sp,16
    80007894:	00008067          	ret

0000000080007898 <mycpu>:
    80007898:	ff010113          	addi	sp,sp,-16
    8000789c:	00813423          	sd	s0,8(sp)
    800078a0:	01010413          	addi	s0,sp,16
    800078a4:	00020793          	mv	a5,tp
    800078a8:	00813403          	ld	s0,8(sp)
    800078ac:	0007879b          	sext.w	a5,a5
    800078b0:	00779793          	slli	a5,a5,0x7
    800078b4:	0000b517          	auipc	a0,0xb
    800078b8:	8a450513          	addi	a0,a0,-1884 # 80012158 <cpus>
    800078bc:	00f50533          	add	a0,a0,a5
    800078c0:	01010113          	addi	sp,sp,16
    800078c4:	00008067          	ret

00000000800078c8 <userinit>:
    800078c8:	ff010113          	addi	sp,sp,-16
    800078cc:	00813423          	sd	s0,8(sp)
    800078d0:	01010413          	addi	s0,sp,16
    800078d4:	00813403          	ld	s0,8(sp)
    800078d8:	01010113          	addi	sp,sp,16
    800078dc:	ffffc317          	auipc	t1,0xffffc
    800078e0:	11830067          	jr	280(t1) # 800039f4 <main>

00000000800078e4 <either_copyout>:
    800078e4:	ff010113          	addi	sp,sp,-16
    800078e8:	00813023          	sd	s0,0(sp)
    800078ec:	00113423          	sd	ra,8(sp)
    800078f0:	01010413          	addi	s0,sp,16
    800078f4:	02051663          	bnez	a0,80007920 <either_copyout+0x3c>
    800078f8:	00058513          	mv	a0,a1
    800078fc:	00060593          	mv	a1,a2
    80007900:	0006861b          	sext.w	a2,a3
    80007904:	00000097          	auipc	ra,0x0
    80007908:	41c080e7          	jalr	1052(ra) # 80007d20 <__memmove>
    8000790c:	00813083          	ld	ra,8(sp)
    80007910:	00013403          	ld	s0,0(sp)
    80007914:	00000513          	li	a0,0
    80007918:	01010113          	addi	sp,sp,16
    8000791c:	00008067          	ret
    80007920:	00003517          	auipc	a0,0x3
    80007924:	d5050513          	addi	a0,a0,-688 # 8000a670 <CONSOLE_STATUS+0x650>
    80007928:	00000097          	auipc	ra,0x0
    8000792c:	7b0080e7          	jalr	1968(ra) # 800080d8 <panic>

0000000080007930 <either_copyin>:
    80007930:	ff010113          	addi	sp,sp,-16
    80007934:	00813023          	sd	s0,0(sp)
    80007938:	00113423          	sd	ra,8(sp)
    8000793c:	01010413          	addi	s0,sp,16
    80007940:	02059463          	bnez	a1,80007968 <either_copyin+0x38>
    80007944:	00060593          	mv	a1,a2
    80007948:	0006861b          	sext.w	a2,a3
    8000794c:	00000097          	auipc	ra,0x0
    80007950:	3d4080e7          	jalr	980(ra) # 80007d20 <__memmove>
    80007954:	00813083          	ld	ra,8(sp)
    80007958:	00013403          	ld	s0,0(sp)
    8000795c:	00000513          	li	a0,0
    80007960:	01010113          	addi	sp,sp,16
    80007964:	00008067          	ret
    80007968:	00003517          	auipc	a0,0x3
    8000796c:	d3050513          	addi	a0,a0,-720 # 8000a698 <CONSOLE_STATUS+0x678>
    80007970:	00000097          	auipc	ra,0x0
    80007974:	768080e7          	jalr	1896(ra) # 800080d8 <panic>

0000000080007978 <start>:
    80007978:	ff010113          	addi	sp,sp,-16
    8000797c:	00813423          	sd	s0,8(sp)
    80007980:	01010413          	addi	s0,sp,16
    80007984:	300027f3          	csrr	a5,mstatus
    80007988:	ffffe737          	lui	a4,0xffffe
    8000798c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeb43f>
    80007990:	00e7f7b3          	and	a5,a5,a4
    80007994:	00001737          	lui	a4,0x1
    80007998:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000799c:	00e7e7b3          	or	a5,a5,a4
    800079a0:	30079073          	csrw	mstatus,a5
    800079a4:	00000797          	auipc	a5,0x0
    800079a8:	65c78793          	addi	a5,a5,1628 # 80008000 <system_main>
    800079ac:	34179073          	csrw	mepc,a5
    800079b0:	00000793          	li	a5,0
    800079b4:	18079073          	csrw	satp,a5
    800079b8:	000107b7          	lui	a5,0x10
    800079bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800079c0:	30279073          	csrw	medeleg,a5
    800079c4:	30379073          	csrw	mideleg,a5
    800079c8:	104027f3          	csrr	a5,sie
    800079cc:	2227e793          	ori	a5,a5,546
    800079d0:	10479073          	csrw	sie,a5
    800079d4:	fff00793          	li	a5,-1
    800079d8:	00a7d793          	srli	a5,a5,0xa
    800079dc:	3b079073          	csrw	pmpaddr0,a5
    800079e0:	00f00793          	li	a5,15
    800079e4:	3a079073          	csrw	pmpcfg0,a5
    800079e8:	f14027f3          	csrr	a5,mhartid
    800079ec:	0200c737          	lui	a4,0x200c
    800079f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800079f4:	0007869b          	sext.w	a3,a5
    800079f8:	00269713          	slli	a4,a3,0x2
    800079fc:	000f4637          	lui	a2,0xf4
    80007a00:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007a04:	00d70733          	add	a4,a4,a3
    80007a08:	0037979b          	slliw	a5,a5,0x3
    80007a0c:	020046b7          	lui	a3,0x2004
    80007a10:	00d787b3          	add	a5,a5,a3
    80007a14:	00c585b3          	add	a1,a1,a2
    80007a18:	00371693          	slli	a3,a4,0x3
    80007a1c:	0000a717          	auipc	a4,0xa
    80007a20:	7c470713          	addi	a4,a4,1988 # 800121e0 <timer_scratch>
    80007a24:	00b7b023          	sd	a1,0(a5)
    80007a28:	00d70733          	add	a4,a4,a3
    80007a2c:	00f73c23          	sd	a5,24(a4)
    80007a30:	02c73023          	sd	a2,32(a4)
    80007a34:	34071073          	csrw	mscratch,a4
    80007a38:	00000797          	auipc	a5,0x0
    80007a3c:	58878793          	addi	a5,a5,1416 # 80007fc0 <timervec>
    80007a40:	30579073          	csrw	mtvec,a5
    80007a44:	300027f3          	csrr	a5,mstatus
    80007a48:	0087e793          	ori	a5,a5,8
    80007a4c:	30079073          	csrw	mstatus,a5
    80007a50:	304027f3          	csrr	a5,mie
    80007a54:	0807e793          	ori	a5,a5,128
    80007a58:	30479073          	csrw	mie,a5
    80007a5c:	f14027f3          	csrr	a5,mhartid
    80007a60:	0007879b          	sext.w	a5,a5
    80007a64:	00078213          	mv	tp,a5
    80007a68:	30200073          	mret
    80007a6c:	00813403          	ld	s0,8(sp)
    80007a70:	01010113          	addi	sp,sp,16
    80007a74:	00008067          	ret

0000000080007a78 <timerinit>:
    80007a78:	ff010113          	addi	sp,sp,-16
    80007a7c:	00813423          	sd	s0,8(sp)
    80007a80:	01010413          	addi	s0,sp,16
    80007a84:	f14027f3          	csrr	a5,mhartid
    80007a88:	0200c737          	lui	a4,0x200c
    80007a8c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007a90:	0007869b          	sext.w	a3,a5
    80007a94:	00269713          	slli	a4,a3,0x2
    80007a98:	000f4637          	lui	a2,0xf4
    80007a9c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007aa0:	00d70733          	add	a4,a4,a3
    80007aa4:	0037979b          	slliw	a5,a5,0x3
    80007aa8:	020046b7          	lui	a3,0x2004
    80007aac:	00d787b3          	add	a5,a5,a3
    80007ab0:	00c585b3          	add	a1,a1,a2
    80007ab4:	00371693          	slli	a3,a4,0x3
    80007ab8:	0000a717          	auipc	a4,0xa
    80007abc:	72870713          	addi	a4,a4,1832 # 800121e0 <timer_scratch>
    80007ac0:	00b7b023          	sd	a1,0(a5)
    80007ac4:	00d70733          	add	a4,a4,a3
    80007ac8:	00f73c23          	sd	a5,24(a4)
    80007acc:	02c73023          	sd	a2,32(a4)
    80007ad0:	34071073          	csrw	mscratch,a4
    80007ad4:	00000797          	auipc	a5,0x0
    80007ad8:	4ec78793          	addi	a5,a5,1260 # 80007fc0 <timervec>
    80007adc:	30579073          	csrw	mtvec,a5
    80007ae0:	300027f3          	csrr	a5,mstatus
    80007ae4:	0087e793          	ori	a5,a5,8
    80007ae8:	30079073          	csrw	mstatus,a5
    80007aec:	304027f3          	csrr	a5,mie
    80007af0:	0807e793          	ori	a5,a5,128
    80007af4:	30479073          	csrw	mie,a5
    80007af8:	00813403          	ld	s0,8(sp)
    80007afc:	01010113          	addi	sp,sp,16
    80007b00:	00008067          	ret

0000000080007b04 <__memset>:
    80007b04:	ff010113          	addi	sp,sp,-16
    80007b08:	00813423          	sd	s0,8(sp)
    80007b0c:	01010413          	addi	s0,sp,16
    80007b10:	1a060e63          	beqz	a2,80007ccc <__memset+0x1c8>
    80007b14:	40a007b3          	neg	a5,a0
    80007b18:	0077f793          	andi	a5,a5,7
    80007b1c:	00778693          	addi	a3,a5,7
    80007b20:	00b00813          	li	a6,11
    80007b24:	0ff5f593          	zext.b	a1,a1
    80007b28:	fff6071b          	addiw	a4,a2,-1
    80007b2c:	1b06e663          	bltu	a3,a6,80007cd8 <__memset+0x1d4>
    80007b30:	1cd76463          	bltu	a4,a3,80007cf8 <__memset+0x1f4>
    80007b34:	1a078e63          	beqz	a5,80007cf0 <__memset+0x1ec>
    80007b38:	00b50023          	sb	a1,0(a0)
    80007b3c:	00100713          	li	a4,1
    80007b40:	1ae78463          	beq	a5,a4,80007ce8 <__memset+0x1e4>
    80007b44:	00b500a3          	sb	a1,1(a0)
    80007b48:	00200713          	li	a4,2
    80007b4c:	1ae78a63          	beq	a5,a4,80007d00 <__memset+0x1fc>
    80007b50:	00b50123          	sb	a1,2(a0)
    80007b54:	00300713          	li	a4,3
    80007b58:	18e78463          	beq	a5,a4,80007ce0 <__memset+0x1dc>
    80007b5c:	00b501a3          	sb	a1,3(a0)
    80007b60:	00400713          	li	a4,4
    80007b64:	1ae78263          	beq	a5,a4,80007d08 <__memset+0x204>
    80007b68:	00b50223          	sb	a1,4(a0)
    80007b6c:	00500713          	li	a4,5
    80007b70:	1ae78063          	beq	a5,a4,80007d10 <__memset+0x20c>
    80007b74:	00b502a3          	sb	a1,5(a0)
    80007b78:	00700713          	li	a4,7
    80007b7c:	18e79e63          	bne	a5,a4,80007d18 <__memset+0x214>
    80007b80:	00b50323          	sb	a1,6(a0)
    80007b84:	00700e93          	li	t4,7
    80007b88:	00859713          	slli	a4,a1,0x8
    80007b8c:	00e5e733          	or	a4,a1,a4
    80007b90:	01059e13          	slli	t3,a1,0x10
    80007b94:	01c76e33          	or	t3,a4,t3
    80007b98:	01859313          	slli	t1,a1,0x18
    80007b9c:	006e6333          	or	t1,t3,t1
    80007ba0:	02059893          	slli	a7,a1,0x20
    80007ba4:	40f60e3b          	subw	t3,a2,a5
    80007ba8:	011368b3          	or	a7,t1,a7
    80007bac:	02859813          	slli	a6,a1,0x28
    80007bb0:	0108e833          	or	a6,a7,a6
    80007bb4:	03059693          	slli	a3,a1,0x30
    80007bb8:	003e589b          	srliw	a7,t3,0x3
    80007bbc:	00d866b3          	or	a3,a6,a3
    80007bc0:	03859713          	slli	a4,a1,0x38
    80007bc4:	00389813          	slli	a6,a7,0x3
    80007bc8:	00f507b3          	add	a5,a0,a5
    80007bcc:	00e6e733          	or	a4,a3,a4
    80007bd0:	000e089b          	sext.w	a7,t3
    80007bd4:	00f806b3          	add	a3,a6,a5
    80007bd8:	00e7b023          	sd	a4,0(a5)
    80007bdc:	00878793          	addi	a5,a5,8
    80007be0:	fed79ce3          	bne	a5,a3,80007bd8 <__memset+0xd4>
    80007be4:	ff8e7793          	andi	a5,t3,-8
    80007be8:	0007871b          	sext.w	a4,a5
    80007bec:	01d787bb          	addw	a5,a5,t4
    80007bf0:	0ce88e63          	beq	a7,a4,80007ccc <__memset+0x1c8>
    80007bf4:	00f50733          	add	a4,a0,a5
    80007bf8:	00b70023          	sb	a1,0(a4)
    80007bfc:	0017871b          	addiw	a4,a5,1
    80007c00:	0cc77663          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c04:	00e50733          	add	a4,a0,a4
    80007c08:	00b70023          	sb	a1,0(a4)
    80007c0c:	0027871b          	addiw	a4,a5,2
    80007c10:	0ac77e63          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c14:	00e50733          	add	a4,a0,a4
    80007c18:	00b70023          	sb	a1,0(a4)
    80007c1c:	0037871b          	addiw	a4,a5,3
    80007c20:	0ac77663          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c24:	00e50733          	add	a4,a0,a4
    80007c28:	00b70023          	sb	a1,0(a4)
    80007c2c:	0047871b          	addiw	a4,a5,4
    80007c30:	08c77e63          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c34:	00e50733          	add	a4,a0,a4
    80007c38:	00b70023          	sb	a1,0(a4)
    80007c3c:	0057871b          	addiw	a4,a5,5
    80007c40:	08c77663          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c44:	00e50733          	add	a4,a0,a4
    80007c48:	00b70023          	sb	a1,0(a4)
    80007c4c:	0067871b          	addiw	a4,a5,6
    80007c50:	06c77e63          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c54:	00e50733          	add	a4,a0,a4
    80007c58:	00b70023          	sb	a1,0(a4)
    80007c5c:	0077871b          	addiw	a4,a5,7
    80007c60:	06c77663          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c64:	00e50733          	add	a4,a0,a4
    80007c68:	00b70023          	sb	a1,0(a4)
    80007c6c:	0087871b          	addiw	a4,a5,8
    80007c70:	04c77e63          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c74:	00e50733          	add	a4,a0,a4
    80007c78:	00b70023          	sb	a1,0(a4)
    80007c7c:	0097871b          	addiw	a4,a5,9
    80007c80:	04c77663          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c84:	00e50733          	add	a4,a0,a4
    80007c88:	00b70023          	sb	a1,0(a4)
    80007c8c:	00a7871b          	addiw	a4,a5,10
    80007c90:	02c77e63          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007c94:	00e50733          	add	a4,a0,a4
    80007c98:	00b70023          	sb	a1,0(a4)
    80007c9c:	00b7871b          	addiw	a4,a5,11
    80007ca0:	02c77663          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007ca4:	00e50733          	add	a4,a0,a4
    80007ca8:	00b70023          	sb	a1,0(a4)
    80007cac:	00c7871b          	addiw	a4,a5,12
    80007cb0:	00c77e63          	bgeu	a4,a2,80007ccc <__memset+0x1c8>
    80007cb4:	00e50733          	add	a4,a0,a4
    80007cb8:	00b70023          	sb	a1,0(a4)
    80007cbc:	00d7879b          	addiw	a5,a5,13
    80007cc0:	00c7f663          	bgeu	a5,a2,80007ccc <__memset+0x1c8>
    80007cc4:	00f507b3          	add	a5,a0,a5
    80007cc8:	00b78023          	sb	a1,0(a5)
    80007ccc:	00813403          	ld	s0,8(sp)
    80007cd0:	01010113          	addi	sp,sp,16
    80007cd4:	00008067          	ret
    80007cd8:	00b00693          	li	a3,11
    80007cdc:	e55ff06f          	j	80007b30 <__memset+0x2c>
    80007ce0:	00300e93          	li	t4,3
    80007ce4:	ea5ff06f          	j	80007b88 <__memset+0x84>
    80007ce8:	00100e93          	li	t4,1
    80007cec:	e9dff06f          	j	80007b88 <__memset+0x84>
    80007cf0:	00000e93          	li	t4,0
    80007cf4:	e95ff06f          	j	80007b88 <__memset+0x84>
    80007cf8:	00000793          	li	a5,0
    80007cfc:	ef9ff06f          	j	80007bf4 <__memset+0xf0>
    80007d00:	00200e93          	li	t4,2
    80007d04:	e85ff06f          	j	80007b88 <__memset+0x84>
    80007d08:	00400e93          	li	t4,4
    80007d0c:	e7dff06f          	j	80007b88 <__memset+0x84>
    80007d10:	00500e93          	li	t4,5
    80007d14:	e75ff06f          	j	80007b88 <__memset+0x84>
    80007d18:	00600e93          	li	t4,6
    80007d1c:	e6dff06f          	j	80007b88 <__memset+0x84>

0000000080007d20 <__memmove>:
    80007d20:	ff010113          	addi	sp,sp,-16
    80007d24:	00813423          	sd	s0,8(sp)
    80007d28:	01010413          	addi	s0,sp,16
    80007d2c:	0e060863          	beqz	a2,80007e1c <__memmove+0xfc>
    80007d30:	fff6069b          	addiw	a3,a2,-1
    80007d34:	0006881b          	sext.w	a6,a3
    80007d38:	0ea5e863          	bltu	a1,a0,80007e28 <__memmove+0x108>
    80007d3c:	00758713          	addi	a4,a1,7
    80007d40:	00a5e7b3          	or	a5,a1,a0
    80007d44:	40a70733          	sub	a4,a4,a0
    80007d48:	0077f793          	andi	a5,a5,7
    80007d4c:	00f73713          	sltiu	a4,a4,15
    80007d50:	00174713          	xori	a4,a4,1
    80007d54:	0017b793          	seqz	a5,a5
    80007d58:	00e7f7b3          	and	a5,a5,a4
    80007d5c:	10078863          	beqz	a5,80007e6c <__memmove+0x14c>
    80007d60:	00900793          	li	a5,9
    80007d64:	1107f463          	bgeu	a5,a6,80007e6c <__memmove+0x14c>
    80007d68:	0036581b          	srliw	a6,a2,0x3
    80007d6c:	fff8081b          	addiw	a6,a6,-1
    80007d70:	02081813          	slli	a6,a6,0x20
    80007d74:	01d85893          	srli	a7,a6,0x1d
    80007d78:	00858813          	addi	a6,a1,8
    80007d7c:	00058793          	mv	a5,a1
    80007d80:	00050713          	mv	a4,a0
    80007d84:	01088833          	add	a6,a7,a6
    80007d88:	0007b883          	ld	a7,0(a5)
    80007d8c:	00878793          	addi	a5,a5,8
    80007d90:	00870713          	addi	a4,a4,8
    80007d94:	ff173c23          	sd	a7,-8(a4)
    80007d98:	ff0798e3          	bne	a5,a6,80007d88 <__memmove+0x68>
    80007d9c:	ff867713          	andi	a4,a2,-8
    80007da0:	02071793          	slli	a5,a4,0x20
    80007da4:	0207d793          	srli	a5,a5,0x20
    80007da8:	00f585b3          	add	a1,a1,a5
    80007dac:	40e686bb          	subw	a3,a3,a4
    80007db0:	00f507b3          	add	a5,a0,a5
    80007db4:	06e60463          	beq	a2,a4,80007e1c <__memmove+0xfc>
    80007db8:	0005c703          	lbu	a4,0(a1)
    80007dbc:	00e78023          	sb	a4,0(a5)
    80007dc0:	04068e63          	beqz	a3,80007e1c <__memmove+0xfc>
    80007dc4:	0015c603          	lbu	a2,1(a1)
    80007dc8:	00100713          	li	a4,1
    80007dcc:	00c780a3          	sb	a2,1(a5)
    80007dd0:	04e68663          	beq	a3,a4,80007e1c <__memmove+0xfc>
    80007dd4:	0025c603          	lbu	a2,2(a1)
    80007dd8:	00200713          	li	a4,2
    80007ddc:	00c78123          	sb	a2,2(a5)
    80007de0:	02e68e63          	beq	a3,a4,80007e1c <__memmove+0xfc>
    80007de4:	0035c603          	lbu	a2,3(a1)
    80007de8:	00300713          	li	a4,3
    80007dec:	00c781a3          	sb	a2,3(a5)
    80007df0:	02e68663          	beq	a3,a4,80007e1c <__memmove+0xfc>
    80007df4:	0045c603          	lbu	a2,4(a1)
    80007df8:	00400713          	li	a4,4
    80007dfc:	00c78223          	sb	a2,4(a5)
    80007e00:	00e68e63          	beq	a3,a4,80007e1c <__memmove+0xfc>
    80007e04:	0055c603          	lbu	a2,5(a1)
    80007e08:	00500713          	li	a4,5
    80007e0c:	00c782a3          	sb	a2,5(a5)
    80007e10:	00e68663          	beq	a3,a4,80007e1c <__memmove+0xfc>
    80007e14:	0065c703          	lbu	a4,6(a1)
    80007e18:	00e78323          	sb	a4,6(a5)
    80007e1c:	00813403          	ld	s0,8(sp)
    80007e20:	01010113          	addi	sp,sp,16
    80007e24:	00008067          	ret
    80007e28:	02061713          	slli	a4,a2,0x20
    80007e2c:	02075713          	srli	a4,a4,0x20
    80007e30:	00e587b3          	add	a5,a1,a4
    80007e34:	f0f574e3          	bgeu	a0,a5,80007d3c <__memmove+0x1c>
    80007e38:	02069613          	slli	a2,a3,0x20
    80007e3c:	02065613          	srli	a2,a2,0x20
    80007e40:	fff64613          	not	a2,a2
    80007e44:	00e50733          	add	a4,a0,a4
    80007e48:	00c78633          	add	a2,a5,a2
    80007e4c:	fff7c683          	lbu	a3,-1(a5)
    80007e50:	fff78793          	addi	a5,a5,-1
    80007e54:	fff70713          	addi	a4,a4,-1
    80007e58:	00d70023          	sb	a3,0(a4)
    80007e5c:	fec798e3          	bne	a5,a2,80007e4c <__memmove+0x12c>
    80007e60:	00813403          	ld	s0,8(sp)
    80007e64:	01010113          	addi	sp,sp,16
    80007e68:	00008067          	ret
    80007e6c:	02069713          	slli	a4,a3,0x20
    80007e70:	02075713          	srli	a4,a4,0x20
    80007e74:	00170713          	addi	a4,a4,1
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00050793          	mv	a5,a0
    80007e80:	0005c683          	lbu	a3,0(a1)
    80007e84:	00178793          	addi	a5,a5,1
    80007e88:	00158593          	addi	a1,a1,1
    80007e8c:	fed78fa3          	sb	a3,-1(a5)
    80007e90:	fee798e3          	bne	a5,a4,80007e80 <__memmove+0x160>
    80007e94:	f89ff06f          	j	80007e1c <__memmove+0xfc>
	...
    80007ea0:	00000013          	nop
    80007ea4:	00000013          	nop
    80007ea8:	00000013          	nop

0000000080007eac <kernelvec>:
    80007eac:	f0010113          	addi	sp,sp,-256
    80007eb0:	00113023          	sd	ra,0(sp)
    80007eb4:	00213423          	sd	sp,8(sp)
    80007eb8:	00313823          	sd	gp,16(sp)
    80007ebc:	00413c23          	sd	tp,24(sp)
    80007ec0:	02513023          	sd	t0,32(sp)
    80007ec4:	02613423          	sd	t1,40(sp)
    80007ec8:	02713823          	sd	t2,48(sp)
    80007ecc:	02813c23          	sd	s0,56(sp)
    80007ed0:	04913023          	sd	s1,64(sp)
    80007ed4:	04a13423          	sd	a0,72(sp)
    80007ed8:	04b13823          	sd	a1,80(sp)
    80007edc:	04c13c23          	sd	a2,88(sp)
    80007ee0:	06d13023          	sd	a3,96(sp)
    80007ee4:	06e13423          	sd	a4,104(sp)
    80007ee8:	06f13823          	sd	a5,112(sp)
    80007eec:	07013c23          	sd	a6,120(sp)
    80007ef0:	09113023          	sd	a7,128(sp)
    80007ef4:	09213423          	sd	s2,136(sp)
    80007ef8:	09313823          	sd	s3,144(sp)
    80007efc:	09413c23          	sd	s4,152(sp)
    80007f00:	0b513023          	sd	s5,160(sp)
    80007f04:	0b613423          	sd	s6,168(sp)
    80007f08:	0b713823          	sd	s7,176(sp)
    80007f0c:	0b813c23          	sd	s8,184(sp)
    80007f10:	0d913023          	sd	s9,192(sp)
    80007f14:	0da13423          	sd	s10,200(sp)
    80007f18:	0db13823          	sd	s11,208(sp)
    80007f1c:	0dc13c23          	sd	t3,216(sp)
    80007f20:	0fd13023          	sd	t4,224(sp)
    80007f24:	0fe13423          	sd	t5,232(sp)
    80007f28:	0ff13823          	sd	t6,240(sp)
    80007f2c:	00000097          	auipc	ra,0x0
    80007f30:	000080e7          	jalr	ra # 80007f2c <kernelvec+0x80>
    80007f34:	00013083          	ld	ra,0(sp)
    80007f38:	00813103          	ld	sp,8(sp)
    80007f3c:	01013183          	ld	gp,16(sp)
    80007f40:	02013283          	ld	t0,32(sp)
    80007f44:	02813303          	ld	t1,40(sp)
    80007f48:	03013383          	ld	t2,48(sp)
    80007f4c:	03813403          	ld	s0,56(sp)
    80007f50:	04013483          	ld	s1,64(sp)
    80007f54:	04813503          	ld	a0,72(sp)
    80007f58:	05013583          	ld	a1,80(sp)
    80007f5c:	05813603          	ld	a2,88(sp)
    80007f60:	06013683          	ld	a3,96(sp)
    80007f64:	06813703          	ld	a4,104(sp)
    80007f68:	07013783          	ld	a5,112(sp)
    80007f6c:	07813803          	ld	a6,120(sp)
    80007f70:	08013883          	ld	a7,128(sp)
    80007f74:	08813903          	ld	s2,136(sp)
    80007f78:	09013983          	ld	s3,144(sp)
    80007f7c:	09813a03          	ld	s4,152(sp)
    80007f80:	0a013a83          	ld	s5,160(sp)
    80007f84:	0a813b03          	ld	s6,168(sp)
    80007f88:	0b013b83          	ld	s7,176(sp)
    80007f8c:	0b813c03          	ld	s8,184(sp)
    80007f90:	0c013c83          	ld	s9,192(sp)
    80007f94:	0c813d03          	ld	s10,200(sp)
    80007f98:	0d013d83          	ld	s11,208(sp)
    80007f9c:	0d813e03          	ld	t3,216(sp)
    80007fa0:	0e013e83          	ld	t4,224(sp)
    80007fa4:	0e813f03          	ld	t5,232(sp)
    80007fa8:	0f013f83          	ld	t6,240(sp)
    80007fac:	10010113          	addi	sp,sp,256
    80007fb0:	10200073          	sret
    80007fb4:	00000013          	nop
    80007fb8:	00000013          	nop
    80007fbc:	00000013          	nop

0000000080007fc0 <timervec>:
    80007fc0:	34051573          	csrrw	a0,mscratch,a0
    80007fc4:	00b53023          	sd	a1,0(a0)
    80007fc8:	00c53423          	sd	a2,8(a0)
    80007fcc:	00d53823          	sd	a3,16(a0)
    80007fd0:	01853583          	ld	a1,24(a0)
    80007fd4:	02053603          	ld	a2,32(a0)
    80007fd8:	0005b683          	ld	a3,0(a1)
    80007fdc:	00c686b3          	add	a3,a3,a2
    80007fe0:	00d5b023          	sd	a3,0(a1)
    80007fe4:	00200593          	li	a1,2
    80007fe8:	14459073          	csrw	sip,a1
    80007fec:	01053683          	ld	a3,16(a0)
    80007ff0:	00853603          	ld	a2,8(a0)
    80007ff4:	00053583          	ld	a1,0(a0)
    80007ff8:	34051573          	csrrw	a0,mscratch,a0
    80007ffc:	30200073          	mret

0000000080008000 <system_main>:
    80008000:	fe010113          	addi	sp,sp,-32
    80008004:	00813823          	sd	s0,16(sp)
    80008008:	00913423          	sd	s1,8(sp)
    8000800c:	00113c23          	sd	ra,24(sp)
    80008010:	02010413          	addi	s0,sp,32
    80008014:	00000097          	auipc	ra,0x0
    80008018:	864080e7          	jalr	-1948(ra) # 80007878 <cpuid>
    8000801c:	00005497          	auipc	s1,0x5
    80008020:	03448493          	addi	s1,s1,52 # 8000d050 <started>
    80008024:	02050263          	beqz	a0,80008048 <system_main+0x48>
    80008028:	0004a783          	lw	a5,0(s1)
    8000802c:	0007879b          	sext.w	a5,a5
    80008030:	fe078ce3          	beqz	a5,80008028 <system_main+0x28>
    80008034:	0ff0000f          	fence
    80008038:	00002517          	auipc	a0,0x2
    8000803c:	6b850513          	addi	a0,a0,1720 # 8000a6f0 <CONSOLE_STATUS+0x6d0>
    80008040:	00000097          	auipc	ra,0x0
    80008044:	098080e7          	jalr	152(ra) # 800080d8 <panic>
    80008048:	00001097          	auipc	ra,0x1
    8000804c:	4e0080e7          	jalr	1248(ra) # 80009528 <consoleinit>
    80008050:	00000097          	auipc	ra,0x0
    80008054:	778080e7          	jalr	1912(ra) # 800087c8 <printfinit>
    80008058:	00002517          	auipc	a0,0x2
    8000805c:	1a850513          	addi	a0,a0,424 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80008060:	00000097          	auipc	ra,0x0
    80008064:	0d4080e7          	jalr	212(ra) # 80008134 <__printf>
    80008068:	00002517          	auipc	a0,0x2
    8000806c:	65850513          	addi	a0,a0,1624 # 8000a6c0 <CONSOLE_STATUS+0x6a0>
    80008070:	00000097          	auipc	ra,0x0
    80008074:	0c4080e7          	jalr	196(ra) # 80008134 <__printf>
    80008078:	00002517          	auipc	a0,0x2
    8000807c:	18850513          	addi	a0,a0,392 # 8000a200 <CONSOLE_STATUS+0x1e0>
    80008080:	00000097          	auipc	ra,0x0
    80008084:	0b4080e7          	jalr	180(ra) # 80008134 <__printf>
    80008088:	00001097          	auipc	ra,0x1
    8000808c:	544080e7          	jalr	1348(ra) # 800095cc <kinit>
    80008090:	00001097          	auipc	ra,0x1
    80008094:	b60080e7          	jalr	-1184(ra) # 80008bf0 <trapinit>
    80008098:	00001097          	auipc	ra,0x1
    8000809c:	b84080e7          	jalr	-1148(ra) # 80008c1c <trapinithart>
    800080a0:	fffff097          	auipc	ra,0xfffff
    800080a4:	6e8080e7          	jalr	1768(ra) # 80007788 <plicinit>
    800080a8:	fffff097          	auipc	ra,0xfffff
    800080ac:	708080e7          	jalr	1800(ra) # 800077b0 <plicinithart>
    800080b0:	00000097          	auipc	ra,0x0
    800080b4:	818080e7          	jalr	-2024(ra) # 800078c8 <userinit>
    800080b8:	0ff0000f          	fence
    800080bc:	00100793          	li	a5,1
    800080c0:	00002517          	auipc	a0,0x2
    800080c4:	61850513          	addi	a0,a0,1560 # 8000a6d8 <CONSOLE_STATUS+0x6b8>
    800080c8:	00f4a023          	sw	a5,0(s1)
    800080cc:	00000097          	auipc	ra,0x0
    800080d0:	068080e7          	jalr	104(ra) # 80008134 <__printf>
    800080d4:	0000006f          	j	800080d4 <system_main+0xd4>

00000000800080d8 <panic>:
    800080d8:	fe010113          	addi	sp,sp,-32
    800080dc:	00113c23          	sd	ra,24(sp)
    800080e0:	00813823          	sd	s0,16(sp)
    800080e4:	00913423          	sd	s1,8(sp)
    800080e8:	02010413          	addi	s0,sp,32
    800080ec:	00050493          	mv	s1,a0
    800080f0:	00002517          	auipc	a0,0x2
    800080f4:	62850513          	addi	a0,a0,1576 # 8000a718 <CONSOLE_STATUS+0x6f8>
    800080f8:	0000b797          	auipc	a5,0xb
    800080fc:	1407a023          	sw	zero,320(a5) # 80013238 <pr+0x18>
    80008100:	00000097          	auipc	ra,0x0
    80008104:	034080e7          	jalr	52(ra) # 80008134 <__printf>
    80008108:	00048513          	mv	a0,s1
    8000810c:	00000097          	auipc	ra,0x0
    80008110:	028080e7          	jalr	40(ra) # 80008134 <__printf>
    80008114:	00002517          	auipc	a0,0x2
    80008118:	0ec50513          	addi	a0,a0,236 # 8000a200 <CONSOLE_STATUS+0x1e0>
    8000811c:	00000097          	auipc	ra,0x0
    80008120:	018080e7          	jalr	24(ra) # 80008134 <__printf>
    80008124:	00100793          	li	a5,1
    80008128:	00005717          	auipc	a4,0x5
    8000812c:	f2f72623          	sw	a5,-212(a4) # 8000d054 <panicked>
    80008130:	0000006f          	j	80008130 <panic+0x58>

0000000080008134 <__printf>:
    80008134:	f3010113          	addi	sp,sp,-208
    80008138:	08813023          	sd	s0,128(sp)
    8000813c:	07313423          	sd	s3,104(sp)
    80008140:	09010413          	addi	s0,sp,144
    80008144:	05813023          	sd	s8,64(sp)
    80008148:	08113423          	sd	ra,136(sp)
    8000814c:	06913c23          	sd	s1,120(sp)
    80008150:	07213823          	sd	s2,112(sp)
    80008154:	07413023          	sd	s4,96(sp)
    80008158:	05513c23          	sd	s5,88(sp)
    8000815c:	05613823          	sd	s6,80(sp)
    80008160:	05713423          	sd	s7,72(sp)
    80008164:	03913c23          	sd	s9,56(sp)
    80008168:	03a13823          	sd	s10,48(sp)
    8000816c:	03b13423          	sd	s11,40(sp)
    80008170:	0000b317          	auipc	t1,0xb
    80008174:	0b030313          	addi	t1,t1,176 # 80013220 <pr>
    80008178:	01832c03          	lw	s8,24(t1)
    8000817c:	00b43423          	sd	a1,8(s0)
    80008180:	00c43823          	sd	a2,16(s0)
    80008184:	00d43c23          	sd	a3,24(s0)
    80008188:	02e43023          	sd	a4,32(s0)
    8000818c:	02f43423          	sd	a5,40(s0)
    80008190:	03043823          	sd	a6,48(s0)
    80008194:	03143c23          	sd	a7,56(s0)
    80008198:	00050993          	mv	s3,a0
    8000819c:	4a0c1663          	bnez	s8,80008648 <__printf+0x514>
    800081a0:	60098c63          	beqz	s3,800087b8 <__printf+0x684>
    800081a4:	0009c503          	lbu	a0,0(s3)
    800081a8:	00840793          	addi	a5,s0,8
    800081ac:	f6f43c23          	sd	a5,-136(s0)
    800081b0:	00000493          	li	s1,0
    800081b4:	22050063          	beqz	a0,800083d4 <__printf+0x2a0>
    800081b8:	00002a37          	lui	s4,0x2
    800081bc:	00018ab7          	lui	s5,0x18
    800081c0:	000f4b37          	lui	s6,0xf4
    800081c4:	00989bb7          	lui	s7,0x989
    800081c8:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800081cc:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800081d0:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800081d4:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800081d8:	00148c9b          	addiw	s9,s1,1
    800081dc:	02500793          	li	a5,37
    800081e0:	01998933          	add	s2,s3,s9
    800081e4:	38f51263          	bne	a0,a5,80008568 <__printf+0x434>
    800081e8:	00094783          	lbu	a5,0(s2)
    800081ec:	00078c9b          	sext.w	s9,a5
    800081f0:	1e078263          	beqz	a5,800083d4 <__printf+0x2a0>
    800081f4:	0024849b          	addiw	s1,s1,2
    800081f8:	07000713          	li	a4,112
    800081fc:	00998933          	add	s2,s3,s1
    80008200:	38e78a63          	beq	a5,a4,80008594 <__printf+0x460>
    80008204:	20f76863          	bltu	a4,a5,80008414 <__printf+0x2e0>
    80008208:	42a78863          	beq	a5,a0,80008638 <__printf+0x504>
    8000820c:	06400713          	li	a4,100
    80008210:	40e79663          	bne	a5,a4,8000861c <__printf+0x4e8>
    80008214:	f7843783          	ld	a5,-136(s0)
    80008218:	0007a603          	lw	a2,0(a5)
    8000821c:	00878793          	addi	a5,a5,8
    80008220:	f6f43c23          	sd	a5,-136(s0)
    80008224:	42064a63          	bltz	a2,80008658 <__printf+0x524>
    80008228:	00a00713          	li	a4,10
    8000822c:	02e677bb          	remuw	a5,a2,a4
    80008230:	00002d97          	auipc	s11,0x2
    80008234:	618d8d93          	addi	s11,s11,1560 # 8000a848 <digits>
    80008238:	00900593          	li	a1,9
    8000823c:	0006051b          	sext.w	a0,a2
    80008240:	00000c93          	li	s9,0
    80008244:	02079793          	slli	a5,a5,0x20
    80008248:	0207d793          	srli	a5,a5,0x20
    8000824c:	00fd87b3          	add	a5,s11,a5
    80008250:	0007c783          	lbu	a5,0(a5)
    80008254:	02e656bb          	divuw	a3,a2,a4
    80008258:	f8f40023          	sb	a5,-128(s0)
    8000825c:	14c5d863          	bge	a1,a2,800083ac <__printf+0x278>
    80008260:	06300593          	li	a1,99
    80008264:	00100c93          	li	s9,1
    80008268:	02e6f7bb          	remuw	a5,a3,a4
    8000826c:	02079793          	slli	a5,a5,0x20
    80008270:	0207d793          	srli	a5,a5,0x20
    80008274:	00fd87b3          	add	a5,s11,a5
    80008278:	0007c783          	lbu	a5,0(a5)
    8000827c:	02e6d73b          	divuw	a4,a3,a4
    80008280:	f8f400a3          	sb	a5,-127(s0)
    80008284:	12a5f463          	bgeu	a1,a0,800083ac <__printf+0x278>
    80008288:	00a00693          	li	a3,10
    8000828c:	00900593          	li	a1,9
    80008290:	02d777bb          	remuw	a5,a4,a3
    80008294:	02079793          	slli	a5,a5,0x20
    80008298:	0207d793          	srli	a5,a5,0x20
    8000829c:	00fd87b3          	add	a5,s11,a5
    800082a0:	0007c503          	lbu	a0,0(a5)
    800082a4:	02d757bb          	divuw	a5,a4,a3
    800082a8:	f8a40123          	sb	a0,-126(s0)
    800082ac:	48e5f263          	bgeu	a1,a4,80008730 <__printf+0x5fc>
    800082b0:	06300513          	li	a0,99
    800082b4:	02d7f5bb          	remuw	a1,a5,a3
    800082b8:	02059593          	slli	a1,a1,0x20
    800082bc:	0205d593          	srli	a1,a1,0x20
    800082c0:	00bd85b3          	add	a1,s11,a1
    800082c4:	0005c583          	lbu	a1,0(a1)
    800082c8:	02d7d7bb          	divuw	a5,a5,a3
    800082cc:	f8b401a3          	sb	a1,-125(s0)
    800082d0:	48e57263          	bgeu	a0,a4,80008754 <__printf+0x620>
    800082d4:	3e700513          	li	a0,999
    800082d8:	02d7f5bb          	remuw	a1,a5,a3
    800082dc:	02059593          	slli	a1,a1,0x20
    800082e0:	0205d593          	srli	a1,a1,0x20
    800082e4:	00bd85b3          	add	a1,s11,a1
    800082e8:	0005c583          	lbu	a1,0(a1)
    800082ec:	02d7d7bb          	divuw	a5,a5,a3
    800082f0:	f8b40223          	sb	a1,-124(s0)
    800082f4:	46e57663          	bgeu	a0,a4,80008760 <__printf+0x62c>
    800082f8:	02d7f5bb          	remuw	a1,a5,a3
    800082fc:	02059593          	slli	a1,a1,0x20
    80008300:	0205d593          	srli	a1,a1,0x20
    80008304:	00bd85b3          	add	a1,s11,a1
    80008308:	0005c583          	lbu	a1,0(a1)
    8000830c:	02d7d7bb          	divuw	a5,a5,a3
    80008310:	f8b402a3          	sb	a1,-123(s0)
    80008314:	46ea7863          	bgeu	s4,a4,80008784 <__printf+0x650>
    80008318:	02d7f5bb          	remuw	a1,a5,a3
    8000831c:	02059593          	slli	a1,a1,0x20
    80008320:	0205d593          	srli	a1,a1,0x20
    80008324:	00bd85b3          	add	a1,s11,a1
    80008328:	0005c583          	lbu	a1,0(a1)
    8000832c:	02d7d7bb          	divuw	a5,a5,a3
    80008330:	f8b40323          	sb	a1,-122(s0)
    80008334:	3eeaf863          	bgeu	s5,a4,80008724 <__printf+0x5f0>
    80008338:	02d7f5bb          	remuw	a1,a5,a3
    8000833c:	02059593          	slli	a1,a1,0x20
    80008340:	0205d593          	srli	a1,a1,0x20
    80008344:	00bd85b3          	add	a1,s11,a1
    80008348:	0005c583          	lbu	a1,0(a1)
    8000834c:	02d7d7bb          	divuw	a5,a5,a3
    80008350:	f8b403a3          	sb	a1,-121(s0)
    80008354:	42eb7e63          	bgeu	s6,a4,80008790 <__printf+0x65c>
    80008358:	02d7f5bb          	remuw	a1,a5,a3
    8000835c:	02059593          	slli	a1,a1,0x20
    80008360:	0205d593          	srli	a1,a1,0x20
    80008364:	00bd85b3          	add	a1,s11,a1
    80008368:	0005c583          	lbu	a1,0(a1)
    8000836c:	02d7d7bb          	divuw	a5,a5,a3
    80008370:	f8b40423          	sb	a1,-120(s0)
    80008374:	42ebfc63          	bgeu	s7,a4,800087ac <__printf+0x678>
    80008378:	02079793          	slli	a5,a5,0x20
    8000837c:	0207d793          	srli	a5,a5,0x20
    80008380:	00fd8db3          	add	s11,s11,a5
    80008384:	000dc703          	lbu	a4,0(s11)
    80008388:	00a00793          	li	a5,10
    8000838c:	00900c93          	li	s9,9
    80008390:	f8e404a3          	sb	a4,-119(s0)
    80008394:	00065c63          	bgez	a2,800083ac <__printf+0x278>
    80008398:	f9040713          	addi	a4,s0,-112
    8000839c:	00f70733          	add	a4,a4,a5
    800083a0:	02d00693          	li	a3,45
    800083a4:	fed70823          	sb	a3,-16(a4)
    800083a8:	00078c93          	mv	s9,a5
    800083ac:	f8040793          	addi	a5,s0,-128
    800083b0:	01978cb3          	add	s9,a5,s9
    800083b4:	f7f40d13          	addi	s10,s0,-129
    800083b8:	000cc503          	lbu	a0,0(s9)
    800083bc:	fffc8c93          	addi	s9,s9,-1
    800083c0:	00001097          	auipc	ra,0x1
    800083c4:	084080e7          	jalr	132(ra) # 80009444 <consputc>
    800083c8:	ffac98e3          	bne	s9,s10,800083b8 <__printf+0x284>
    800083cc:	00094503          	lbu	a0,0(s2)
    800083d0:	e00514e3          	bnez	a0,800081d8 <__printf+0xa4>
    800083d4:	1a0c1663          	bnez	s8,80008580 <__printf+0x44c>
    800083d8:	08813083          	ld	ra,136(sp)
    800083dc:	08013403          	ld	s0,128(sp)
    800083e0:	07813483          	ld	s1,120(sp)
    800083e4:	07013903          	ld	s2,112(sp)
    800083e8:	06813983          	ld	s3,104(sp)
    800083ec:	06013a03          	ld	s4,96(sp)
    800083f0:	05813a83          	ld	s5,88(sp)
    800083f4:	05013b03          	ld	s6,80(sp)
    800083f8:	04813b83          	ld	s7,72(sp)
    800083fc:	04013c03          	ld	s8,64(sp)
    80008400:	03813c83          	ld	s9,56(sp)
    80008404:	03013d03          	ld	s10,48(sp)
    80008408:	02813d83          	ld	s11,40(sp)
    8000840c:	0d010113          	addi	sp,sp,208
    80008410:	00008067          	ret
    80008414:	07300713          	li	a4,115
    80008418:	1ce78a63          	beq	a5,a4,800085ec <__printf+0x4b8>
    8000841c:	07800713          	li	a4,120
    80008420:	1ee79e63          	bne	a5,a4,8000861c <__printf+0x4e8>
    80008424:	f7843783          	ld	a5,-136(s0)
    80008428:	0007a703          	lw	a4,0(a5)
    8000842c:	00878793          	addi	a5,a5,8
    80008430:	f6f43c23          	sd	a5,-136(s0)
    80008434:	28074263          	bltz	a4,800086b8 <__printf+0x584>
    80008438:	00002d97          	auipc	s11,0x2
    8000843c:	410d8d93          	addi	s11,s11,1040 # 8000a848 <digits>
    80008440:	00f77793          	andi	a5,a4,15
    80008444:	00fd87b3          	add	a5,s11,a5
    80008448:	0007c683          	lbu	a3,0(a5)
    8000844c:	00f00613          	li	a2,15
    80008450:	0007079b          	sext.w	a5,a4
    80008454:	f8d40023          	sb	a3,-128(s0)
    80008458:	0047559b          	srliw	a1,a4,0x4
    8000845c:	0047569b          	srliw	a3,a4,0x4
    80008460:	00000c93          	li	s9,0
    80008464:	0ee65063          	bge	a2,a4,80008544 <__printf+0x410>
    80008468:	00f6f693          	andi	a3,a3,15
    8000846c:	00dd86b3          	add	a3,s11,a3
    80008470:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008474:	0087d79b          	srliw	a5,a5,0x8
    80008478:	00100c93          	li	s9,1
    8000847c:	f8d400a3          	sb	a3,-127(s0)
    80008480:	0cb67263          	bgeu	a2,a1,80008544 <__printf+0x410>
    80008484:	00f7f693          	andi	a3,a5,15
    80008488:	00dd86b3          	add	a3,s11,a3
    8000848c:	0006c583          	lbu	a1,0(a3)
    80008490:	00f00613          	li	a2,15
    80008494:	0047d69b          	srliw	a3,a5,0x4
    80008498:	f8b40123          	sb	a1,-126(s0)
    8000849c:	0047d593          	srli	a1,a5,0x4
    800084a0:	28f67e63          	bgeu	a2,a5,8000873c <__printf+0x608>
    800084a4:	00f6f693          	andi	a3,a3,15
    800084a8:	00dd86b3          	add	a3,s11,a3
    800084ac:	0006c503          	lbu	a0,0(a3)
    800084b0:	0087d813          	srli	a6,a5,0x8
    800084b4:	0087d69b          	srliw	a3,a5,0x8
    800084b8:	f8a401a3          	sb	a0,-125(s0)
    800084bc:	28b67663          	bgeu	a2,a1,80008748 <__printf+0x614>
    800084c0:	00f6f693          	andi	a3,a3,15
    800084c4:	00dd86b3          	add	a3,s11,a3
    800084c8:	0006c583          	lbu	a1,0(a3)
    800084cc:	00c7d513          	srli	a0,a5,0xc
    800084d0:	00c7d69b          	srliw	a3,a5,0xc
    800084d4:	f8b40223          	sb	a1,-124(s0)
    800084d8:	29067a63          	bgeu	a2,a6,8000876c <__printf+0x638>
    800084dc:	00f6f693          	andi	a3,a3,15
    800084e0:	00dd86b3          	add	a3,s11,a3
    800084e4:	0006c583          	lbu	a1,0(a3)
    800084e8:	0107d813          	srli	a6,a5,0x10
    800084ec:	0107d69b          	srliw	a3,a5,0x10
    800084f0:	f8b402a3          	sb	a1,-123(s0)
    800084f4:	28a67263          	bgeu	a2,a0,80008778 <__printf+0x644>
    800084f8:	00f6f693          	andi	a3,a3,15
    800084fc:	00dd86b3          	add	a3,s11,a3
    80008500:	0006c683          	lbu	a3,0(a3)
    80008504:	0147d79b          	srliw	a5,a5,0x14
    80008508:	f8d40323          	sb	a3,-122(s0)
    8000850c:	21067663          	bgeu	a2,a6,80008718 <__printf+0x5e4>
    80008510:	02079793          	slli	a5,a5,0x20
    80008514:	0207d793          	srli	a5,a5,0x20
    80008518:	00fd8db3          	add	s11,s11,a5
    8000851c:	000dc683          	lbu	a3,0(s11)
    80008520:	00800793          	li	a5,8
    80008524:	00700c93          	li	s9,7
    80008528:	f8d403a3          	sb	a3,-121(s0)
    8000852c:	00075c63          	bgez	a4,80008544 <__printf+0x410>
    80008530:	f9040713          	addi	a4,s0,-112
    80008534:	00f70733          	add	a4,a4,a5
    80008538:	02d00693          	li	a3,45
    8000853c:	fed70823          	sb	a3,-16(a4)
    80008540:	00078c93          	mv	s9,a5
    80008544:	f8040793          	addi	a5,s0,-128
    80008548:	01978cb3          	add	s9,a5,s9
    8000854c:	f7f40d13          	addi	s10,s0,-129
    80008550:	000cc503          	lbu	a0,0(s9)
    80008554:	fffc8c93          	addi	s9,s9,-1
    80008558:	00001097          	auipc	ra,0x1
    8000855c:	eec080e7          	jalr	-276(ra) # 80009444 <consputc>
    80008560:	ff9d18e3          	bne	s10,s9,80008550 <__printf+0x41c>
    80008564:	0100006f          	j	80008574 <__printf+0x440>
    80008568:	00001097          	auipc	ra,0x1
    8000856c:	edc080e7          	jalr	-292(ra) # 80009444 <consputc>
    80008570:	000c8493          	mv	s1,s9
    80008574:	00094503          	lbu	a0,0(s2)
    80008578:	c60510e3          	bnez	a0,800081d8 <__printf+0xa4>
    8000857c:	e40c0ee3          	beqz	s8,800083d8 <__printf+0x2a4>
    80008580:	0000b517          	auipc	a0,0xb
    80008584:	ca050513          	addi	a0,a0,-864 # 80013220 <pr>
    80008588:	00000097          	auipc	ra,0x0
    8000858c:	378080e7          	jalr	888(ra) # 80008900 <release>
    80008590:	e49ff06f          	j	800083d8 <__printf+0x2a4>
    80008594:	f7843783          	ld	a5,-136(s0)
    80008598:	03000513          	li	a0,48
    8000859c:	01000d13          	li	s10,16
    800085a0:	00878713          	addi	a4,a5,8
    800085a4:	0007bc83          	ld	s9,0(a5)
    800085a8:	f6e43c23          	sd	a4,-136(s0)
    800085ac:	00001097          	auipc	ra,0x1
    800085b0:	e98080e7          	jalr	-360(ra) # 80009444 <consputc>
    800085b4:	07800513          	li	a0,120
    800085b8:	00001097          	auipc	ra,0x1
    800085bc:	e8c080e7          	jalr	-372(ra) # 80009444 <consputc>
    800085c0:	00002d97          	auipc	s11,0x2
    800085c4:	288d8d93          	addi	s11,s11,648 # 8000a848 <digits>
    800085c8:	03ccd793          	srli	a5,s9,0x3c
    800085cc:	00fd87b3          	add	a5,s11,a5
    800085d0:	0007c503          	lbu	a0,0(a5)
    800085d4:	fffd0d1b          	addiw	s10,s10,-1
    800085d8:	004c9c93          	slli	s9,s9,0x4
    800085dc:	00001097          	auipc	ra,0x1
    800085e0:	e68080e7          	jalr	-408(ra) # 80009444 <consputc>
    800085e4:	fe0d12e3          	bnez	s10,800085c8 <__printf+0x494>
    800085e8:	f8dff06f          	j	80008574 <__printf+0x440>
    800085ec:	f7843783          	ld	a5,-136(s0)
    800085f0:	0007bc83          	ld	s9,0(a5)
    800085f4:	00878793          	addi	a5,a5,8
    800085f8:	f6f43c23          	sd	a5,-136(s0)
    800085fc:	000c9a63          	bnez	s9,80008610 <__printf+0x4dc>
    80008600:	1080006f          	j	80008708 <__printf+0x5d4>
    80008604:	001c8c93          	addi	s9,s9,1
    80008608:	00001097          	auipc	ra,0x1
    8000860c:	e3c080e7          	jalr	-452(ra) # 80009444 <consputc>
    80008610:	000cc503          	lbu	a0,0(s9)
    80008614:	fe0518e3          	bnez	a0,80008604 <__printf+0x4d0>
    80008618:	f5dff06f          	j	80008574 <__printf+0x440>
    8000861c:	02500513          	li	a0,37
    80008620:	00001097          	auipc	ra,0x1
    80008624:	e24080e7          	jalr	-476(ra) # 80009444 <consputc>
    80008628:	000c8513          	mv	a0,s9
    8000862c:	00001097          	auipc	ra,0x1
    80008630:	e18080e7          	jalr	-488(ra) # 80009444 <consputc>
    80008634:	f41ff06f          	j	80008574 <__printf+0x440>
    80008638:	02500513          	li	a0,37
    8000863c:	00001097          	auipc	ra,0x1
    80008640:	e08080e7          	jalr	-504(ra) # 80009444 <consputc>
    80008644:	f31ff06f          	j	80008574 <__printf+0x440>
    80008648:	00030513          	mv	a0,t1
    8000864c:	00000097          	auipc	ra,0x0
    80008650:	1e8080e7          	jalr	488(ra) # 80008834 <acquire>
    80008654:	b4dff06f          	j	800081a0 <__printf+0x6c>
    80008658:	40c0053b          	negw	a0,a2
    8000865c:	00a00713          	li	a4,10
    80008660:	02e576bb          	remuw	a3,a0,a4
    80008664:	00002d97          	auipc	s11,0x2
    80008668:	1e4d8d93          	addi	s11,s11,484 # 8000a848 <digits>
    8000866c:	ff700593          	li	a1,-9
    80008670:	02069693          	slli	a3,a3,0x20
    80008674:	0206d693          	srli	a3,a3,0x20
    80008678:	00dd86b3          	add	a3,s11,a3
    8000867c:	0006c683          	lbu	a3,0(a3)
    80008680:	02e557bb          	divuw	a5,a0,a4
    80008684:	f8d40023          	sb	a3,-128(s0)
    80008688:	10b65e63          	bge	a2,a1,800087a4 <__printf+0x670>
    8000868c:	06300593          	li	a1,99
    80008690:	02e7f6bb          	remuw	a3,a5,a4
    80008694:	02069693          	slli	a3,a3,0x20
    80008698:	0206d693          	srli	a3,a3,0x20
    8000869c:	00dd86b3          	add	a3,s11,a3
    800086a0:	0006c683          	lbu	a3,0(a3)
    800086a4:	02e7d73b          	divuw	a4,a5,a4
    800086a8:	00200793          	li	a5,2
    800086ac:	f8d400a3          	sb	a3,-127(s0)
    800086b0:	bca5ece3          	bltu	a1,a0,80008288 <__printf+0x154>
    800086b4:	ce5ff06f          	j	80008398 <__printf+0x264>
    800086b8:	40e007bb          	negw	a5,a4
    800086bc:	00002d97          	auipc	s11,0x2
    800086c0:	18cd8d93          	addi	s11,s11,396 # 8000a848 <digits>
    800086c4:	00f7f693          	andi	a3,a5,15
    800086c8:	00dd86b3          	add	a3,s11,a3
    800086cc:	0006c583          	lbu	a1,0(a3)
    800086d0:	ff100613          	li	a2,-15
    800086d4:	0047d69b          	srliw	a3,a5,0x4
    800086d8:	f8b40023          	sb	a1,-128(s0)
    800086dc:	0047d59b          	srliw	a1,a5,0x4
    800086e0:	0ac75e63          	bge	a4,a2,8000879c <__printf+0x668>
    800086e4:	00f6f693          	andi	a3,a3,15
    800086e8:	00dd86b3          	add	a3,s11,a3
    800086ec:	0006c603          	lbu	a2,0(a3)
    800086f0:	00f00693          	li	a3,15
    800086f4:	0087d79b          	srliw	a5,a5,0x8
    800086f8:	f8c400a3          	sb	a2,-127(s0)
    800086fc:	d8b6e4e3          	bltu	a3,a1,80008484 <__printf+0x350>
    80008700:	00200793          	li	a5,2
    80008704:	e2dff06f          	j	80008530 <__printf+0x3fc>
    80008708:	00002c97          	auipc	s9,0x2
    8000870c:	018c8c93          	addi	s9,s9,24 # 8000a720 <CONSOLE_STATUS+0x700>
    80008710:	02800513          	li	a0,40
    80008714:	ef1ff06f          	j	80008604 <__printf+0x4d0>
    80008718:	00700793          	li	a5,7
    8000871c:	00600c93          	li	s9,6
    80008720:	e0dff06f          	j	8000852c <__printf+0x3f8>
    80008724:	00700793          	li	a5,7
    80008728:	00600c93          	li	s9,6
    8000872c:	c69ff06f          	j	80008394 <__printf+0x260>
    80008730:	00300793          	li	a5,3
    80008734:	00200c93          	li	s9,2
    80008738:	c5dff06f          	j	80008394 <__printf+0x260>
    8000873c:	00300793          	li	a5,3
    80008740:	00200c93          	li	s9,2
    80008744:	de9ff06f          	j	8000852c <__printf+0x3f8>
    80008748:	00400793          	li	a5,4
    8000874c:	00300c93          	li	s9,3
    80008750:	dddff06f          	j	8000852c <__printf+0x3f8>
    80008754:	00400793          	li	a5,4
    80008758:	00300c93          	li	s9,3
    8000875c:	c39ff06f          	j	80008394 <__printf+0x260>
    80008760:	00500793          	li	a5,5
    80008764:	00400c93          	li	s9,4
    80008768:	c2dff06f          	j	80008394 <__printf+0x260>
    8000876c:	00500793          	li	a5,5
    80008770:	00400c93          	li	s9,4
    80008774:	db9ff06f          	j	8000852c <__printf+0x3f8>
    80008778:	00600793          	li	a5,6
    8000877c:	00500c93          	li	s9,5
    80008780:	dadff06f          	j	8000852c <__printf+0x3f8>
    80008784:	00600793          	li	a5,6
    80008788:	00500c93          	li	s9,5
    8000878c:	c09ff06f          	j	80008394 <__printf+0x260>
    80008790:	00800793          	li	a5,8
    80008794:	00700c93          	li	s9,7
    80008798:	bfdff06f          	j	80008394 <__printf+0x260>
    8000879c:	00100793          	li	a5,1
    800087a0:	d91ff06f          	j	80008530 <__printf+0x3fc>
    800087a4:	00100793          	li	a5,1
    800087a8:	bf1ff06f          	j	80008398 <__printf+0x264>
    800087ac:	00900793          	li	a5,9
    800087b0:	00800c93          	li	s9,8
    800087b4:	be1ff06f          	j	80008394 <__printf+0x260>
    800087b8:	00002517          	auipc	a0,0x2
    800087bc:	f7050513          	addi	a0,a0,-144 # 8000a728 <CONSOLE_STATUS+0x708>
    800087c0:	00000097          	auipc	ra,0x0
    800087c4:	918080e7          	jalr	-1768(ra) # 800080d8 <panic>

00000000800087c8 <printfinit>:
    800087c8:	fe010113          	addi	sp,sp,-32
    800087cc:	00813823          	sd	s0,16(sp)
    800087d0:	00913423          	sd	s1,8(sp)
    800087d4:	00113c23          	sd	ra,24(sp)
    800087d8:	02010413          	addi	s0,sp,32
    800087dc:	0000b497          	auipc	s1,0xb
    800087e0:	a4448493          	addi	s1,s1,-1468 # 80013220 <pr>
    800087e4:	00048513          	mv	a0,s1
    800087e8:	00002597          	auipc	a1,0x2
    800087ec:	f5058593          	addi	a1,a1,-176 # 8000a738 <CONSOLE_STATUS+0x718>
    800087f0:	00000097          	auipc	ra,0x0
    800087f4:	020080e7          	jalr	32(ra) # 80008810 <initlock>
    800087f8:	01813083          	ld	ra,24(sp)
    800087fc:	01013403          	ld	s0,16(sp)
    80008800:	0004ac23          	sw	zero,24(s1)
    80008804:	00813483          	ld	s1,8(sp)
    80008808:	02010113          	addi	sp,sp,32
    8000880c:	00008067          	ret

0000000080008810 <initlock>:
    80008810:	ff010113          	addi	sp,sp,-16
    80008814:	00813423          	sd	s0,8(sp)
    80008818:	01010413          	addi	s0,sp,16
    8000881c:	00813403          	ld	s0,8(sp)
    80008820:	00b53423          	sd	a1,8(a0)
    80008824:	00052023          	sw	zero,0(a0)
    80008828:	00053823          	sd	zero,16(a0)
    8000882c:	01010113          	addi	sp,sp,16
    80008830:	00008067          	ret

0000000080008834 <acquire>:
    80008834:	fe010113          	addi	sp,sp,-32
    80008838:	00813823          	sd	s0,16(sp)
    8000883c:	00913423          	sd	s1,8(sp)
    80008840:	00113c23          	sd	ra,24(sp)
    80008844:	01213023          	sd	s2,0(sp)
    80008848:	02010413          	addi	s0,sp,32
    8000884c:	00050493          	mv	s1,a0
    80008850:	10002973          	csrr	s2,sstatus
    80008854:	100027f3          	csrr	a5,sstatus
    80008858:	ffd7f793          	andi	a5,a5,-3
    8000885c:	10079073          	csrw	sstatus,a5
    80008860:	fffff097          	auipc	ra,0xfffff
    80008864:	038080e7          	jalr	56(ra) # 80007898 <mycpu>
    80008868:	07852783          	lw	a5,120(a0)
    8000886c:	06078e63          	beqz	a5,800088e8 <acquire+0xb4>
    80008870:	fffff097          	auipc	ra,0xfffff
    80008874:	028080e7          	jalr	40(ra) # 80007898 <mycpu>
    80008878:	07852783          	lw	a5,120(a0)
    8000887c:	0004a703          	lw	a4,0(s1)
    80008880:	0017879b          	addiw	a5,a5,1
    80008884:	06f52c23          	sw	a5,120(a0)
    80008888:	04071063          	bnez	a4,800088c8 <acquire+0x94>
    8000888c:	00100713          	li	a4,1
    80008890:	00070793          	mv	a5,a4
    80008894:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008898:	0007879b          	sext.w	a5,a5
    8000889c:	fe079ae3          	bnez	a5,80008890 <acquire+0x5c>
    800088a0:	0ff0000f          	fence
    800088a4:	fffff097          	auipc	ra,0xfffff
    800088a8:	ff4080e7          	jalr	-12(ra) # 80007898 <mycpu>
    800088ac:	01813083          	ld	ra,24(sp)
    800088b0:	01013403          	ld	s0,16(sp)
    800088b4:	00a4b823          	sd	a0,16(s1)
    800088b8:	00013903          	ld	s2,0(sp)
    800088bc:	00813483          	ld	s1,8(sp)
    800088c0:	02010113          	addi	sp,sp,32
    800088c4:	00008067          	ret
    800088c8:	0104b903          	ld	s2,16(s1)
    800088cc:	fffff097          	auipc	ra,0xfffff
    800088d0:	fcc080e7          	jalr	-52(ra) # 80007898 <mycpu>
    800088d4:	faa91ce3          	bne	s2,a0,8000888c <acquire+0x58>
    800088d8:	00002517          	auipc	a0,0x2
    800088dc:	e6850513          	addi	a0,a0,-408 # 8000a740 <CONSOLE_STATUS+0x720>
    800088e0:	fffff097          	auipc	ra,0xfffff
    800088e4:	7f8080e7          	jalr	2040(ra) # 800080d8 <panic>
    800088e8:	00195913          	srli	s2,s2,0x1
    800088ec:	fffff097          	auipc	ra,0xfffff
    800088f0:	fac080e7          	jalr	-84(ra) # 80007898 <mycpu>
    800088f4:	00197913          	andi	s2,s2,1
    800088f8:	07252e23          	sw	s2,124(a0)
    800088fc:	f75ff06f          	j	80008870 <acquire+0x3c>

0000000080008900 <release>:
    80008900:	fe010113          	addi	sp,sp,-32
    80008904:	00813823          	sd	s0,16(sp)
    80008908:	00113c23          	sd	ra,24(sp)
    8000890c:	00913423          	sd	s1,8(sp)
    80008910:	01213023          	sd	s2,0(sp)
    80008914:	02010413          	addi	s0,sp,32
    80008918:	00052783          	lw	a5,0(a0)
    8000891c:	00079a63          	bnez	a5,80008930 <release+0x30>
    80008920:	00002517          	auipc	a0,0x2
    80008924:	e2850513          	addi	a0,a0,-472 # 8000a748 <CONSOLE_STATUS+0x728>
    80008928:	fffff097          	auipc	ra,0xfffff
    8000892c:	7b0080e7          	jalr	1968(ra) # 800080d8 <panic>
    80008930:	01053903          	ld	s2,16(a0)
    80008934:	00050493          	mv	s1,a0
    80008938:	fffff097          	auipc	ra,0xfffff
    8000893c:	f60080e7          	jalr	-160(ra) # 80007898 <mycpu>
    80008940:	fea910e3          	bne	s2,a0,80008920 <release+0x20>
    80008944:	0004b823          	sd	zero,16(s1)
    80008948:	0ff0000f          	fence
    8000894c:	0f50000f          	fence	iorw,ow
    80008950:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008954:	fffff097          	auipc	ra,0xfffff
    80008958:	f44080e7          	jalr	-188(ra) # 80007898 <mycpu>
    8000895c:	100027f3          	csrr	a5,sstatus
    80008960:	0027f793          	andi	a5,a5,2
    80008964:	04079a63          	bnez	a5,800089b8 <release+0xb8>
    80008968:	07852783          	lw	a5,120(a0)
    8000896c:	02f05e63          	blez	a5,800089a8 <release+0xa8>
    80008970:	fff7871b          	addiw	a4,a5,-1
    80008974:	06e52c23          	sw	a4,120(a0)
    80008978:	00071c63          	bnez	a4,80008990 <release+0x90>
    8000897c:	07c52783          	lw	a5,124(a0)
    80008980:	00078863          	beqz	a5,80008990 <release+0x90>
    80008984:	100027f3          	csrr	a5,sstatus
    80008988:	0027e793          	ori	a5,a5,2
    8000898c:	10079073          	csrw	sstatus,a5
    80008990:	01813083          	ld	ra,24(sp)
    80008994:	01013403          	ld	s0,16(sp)
    80008998:	00813483          	ld	s1,8(sp)
    8000899c:	00013903          	ld	s2,0(sp)
    800089a0:	02010113          	addi	sp,sp,32
    800089a4:	00008067          	ret
    800089a8:	00002517          	auipc	a0,0x2
    800089ac:	dc050513          	addi	a0,a0,-576 # 8000a768 <CONSOLE_STATUS+0x748>
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	728080e7          	jalr	1832(ra) # 800080d8 <panic>
    800089b8:	00002517          	auipc	a0,0x2
    800089bc:	d9850513          	addi	a0,a0,-616 # 8000a750 <CONSOLE_STATUS+0x730>
    800089c0:	fffff097          	auipc	ra,0xfffff
    800089c4:	718080e7          	jalr	1816(ra) # 800080d8 <panic>

00000000800089c8 <holding>:
    800089c8:	00052783          	lw	a5,0(a0)
    800089cc:	00079663          	bnez	a5,800089d8 <holding+0x10>
    800089d0:	00000513          	li	a0,0
    800089d4:	00008067          	ret
    800089d8:	fe010113          	addi	sp,sp,-32
    800089dc:	00813823          	sd	s0,16(sp)
    800089e0:	00913423          	sd	s1,8(sp)
    800089e4:	00113c23          	sd	ra,24(sp)
    800089e8:	02010413          	addi	s0,sp,32
    800089ec:	01053483          	ld	s1,16(a0)
    800089f0:	fffff097          	auipc	ra,0xfffff
    800089f4:	ea8080e7          	jalr	-344(ra) # 80007898 <mycpu>
    800089f8:	01813083          	ld	ra,24(sp)
    800089fc:	01013403          	ld	s0,16(sp)
    80008a00:	40a48533          	sub	a0,s1,a0
    80008a04:	00153513          	seqz	a0,a0
    80008a08:	00813483          	ld	s1,8(sp)
    80008a0c:	02010113          	addi	sp,sp,32
    80008a10:	00008067          	ret

0000000080008a14 <push_off>:
    80008a14:	fe010113          	addi	sp,sp,-32
    80008a18:	00813823          	sd	s0,16(sp)
    80008a1c:	00113c23          	sd	ra,24(sp)
    80008a20:	00913423          	sd	s1,8(sp)
    80008a24:	02010413          	addi	s0,sp,32
    80008a28:	100024f3          	csrr	s1,sstatus
    80008a2c:	100027f3          	csrr	a5,sstatus
    80008a30:	ffd7f793          	andi	a5,a5,-3
    80008a34:	10079073          	csrw	sstatus,a5
    80008a38:	fffff097          	auipc	ra,0xfffff
    80008a3c:	e60080e7          	jalr	-416(ra) # 80007898 <mycpu>
    80008a40:	07852783          	lw	a5,120(a0)
    80008a44:	02078663          	beqz	a5,80008a70 <push_off+0x5c>
    80008a48:	fffff097          	auipc	ra,0xfffff
    80008a4c:	e50080e7          	jalr	-432(ra) # 80007898 <mycpu>
    80008a50:	07852783          	lw	a5,120(a0)
    80008a54:	01813083          	ld	ra,24(sp)
    80008a58:	01013403          	ld	s0,16(sp)
    80008a5c:	0017879b          	addiw	a5,a5,1
    80008a60:	06f52c23          	sw	a5,120(a0)
    80008a64:	00813483          	ld	s1,8(sp)
    80008a68:	02010113          	addi	sp,sp,32
    80008a6c:	00008067          	ret
    80008a70:	0014d493          	srli	s1,s1,0x1
    80008a74:	fffff097          	auipc	ra,0xfffff
    80008a78:	e24080e7          	jalr	-476(ra) # 80007898 <mycpu>
    80008a7c:	0014f493          	andi	s1,s1,1
    80008a80:	06952e23          	sw	s1,124(a0)
    80008a84:	fc5ff06f          	j	80008a48 <push_off+0x34>

0000000080008a88 <pop_off>:
    80008a88:	ff010113          	addi	sp,sp,-16
    80008a8c:	00813023          	sd	s0,0(sp)
    80008a90:	00113423          	sd	ra,8(sp)
    80008a94:	01010413          	addi	s0,sp,16
    80008a98:	fffff097          	auipc	ra,0xfffff
    80008a9c:	e00080e7          	jalr	-512(ra) # 80007898 <mycpu>
    80008aa0:	100027f3          	csrr	a5,sstatus
    80008aa4:	0027f793          	andi	a5,a5,2
    80008aa8:	04079663          	bnez	a5,80008af4 <pop_off+0x6c>
    80008aac:	07852783          	lw	a5,120(a0)
    80008ab0:	02f05a63          	blez	a5,80008ae4 <pop_off+0x5c>
    80008ab4:	fff7871b          	addiw	a4,a5,-1
    80008ab8:	06e52c23          	sw	a4,120(a0)
    80008abc:	00071c63          	bnez	a4,80008ad4 <pop_off+0x4c>
    80008ac0:	07c52783          	lw	a5,124(a0)
    80008ac4:	00078863          	beqz	a5,80008ad4 <pop_off+0x4c>
    80008ac8:	100027f3          	csrr	a5,sstatus
    80008acc:	0027e793          	ori	a5,a5,2
    80008ad0:	10079073          	csrw	sstatus,a5
    80008ad4:	00813083          	ld	ra,8(sp)
    80008ad8:	00013403          	ld	s0,0(sp)
    80008adc:	01010113          	addi	sp,sp,16
    80008ae0:	00008067          	ret
    80008ae4:	00002517          	auipc	a0,0x2
    80008ae8:	c8450513          	addi	a0,a0,-892 # 8000a768 <CONSOLE_STATUS+0x748>
    80008aec:	fffff097          	auipc	ra,0xfffff
    80008af0:	5ec080e7          	jalr	1516(ra) # 800080d8 <panic>
    80008af4:	00002517          	auipc	a0,0x2
    80008af8:	c5c50513          	addi	a0,a0,-932 # 8000a750 <CONSOLE_STATUS+0x730>
    80008afc:	fffff097          	auipc	ra,0xfffff
    80008b00:	5dc080e7          	jalr	1500(ra) # 800080d8 <panic>

0000000080008b04 <push_on>:
    80008b04:	fe010113          	addi	sp,sp,-32
    80008b08:	00813823          	sd	s0,16(sp)
    80008b0c:	00113c23          	sd	ra,24(sp)
    80008b10:	00913423          	sd	s1,8(sp)
    80008b14:	02010413          	addi	s0,sp,32
    80008b18:	100024f3          	csrr	s1,sstatus
    80008b1c:	100027f3          	csrr	a5,sstatus
    80008b20:	0027e793          	ori	a5,a5,2
    80008b24:	10079073          	csrw	sstatus,a5
    80008b28:	fffff097          	auipc	ra,0xfffff
    80008b2c:	d70080e7          	jalr	-656(ra) # 80007898 <mycpu>
    80008b30:	07852783          	lw	a5,120(a0)
    80008b34:	02078663          	beqz	a5,80008b60 <push_on+0x5c>
    80008b38:	fffff097          	auipc	ra,0xfffff
    80008b3c:	d60080e7          	jalr	-672(ra) # 80007898 <mycpu>
    80008b40:	07852783          	lw	a5,120(a0)
    80008b44:	01813083          	ld	ra,24(sp)
    80008b48:	01013403          	ld	s0,16(sp)
    80008b4c:	0017879b          	addiw	a5,a5,1
    80008b50:	06f52c23          	sw	a5,120(a0)
    80008b54:	00813483          	ld	s1,8(sp)
    80008b58:	02010113          	addi	sp,sp,32
    80008b5c:	00008067          	ret
    80008b60:	0014d493          	srli	s1,s1,0x1
    80008b64:	fffff097          	auipc	ra,0xfffff
    80008b68:	d34080e7          	jalr	-716(ra) # 80007898 <mycpu>
    80008b6c:	0014f493          	andi	s1,s1,1
    80008b70:	06952e23          	sw	s1,124(a0)
    80008b74:	fc5ff06f          	j	80008b38 <push_on+0x34>

0000000080008b78 <pop_on>:
    80008b78:	ff010113          	addi	sp,sp,-16
    80008b7c:	00813023          	sd	s0,0(sp)
    80008b80:	00113423          	sd	ra,8(sp)
    80008b84:	01010413          	addi	s0,sp,16
    80008b88:	fffff097          	auipc	ra,0xfffff
    80008b8c:	d10080e7          	jalr	-752(ra) # 80007898 <mycpu>
    80008b90:	100027f3          	csrr	a5,sstatus
    80008b94:	0027f793          	andi	a5,a5,2
    80008b98:	04078463          	beqz	a5,80008be0 <pop_on+0x68>
    80008b9c:	07852783          	lw	a5,120(a0)
    80008ba0:	02f05863          	blez	a5,80008bd0 <pop_on+0x58>
    80008ba4:	fff7879b          	addiw	a5,a5,-1
    80008ba8:	06f52c23          	sw	a5,120(a0)
    80008bac:	07853783          	ld	a5,120(a0)
    80008bb0:	00079863          	bnez	a5,80008bc0 <pop_on+0x48>
    80008bb4:	100027f3          	csrr	a5,sstatus
    80008bb8:	ffd7f793          	andi	a5,a5,-3
    80008bbc:	10079073          	csrw	sstatus,a5
    80008bc0:	00813083          	ld	ra,8(sp)
    80008bc4:	00013403          	ld	s0,0(sp)
    80008bc8:	01010113          	addi	sp,sp,16
    80008bcc:	00008067          	ret
    80008bd0:	00002517          	auipc	a0,0x2
    80008bd4:	bc050513          	addi	a0,a0,-1088 # 8000a790 <CONSOLE_STATUS+0x770>
    80008bd8:	fffff097          	auipc	ra,0xfffff
    80008bdc:	500080e7          	jalr	1280(ra) # 800080d8 <panic>
    80008be0:	00002517          	auipc	a0,0x2
    80008be4:	b9050513          	addi	a0,a0,-1136 # 8000a770 <CONSOLE_STATUS+0x750>
    80008be8:	fffff097          	auipc	ra,0xfffff
    80008bec:	4f0080e7          	jalr	1264(ra) # 800080d8 <panic>

0000000080008bf0 <trapinit>:
    80008bf0:	ff010113          	addi	sp,sp,-16
    80008bf4:	00813423          	sd	s0,8(sp)
    80008bf8:	01010413          	addi	s0,sp,16
    80008bfc:	00813403          	ld	s0,8(sp)
    80008c00:	00002597          	auipc	a1,0x2
    80008c04:	b9858593          	addi	a1,a1,-1128 # 8000a798 <CONSOLE_STATUS+0x778>
    80008c08:	0000a517          	auipc	a0,0xa
    80008c0c:	63850513          	addi	a0,a0,1592 # 80013240 <tickslock>
    80008c10:	01010113          	addi	sp,sp,16
    80008c14:	00000317          	auipc	t1,0x0
    80008c18:	bfc30067          	jr	-1028(t1) # 80008810 <initlock>

0000000080008c1c <trapinithart>:
    80008c1c:	ff010113          	addi	sp,sp,-16
    80008c20:	00813423          	sd	s0,8(sp)
    80008c24:	01010413          	addi	s0,sp,16
    80008c28:	fffff797          	auipc	a5,0xfffff
    80008c2c:	28478793          	addi	a5,a5,644 # 80007eac <kernelvec>
    80008c30:	10579073          	csrw	stvec,a5
    80008c34:	00813403          	ld	s0,8(sp)
    80008c38:	01010113          	addi	sp,sp,16
    80008c3c:	00008067          	ret

0000000080008c40 <usertrap>:
    80008c40:	ff010113          	addi	sp,sp,-16
    80008c44:	00813423          	sd	s0,8(sp)
    80008c48:	01010413          	addi	s0,sp,16
    80008c4c:	00813403          	ld	s0,8(sp)
    80008c50:	01010113          	addi	sp,sp,16
    80008c54:	00008067          	ret

0000000080008c58 <usertrapret>:
    80008c58:	ff010113          	addi	sp,sp,-16
    80008c5c:	00813423          	sd	s0,8(sp)
    80008c60:	01010413          	addi	s0,sp,16
    80008c64:	00813403          	ld	s0,8(sp)
    80008c68:	01010113          	addi	sp,sp,16
    80008c6c:	00008067          	ret

0000000080008c70 <kerneltrap>:
    80008c70:	fe010113          	addi	sp,sp,-32
    80008c74:	00813823          	sd	s0,16(sp)
    80008c78:	00113c23          	sd	ra,24(sp)
    80008c7c:	00913423          	sd	s1,8(sp)
    80008c80:	02010413          	addi	s0,sp,32
    80008c84:	142025f3          	csrr	a1,scause
    80008c88:	100027f3          	csrr	a5,sstatus
    80008c8c:	0027f793          	andi	a5,a5,2
    80008c90:	10079c63          	bnez	a5,80008da8 <kerneltrap+0x138>
    80008c94:	142027f3          	csrr	a5,scause
    80008c98:	0207ce63          	bltz	a5,80008cd4 <kerneltrap+0x64>
    80008c9c:	00002517          	auipc	a0,0x2
    80008ca0:	b4450513          	addi	a0,a0,-1212 # 8000a7e0 <CONSOLE_STATUS+0x7c0>
    80008ca4:	fffff097          	auipc	ra,0xfffff
    80008ca8:	490080e7          	jalr	1168(ra) # 80008134 <__printf>
    80008cac:	141025f3          	csrr	a1,sepc
    80008cb0:	14302673          	csrr	a2,stval
    80008cb4:	00002517          	auipc	a0,0x2
    80008cb8:	b3c50513          	addi	a0,a0,-1220 # 8000a7f0 <CONSOLE_STATUS+0x7d0>
    80008cbc:	fffff097          	auipc	ra,0xfffff
    80008cc0:	478080e7          	jalr	1144(ra) # 80008134 <__printf>
    80008cc4:	00002517          	auipc	a0,0x2
    80008cc8:	b4450513          	addi	a0,a0,-1212 # 8000a808 <CONSOLE_STATUS+0x7e8>
    80008ccc:	fffff097          	auipc	ra,0xfffff
    80008cd0:	40c080e7          	jalr	1036(ra) # 800080d8 <panic>
    80008cd4:	0ff7f713          	zext.b	a4,a5
    80008cd8:	00900693          	li	a3,9
    80008cdc:	04d70063          	beq	a4,a3,80008d1c <kerneltrap+0xac>
    80008ce0:	fff00713          	li	a4,-1
    80008ce4:	03f71713          	slli	a4,a4,0x3f
    80008ce8:	00170713          	addi	a4,a4,1
    80008cec:	fae798e3          	bne	a5,a4,80008c9c <kerneltrap+0x2c>
    80008cf0:	fffff097          	auipc	ra,0xfffff
    80008cf4:	b88080e7          	jalr	-1144(ra) # 80007878 <cpuid>
    80008cf8:	06050663          	beqz	a0,80008d64 <kerneltrap+0xf4>
    80008cfc:	144027f3          	csrr	a5,sip
    80008d00:	ffd7f793          	andi	a5,a5,-3
    80008d04:	14479073          	csrw	sip,a5
    80008d08:	01813083          	ld	ra,24(sp)
    80008d0c:	01013403          	ld	s0,16(sp)
    80008d10:	00813483          	ld	s1,8(sp)
    80008d14:	02010113          	addi	sp,sp,32
    80008d18:	00008067          	ret
    80008d1c:	fffff097          	auipc	ra,0xfffff
    80008d20:	ae0080e7          	jalr	-1312(ra) # 800077fc <plic_claim>
    80008d24:	00a00793          	li	a5,10
    80008d28:	00050493          	mv	s1,a0
    80008d2c:	06f50863          	beq	a0,a5,80008d9c <kerneltrap+0x12c>
    80008d30:	fc050ce3          	beqz	a0,80008d08 <kerneltrap+0x98>
    80008d34:	00050593          	mv	a1,a0
    80008d38:	00002517          	auipc	a0,0x2
    80008d3c:	a8850513          	addi	a0,a0,-1400 # 8000a7c0 <CONSOLE_STATUS+0x7a0>
    80008d40:	fffff097          	auipc	ra,0xfffff
    80008d44:	3f4080e7          	jalr	1012(ra) # 80008134 <__printf>
    80008d48:	01013403          	ld	s0,16(sp)
    80008d4c:	01813083          	ld	ra,24(sp)
    80008d50:	00048513          	mv	a0,s1
    80008d54:	00813483          	ld	s1,8(sp)
    80008d58:	02010113          	addi	sp,sp,32
    80008d5c:	fffff317          	auipc	t1,0xfffff
    80008d60:	ad830067          	jr	-1320(t1) # 80007834 <plic_complete>
    80008d64:	0000a517          	auipc	a0,0xa
    80008d68:	4dc50513          	addi	a0,a0,1244 # 80013240 <tickslock>
    80008d6c:	00000097          	auipc	ra,0x0
    80008d70:	ac8080e7          	jalr	-1336(ra) # 80008834 <acquire>
    80008d74:	00004717          	auipc	a4,0x4
    80008d78:	2e470713          	addi	a4,a4,740 # 8000d058 <ticks>
    80008d7c:	00072783          	lw	a5,0(a4)
    80008d80:	0000a517          	auipc	a0,0xa
    80008d84:	4c050513          	addi	a0,a0,1216 # 80013240 <tickslock>
    80008d88:	0017879b          	addiw	a5,a5,1
    80008d8c:	00f72023          	sw	a5,0(a4)
    80008d90:	00000097          	auipc	ra,0x0
    80008d94:	b70080e7          	jalr	-1168(ra) # 80008900 <release>
    80008d98:	f65ff06f          	j	80008cfc <kerneltrap+0x8c>
    80008d9c:	00000097          	auipc	ra,0x0
    80008da0:	3ac080e7          	jalr	940(ra) # 80009148 <uartintr>
    80008da4:	fa5ff06f          	j	80008d48 <kerneltrap+0xd8>
    80008da8:	00002517          	auipc	a0,0x2
    80008dac:	9f850513          	addi	a0,a0,-1544 # 8000a7a0 <CONSOLE_STATUS+0x780>
    80008db0:	fffff097          	auipc	ra,0xfffff
    80008db4:	328080e7          	jalr	808(ra) # 800080d8 <panic>

0000000080008db8 <clockintr>:
    80008db8:	fe010113          	addi	sp,sp,-32
    80008dbc:	00813823          	sd	s0,16(sp)
    80008dc0:	00913423          	sd	s1,8(sp)
    80008dc4:	00113c23          	sd	ra,24(sp)
    80008dc8:	02010413          	addi	s0,sp,32
    80008dcc:	0000a497          	auipc	s1,0xa
    80008dd0:	47448493          	addi	s1,s1,1140 # 80013240 <tickslock>
    80008dd4:	00048513          	mv	a0,s1
    80008dd8:	00000097          	auipc	ra,0x0
    80008ddc:	a5c080e7          	jalr	-1444(ra) # 80008834 <acquire>
    80008de0:	00004717          	auipc	a4,0x4
    80008de4:	27870713          	addi	a4,a4,632 # 8000d058 <ticks>
    80008de8:	00072783          	lw	a5,0(a4)
    80008dec:	01013403          	ld	s0,16(sp)
    80008df0:	01813083          	ld	ra,24(sp)
    80008df4:	00048513          	mv	a0,s1
    80008df8:	0017879b          	addiw	a5,a5,1
    80008dfc:	00813483          	ld	s1,8(sp)
    80008e00:	00f72023          	sw	a5,0(a4)
    80008e04:	02010113          	addi	sp,sp,32
    80008e08:	00000317          	auipc	t1,0x0
    80008e0c:	af830067          	jr	-1288(t1) # 80008900 <release>

0000000080008e10 <devintr>:
    80008e10:	142027f3          	csrr	a5,scause
    80008e14:	00000513          	li	a0,0
    80008e18:	0007c463          	bltz	a5,80008e20 <devintr+0x10>
    80008e1c:	00008067          	ret
    80008e20:	fe010113          	addi	sp,sp,-32
    80008e24:	00813823          	sd	s0,16(sp)
    80008e28:	00113c23          	sd	ra,24(sp)
    80008e2c:	00913423          	sd	s1,8(sp)
    80008e30:	02010413          	addi	s0,sp,32
    80008e34:	0ff7f713          	zext.b	a4,a5
    80008e38:	00900693          	li	a3,9
    80008e3c:	04d70c63          	beq	a4,a3,80008e94 <devintr+0x84>
    80008e40:	fff00713          	li	a4,-1
    80008e44:	03f71713          	slli	a4,a4,0x3f
    80008e48:	00170713          	addi	a4,a4,1
    80008e4c:	00e78c63          	beq	a5,a4,80008e64 <devintr+0x54>
    80008e50:	01813083          	ld	ra,24(sp)
    80008e54:	01013403          	ld	s0,16(sp)
    80008e58:	00813483          	ld	s1,8(sp)
    80008e5c:	02010113          	addi	sp,sp,32
    80008e60:	00008067          	ret
    80008e64:	fffff097          	auipc	ra,0xfffff
    80008e68:	a14080e7          	jalr	-1516(ra) # 80007878 <cpuid>
    80008e6c:	06050663          	beqz	a0,80008ed8 <devintr+0xc8>
    80008e70:	144027f3          	csrr	a5,sip
    80008e74:	ffd7f793          	andi	a5,a5,-3
    80008e78:	14479073          	csrw	sip,a5
    80008e7c:	01813083          	ld	ra,24(sp)
    80008e80:	01013403          	ld	s0,16(sp)
    80008e84:	00813483          	ld	s1,8(sp)
    80008e88:	00200513          	li	a0,2
    80008e8c:	02010113          	addi	sp,sp,32
    80008e90:	00008067          	ret
    80008e94:	fffff097          	auipc	ra,0xfffff
    80008e98:	968080e7          	jalr	-1688(ra) # 800077fc <plic_claim>
    80008e9c:	00a00793          	li	a5,10
    80008ea0:	00050493          	mv	s1,a0
    80008ea4:	06f50663          	beq	a0,a5,80008f10 <devintr+0x100>
    80008ea8:	00100513          	li	a0,1
    80008eac:	fa0482e3          	beqz	s1,80008e50 <devintr+0x40>
    80008eb0:	00048593          	mv	a1,s1
    80008eb4:	00002517          	auipc	a0,0x2
    80008eb8:	90c50513          	addi	a0,a0,-1780 # 8000a7c0 <CONSOLE_STATUS+0x7a0>
    80008ebc:	fffff097          	auipc	ra,0xfffff
    80008ec0:	278080e7          	jalr	632(ra) # 80008134 <__printf>
    80008ec4:	00048513          	mv	a0,s1
    80008ec8:	fffff097          	auipc	ra,0xfffff
    80008ecc:	96c080e7          	jalr	-1684(ra) # 80007834 <plic_complete>
    80008ed0:	00100513          	li	a0,1
    80008ed4:	f7dff06f          	j	80008e50 <devintr+0x40>
    80008ed8:	0000a517          	auipc	a0,0xa
    80008edc:	36850513          	addi	a0,a0,872 # 80013240 <tickslock>
    80008ee0:	00000097          	auipc	ra,0x0
    80008ee4:	954080e7          	jalr	-1708(ra) # 80008834 <acquire>
    80008ee8:	00004717          	auipc	a4,0x4
    80008eec:	17070713          	addi	a4,a4,368 # 8000d058 <ticks>
    80008ef0:	00072783          	lw	a5,0(a4)
    80008ef4:	0000a517          	auipc	a0,0xa
    80008ef8:	34c50513          	addi	a0,a0,844 # 80013240 <tickslock>
    80008efc:	0017879b          	addiw	a5,a5,1
    80008f00:	00f72023          	sw	a5,0(a4)
    80008f04:	00000097          	auipc	ra,0x0
    80008f08:	9fc080e7          	jalr	-1540(ra) # 80008900 <release>
    80008f0c:	f65ff06f          	j	80008e70 <devintr+0x60>
    80008f10:	00000097          	auipc	ra,0x0
    80008f14:	238080e7          	jalr	568(ra) # 80009148 <uartintr>
    80008f18:	fadff06f          	j	80008ec4 <devintr+0xb4>

0000000080008f1c <uartinit>:
    80008f1c:	ff010113          	addi	sp,sp,-16
    80008f20:	00813423          	sd	s0,8(sp)
    80008f24:	01010413          	addi	s0,sp,16
    80008f28:	100007b7          	lui	a5,0x10000
    80008f2c:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008f30:	f8000713          	li	a4,-128
    80008f34:	00e781a3          	sb	a4,3(a5)
    80008f38:	00300713          	li	a4,3
    80008f3c:	00e78023          	sb	a4,0(a5)
    80008f40:	000780a3          	sb	zero,1(a5)
    80008f44:	00e781a3          	sb	a4,3(a5)
    80008f48:	00700693          	li	a3,7
    80008f4c:	00d78123          	sb	a3,2(a5)
    80008f50:	00e780a3          	sb	a4,1(a5)
    80008f54:	00813403          	ld	s0,8(sp)
    80008f58:	01010113          	addi	sp,sp,16
    80008f5c:	00008067          	ret

0000000080008f60 <uartputc>:
    80008f60:	00004797          	auipc	a5,0x4
    80008f64:	0f47a783          	lw	a5,244(a5) # 8000d054 <panicked>
    80008f68:	00078463          	beqz	a5,80008f70 <uartputc+0x10>
    80008f6c:	0000006f          	j	80008f6c <uartputc+0xc>
    80008f70:	fd010113          	addi	sp,sp,-48
    80008f74:	02813023          	sd	s0,32(sp)
    80008f78:	00913c23          	sd	s1,24(sp)
    80008f7c:	01213823          	sd	s2,16(sp)
    80008f80:	01313423          	sd	s3,8(sp)
    80008f84:	02113423          	sd	ra,40(sp)
    80008f88:	03010413          	addi	s0,sp,48
    80008f8c:	00004917          	auipc	s2,0x4
    80008f90:	0d490913          	addi	s2,s2,212 # 8000d060 <uart_tx_r>
    80008f94:	00093783          	ld	a5,0(s2)
    80008f98:	00004497          	auipc	s1,0x4
    80008f9c:	0d048493          	addi	s1,s1,208 # 8000d068 <uart_tx_w>
    80008fa0:	0004b703          	ld	a4,0(s1)
    80008fa4:	02078693          	addi	a3,a5,32
    80008fa8:	00050993          	mv	s3,a0
    80008fac:	02e69c63          	bne	a3,a4,80008fe4 <uartputc+0x84>
    80008fb0:	00000097          	auipc	ra,0x0
    80008fb4:	b54080e7          	jalr	-1196(ra) # 80008b04 <push_on>
    80008fb8:	00093783          	ld	a5,0(s2)
    80008fbc:	0004b703          	ld	a4,0(s1)
    80008fc0:	02078793          	addi	a5,a5,32
    80008fc4:	00e79463          	bne	a5,a4,80008fcc <uartputc+0x6c>
    80008fc8:	0000006f          	j	80008fc8 <uartputc+0x68>
    80008fcc:	00000097          	auipc	ra,0x0
    80008fd0:	bac080e7          	jalr	-1108(ra) # 80008b78 <pop_on>
    80008fd4:	00093783          	ld	a5,0(s2)
    80008fd8:	0004b703          	ld	a4,0(s1)
    80008fdc:	02078693          	addi	a3,a5,32
    80008fe0:	fce688e3          	beq	a3,a4,80008fb0 <uartputc+0x50>
    80008fe4:	01f77693          	andi	a3,a4,31
    80008fe8:	0000a597          	auipc	a1,0xa
    80008fec:	27058593          	addi	a1,a1,624 # 80013258 <uart_tx_buf>
    80008ff0:	00d586b3          	add	a3,a1,a3
    80008ff4:	00170713          	addi	a4,a4,1
    80008ff8:	01368023          	sb	s3,0(a3)
    80008ffc:	00e4b023          	sd	a4,0(s1)
    80009000:	10000637          	lui	a2,0x10000
    80009004:	02f71063          	bne	a4,a5,80009024 <uartputc+0xc4>
    80009008:	0340006f          	j	8000903c <uartputc+0xdc>
    8000900c:	00074703          	lbu	a4,0(a4)
    80009010:	00f93023          	sd	a5,0(s2)
    80009014:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80009018:	00093783          	ld	a5,0(s2)
    8000901c:	0004b703          	ld	a4,0(s1)
    80009020:	00f70e63          	beq	a4,a5,8000903c <uartputc+0xdc>
    80009024:	00564683          	lbu	a3,5(a2)
    80009028:	01f7f713          	andi	a4,a5,31
    8000902c:	00e58733          	add	a4,a1,a4
    80009030:	0206f693          	andi	a3,a3,32
    80009034:	00178793          	addi	a5,a5,1
    80009038:	fc069ae3          	bnez	a3,8000900c <uartputc+0xac>
    8000903c:	02813083          	ld	ra,40(sp)
    80009040:	02013403          	ld	s0,32(sp)
    80009044:	01813483          	ld	s1,24(sp)
    80009048:	01013903          	ld	s2,16(sp)
    8000904c:	00813983          	ld	s3,8(sp)
    80009050:	03010113          	addi	sp,sp,48
    80009054:	00008067          	ret

0000000080009058 <uartputc_sync>:
    80009058:	ff010113          	addi	sp,sp,-16
    8000905c:	00813423          	sd	s0,8(sp)
    80009060:	01010413          	addi	s0,sp,16
    80009064:	00004717          	auipc	a4,0x4
    80009068:	ff072703          	lw	a4,-16(a4) # 8000d054 <panicked>
    8000906c:	02071663          	bnez	a4,80009098 <uartputc_sync+0x40>
    80009070:	00050793          	mv	a5,a0
    80009074:	100006b7          	lui	a3,0x10000
    80009078:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    8000907c:	02077713          	andi	a4,a4,32
    80009080:	fe070ce3          	beqz	a4,80009078 <uartputc_sync+0x20>
    80009084:	0ff7f793          	zext.b	a5,a5
    80009088:	00f68023          	sb	a5,0(a3)
    8000908c:	00813403          	ld	s0,8(sp)
    80009090:	01010113          	addi	sp,sp,16
    80009094:	00008067          	ret
    80009098:	0000006f          	j	80009098 <uartputc_sync+0x40>

000000008000909c <uartstart>:
    8000909c:	ff010113          	addi	sp,sp,-16
    800090a0:	00813423          	sd	s0,8(sp)
    800090a4:	01010413          	addi	s0,sp,16
    800090a8:	00004617          	auipc	a2,0x4
    800090ac:	fb860613          	addi	a2,a2,-72 # 8000d060 <uart_tx_r>
    800090b0:	00004517          	auipc	a0,0x4
    800090b4:	fb850513          	addi	a0,a0,-72 # 8000d068 <uart_tx_w>
    800090b8:	00063783          	ld	a5,0(a2)
    800090bc:	00053703          	ld	a4,0(a0)
    800090c0:	04f70263          	beq	a4,a5,80009104 <uartstart+0x68>
    800090c4:	100005b7          	lui	a1,0x10000
    800090c8:	0000a817          	auipc	a6,0xa
    800090cc:	19080813          	addi	a6,a6,400 # 80013258 <uart_tx_buf>
    800090d0:	01c0006f          	j	800090ec <uartstart+0x50>
    800090d4:	0006c703          	lbu	a4,0(a3)
    800090d8:	00f63023          	sd	a5,0(a2)
    800090dc:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800090e0:	00063783          	ld	a5,0(a2)
    800090e4:	00053703          	ld	a4,0(a0)
    800090e8:	00f70e63          	beq	a4,a5,80009104 <uartstart+0x68>
    800090ec:	01f7f713          	andi	a4,a5,31
    800090f0:	00e806b3          	add	a3,a6,a4
    800090f4:	0055c703          	lbu	a4,5(a1)
    800090f8:	00178793          	addi	a5,a5,1
    800090fc:	02077713          	andi	a4,a4,32
    80009100:	fc071ae3          	bnez	a4,800090d4 <uartstart+0x38>
    80009104:	00813403          	ld	s0,8(sp)
    80009108:	01010113          	addi	sp,sp,16
    8000910c:	00008067          	ret

0000000080009110 <uartgetc>:
    80009110:	ff010113          	addi	sp,sp,-16
    80009114:	00813423          	sd	s0,8(sp)
    80009118:	01010413          	addi	s0,sp,16
    8000911c:	10000737          	lui	a4,0x10000
    80009120:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80009124:	0017f793          	andi	a5,a5,1
    80009128:	00078c63          	beqz	a5,80009140 <uartgetc+0x30>
    8000912c:	00074503          	lbu	a0,0(a4)
    80009130:	0ff57513          	zext.b	a0,a0
    80009134:	00813403          	ld	s0,8(sp)
    80009138:	01010113          	addi	sp,sp,16
    8000913c:	00008067          	ret
    80009140:	fff00513          	li	a0,-1
    80009144:	ff1ff06f          	j	80009134 <uartgetc+0x24>

0000000080009148 <uartintr>:
    80009148:	100007b7          	lui	a5,0x10000
    8000914c:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80009150:	0017f793          	andi	a5,a5,1
    80009154:	0a078463          	beqz	a5,800091fc <uartintr+0xb4>
    80009158:	fe010113          	addi	sp,sp,-32
    8000915c:	00813823          	sd	s0,16(sp)
    80009160:	00913423          	sd	s1,8(sp)
    80009164:	00113c23          	sd	ra,24(sp)
    80009168:	02010413          	addi	s0,sp,32
    8000916c:	100004b7          	lui	s1,0x10000
    80009170:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80009174:	0ff57513          	zext.b	a0,a0
    80009178:	00000097          	auipc	ra,0x0
    8000917c:	31c080e7          	jalr	796(ra) # 80009494 <consoleintr>
    80009180:	0054c783          	lbu	a5,5(s1)
    80009184:	0017f793          	andi	a5,a5,1
    80009188:	fe0794e3          	bnez	a5,80009170 <uartintr+0x28>
    8000918c:	00004617          	auipc	a2,0x4
    80009190:	ed460613          	addi	a2,a2,-300 # 8000d060 <uart_tx_r>
    80009194:	00004517          	auipc	a0,0x4
    80009198:	ed450513          	addi	a0,a0,-300 # 8000d068 <uart_tx_w>
    8000919c:	00063783          	ld	a5,0(a2)
    800091a0:	00053703          	ld	a4,0(a0)
    800091a4:	04f70263          	beq	a4,a5,800091e8 <uartintr+0xa0>
    800091a8:	100005b7          	lui	a1,0x10000
    800091ac:	0000a817          	auipc	a6,0xa
    800091b0:	0ac80813          	addi	a6,a6,172 # 80013258 <uart_tx_buf>
    800091b4:	01c0006f          	j	800091d0 <uartintr+0x88>
    800091b8:	0006c703          	lbu	a4,0(a3)
    800091bc:	00f63023          	sd	a5,0(a2)
    800091c0:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800091c4:	00063783          	ld	a5,0(a2)
    800091c8:	00053703          	ld	a4,0(a0)
    800091cc:	00f70e63          	beq	a4,a5,800091e8 <uartintr+0xa0>
    800091d0:	01f7f713          	andi	a4,a5,31
    800091d4:	00e806b3          	add	a3,a6,a4
    800091d8:	0055c703          	lbu	a4,5(a1)
    800091dc:	00178793          	addi	a5,a5,1
    800091e0:	02077713          	andi	a4,a4,32
    800091e4:	fc071ae3          	bnez	a4,800091b8 <uartintr+0x70>
    800091e8:	01813083          	ld	ra,24(sp)
    800091ec:	01013403          	ld	s0,16(sp)
    800091f0:	00813483          	ld	s1,8(sp)
    800091f4:	02010113          	addi	sp,sp,32
    800091f8:	00008067          	ret
    800091fc:	00004617          	auipc	a2,0x4
    80009200:	e6460613          	addi	a2,a2,-412 # 8000d060 <uart_tx_r>
    80009204:	00004517          	auipc	a0,0x4
    80009208:	e6450513          	addi	a0,a0,-412 # 8000d068 <uart_tx_w>
    8000920c:	00063783          	ld	a5,0(a2)
    80009210:	00053703          	ld	a4,0(a0)
    80009214:	04f70263          	beq	a4,a5,80009258 <uartintr+0x110>
    80009218:	100005b7          	lui	a1,0x10000
    8000921c:	0000a817          	auipc	a6,0xa
    80009220:	03c80813          	addi	a6,a6,60 # 80013258 <uart_tx_buf>
    80009224:	01c0006f          	j	80009240 <uartintr+0xf8>
    80009228:	0006c703          	lbu	a4,0(a3)
    8000922c:	00f63023          	sd	a5,0(a2)
    80009230:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80009234:	00063783          	ld	a5,0(a2)
    80009238:	00053703          	ld	a4,0(a0)
    8000923c:	02f70063          	beq	a4,a5,8000925c <uartintr+0x114>
    80009240:	01f7f713          	andi	a4,a5,31
    80009244:	00e806b3          	add	a3,a6,a4
    80009248:	0055c703          	lbu	a4,5(a1)
    8000924c:	00178793          	addi	a5,a5,1
    80009250:	02077713          	andi	a4,a4,32
    80009254:	fc071ae3          	bnez	a4,80009228 <uartintr+0xe0>
    80009258:	00008067          	ret
    8000925c:	00008067          	ret

0000000080009260 <consolewrite>:
    80009260:	fb010113          	addi	sp,sp,-80
    80009264:	04813023          	sd	s0,64(sp)
    80009268:	04113423          	sd	ra,72(sp)
    8000926c:	02913c23          	sd	s1,56(sp)
    80009270:	03213823          	sd	s2,48(sp)
    80009274:	03313423          	sd	s3,40(sp)
    80009278:	03413023          	sd	s4,32(sp)
    8000927c:	01513c23          	sd	s5,24(sp)
    80009280:	05010413          	addi	s0,sp,80
    80009284:	06c05c63          	blez	a2,800092fc <consolewrite+0x9c>
    80009288:	00060993          	mv	s3,a2
    8000928c:	00050a13          	mv	s4,a0
    80009290:	00058493          	mv	s1,a1
    80009294:	00000913          	li	s2,0
    80009298:	fff00a93          	li	s5,-1
    8000929c:	01c0006f          	j	800092b8 <consolewrite+0x58>
    800092a0:	fbf44503          	lbu	a0,-65(s0)
    800092a4:	0019091b          	addiw	s2,s2,1
    800092a8:	00148493          	addi	s1,s1,1
    800092ac:	00000097          	auipc	ra,0x0
    800092b0:	cb4080e7          	jalr	-844(ra) # 80008f60 <uartputc>
    800092b4:	03298063          	beq	s3,s2,800092d4 <consolewrite+0x74>
    800092b8:	00048613          	mv	a2,s1
    800092bc:	00100693          	li	a3,1
    800092c0:	000a0593          	mv	a1,s4
    800092c4:	fbf40513          	addi	a0,s0,-65
    800092c8:	ffffe097          	auipc	ra,0xffffe
    800092cc:	668080e7          	jalr	1640(ra) # 80007930 <either_copyin>
    800092d0:	fd5518e3          	bne	a0,s5,800092a0 <consolewrite+0x40>
    800092d4:	04813083          	ld	ra,72(sp)
    800092d8:	04013403          	ld	s0,64(sp)
    800092dc:	03813483          	ld	s1,56(sp)
    800092e0:	02813983          	ld	s3,40(sp)
    800092e4:	02013a03          	ld	s4,32(sp)
    800092e8:	01813a83          	ld	s5,24(sp)
    800092ec:	00090513          	mv	a0,s2
    800092f0:	03013903          	ld	s2,48(sp)
    800092f4:	05010113          	addi	sp,sp,80
    800092f8:	00008067          	ret
    800092fc:	00000913          	li	s2,0
    80009300:	fd5ff06f          	j	800092d4 <consolewrite+0x74>

0000000080009304 <consoleread>:
    80009304:	f9010113          	addi	sp,sp,-112
    80009308:	06813023          	sd	s0,96(sp)
    8000930c:	04913c23          	sd	s1,88(sp)
    80009310:	05213823          	sd	s2,80(sp)
    80009314:	05313423          	sd	s3,72(sp)
    80009318:	05413023          	sd	s4,64(sp)
    8000931c:	03513c23          	sd	s5,56(sp)
    80009320:	03613823          	sd	s6,48(sp)
    80009324:	03713423          	sd	s7,40(sp)
    80009328:	03813023          	sd	s8,32(sp)
    8000932c:	06113423          	sd	ra,104(sp)
    80009330:	01913c23          	sd	s9,24(sp)
    80009334:	07010413          	addi	s0,sp,112
    80009338:	00060b93          	mv	s7,a2
    8000933c:	00050913          	mv	s2,a0
    80009340:	00058c13          	mv	s8,a1
    80009344:	00060b1b          	sext.w	s6,a2
    80009348:	0000a497          	auipc	s1,0xa
    8000934c:	f3048493          	addi	s1,s1,-208 # 80013278 <cons>
    80009350:	00400993          	li	s3,4
    80009354:	fff00a13          	li	s4,-1
    80009358:	00a00a93          	li	s5,10
    8000935c:	05705e63          	blez	s7,800093b8 <consoleread+0xb4>
    80009360:	09c4a703          	lw	a4,156(s1)
    80009364:	0984a783          	lw	a5,152(s1)
    80009368:	0007071b          	sext.w	a4,a4
    8000936c:	08e78463          	beq	a5,a4,800093f4 <consoleread+0xf0>
    80009370:	07f7f713          	andi	a4,a5,127
    80009374:	00e48733          	add	a4,s1,a4
    80009378:	01874703          	lbu	a4,24(a4)
    8000937c:	0017869b          	addiw	a3,a5,1
    80009380:	08d4ac23          	sw	a3,152(s1)
    80009384:	00070c9b          	sext.w	s9,a4
    80009388:	0b370663          	beq	a4,s3,80009434 <consoleread+0x130>
    8000938c:	00100693          	li	a3,1
    80009390:	f9f40613          	addi	a2,s0,-97
    80009394:	000c0593          	mv	a1,s8
    80009398:	00090513          	mv	a0,s2
    8000939c:	f8e40fa3          	sb	a4,-97(s0)
    800093a0:	ffffe097          	auipc	ra,0xffffe
    800093a4:	544080e7          	jalr	1348(ra) # 800078e4 <either_copyout>
    800093a8:	01450863          	beq	a0,s4,800093b8 <consoleread+0xb4>
    800093ac:	001c0c13          	addi	s8,s8,1
    800093b0:	fffb8b9b          	addiw	s7,s7,-1
    800093b4:	fb5c94e3          	bne	s9,s5,8000935c <consoleread+0x58>
    800093b8:	000b851b          	sext.w	a0,s7
    800093bc:	06813083          	ld	ra,104(sp)
    800093c0:	06013403          	ld	s0,96(sp)
    800093c4:	05813483          	ld	s1,88(sp)
    800093c8:	05013903          	ld	s2,80(sp)
    800093cc:	04813983          	ld	s3,72(sp)
    800093d0:	04013a03          	ld	s4,64(sp)
    800093d4:	03813a83          	ld	s5,56(sp)
    800093d8:	02813b83          	ld	s7,40(sp)
    800093dc:	02013c03          	ld	s8,32(sp)
    800093e0:	01813c83          	ld	s9,24(sp)
    800093e4:	40ab053b          	subw	a0,s6,a0
    800093e8:	03013b03          	ld	s6,48(sp)
    800093ec:	07010113          	addi	sp,sp,112
    800093f0:	00008067          	ret
    800093f4:	fffff097          	auipc	ra,0xfffff
    800093f8:	710080e7          	jalr	1808(ra) # 80008b04 <push_on>
    800093fc:	0984a703          	lw	a4,152(s1)
    80009400:	09c4a783          	lw	a5,156(s1)
    80009404:	0007879b          	sext.w	a5,a5
    80009408:	fef70ce3          	beq	a4,a5,80009400 <consoleread+0xfc>
    8000940c:	fffff097          	auipc	ra,0xfffff
    80009410:	76c080e7          	jalr	1900(ra) # 80008b78 <pop_on>
    80009414:	0984a783          	lw	a5,152(s1)
    80009418:	07f7f713          	andi	a4,a5,127
    8000941c:	00e48733          	add	a4,s1,a4
    80009420:	01874703          	lbu	a4,24(a4)
    80009424:	0017869b          	addiw	a3,a5,1
    80009428:	08d4ac23          	sw	a3,152(s1)
    8000942c:	00070c9b          	sext.w	s9,a4
    80009430:	f5371ee3          	bne	a4,s3,8000938c <consoleread+0x88>
    80009434:	000b851b          	sext.w	a0,s7
    80009438:	f96bf2e3          	bgeu	s7,s6,800093bc <consoleread+0xb8>
    8000943c:	08f4ac23          	sw	a5,152(s1)
    80009440:	f7dff06f          	j	800093bc <consoleread+0xb8>

0000000080009444 <consputc>:
    80009444:	10000793          	li	a5,256
    80009448:	00f50663          	beq	a0,a5,80009454 <consputc+0x10>
    8000944c:	00000317          	auipc	t1,0x0
    80009450:	c0c30067          	jr	-1012(t1) # 80009058 <uartputc_sync>
    80009454:	ff010113          	addi	sp,sp,-16
    80009458:	00113423          	sd	ra,8(sp)
    8000945c:	00813023          	sd	s0,0(sp)
    80009460:	01010413          	addi	s0,sp,16
    80009464:	00800513          	li	a0,8
    80009468:	00000097          	auipc	ra,0x0
    8000946c:	bf0080e7          	jalr	-1040(ra) # 80009058 <uartputc_sync>
    80009470:	02000513          	li	a0,32
    80009474:	00000097          	auipc	ra,0x0
    80009478:	be4080e7          	jalr	-1052(ra) # 80009058 <uartputc_sync>
    8000947c:	00013403          	ld	s0,0(sp)
    80009480:	00813083          	ld	ra,8(sp)
    80009484:	00800513          	li	a0,8
    80009488:	01010113          	addi	sp,sp,16
    8000948c:	00000317          	auipc	t1,0x0
    80009490:	bcc30067          	jr	-1076(t1) # 80009058 <uartputc_sync>

0000000080009494 <consoleintr>:
    80009494:	fe010113          	addi	sp,sp,-32
    80009498:	00813823          	sd	s0,16(sp)
    8000949c:	00913423          	sd	s1,8(sp)
    800094a0:	01213023          	sd	s2,0(sp)
    800094a4:	00113c23          	sd	ra,24(sp)
    800094a8:	02010413          	addi	s0,sp,32
    800094ac:	0000a917          	auipc	s2,0xa
    800094b0:	dcc90913          	addi	s2,s2,-564 # 80013278 <cons>
    800094b4:	00050493          	mv	s1,a0
    800094b8:	00090513          	mv	a0,s2
    800094bc:	fffff097          	auipc	ra,0xfffff
    800094c0:	378080e7          	jalr	888(ra) # 80008834 <acquire>
    800094c4:	02048c63          	beqz	s1,800094fc <consoleintr+0x68>
    800094c8:	0a092783          	lw	a5,160(s2)
    800094cc:	09892703          	lw	a4,152(s2)
    800094d0:	07f00693          	li	a3,127
    800094d4:	40e7873b          	subw	a4,a5,a4
    800094d8:	02e6e263          	bltu	a3,a4,800094fc <consoleintr+0x68>
    800094dc:	00d00713          	li	a4,13
    800094e0:	04e48063          	beq	s1,a4,80009520 <consoleintr+0x8c>
    800094e4:	07f7f713          	andi	a4,a5,127
    800094e8:	00e90733          	add	a4,s2,a4
    800094ec:	0017879b          	addiw	a5,a5,1
    800094f0:	0af92023          	sw	a5,160(s2)
    800094f4:	00970c23          	sb	s1,24(a4)
    800094f8:	08f92e23          	sw	a5,156(s2)
    800094fc:	01013403          	ld	s0,16(sp)
    80009500:	01813083          	ld	ra,24(sp)
    80009504:	00813483          	ld	s1,8(sp)
    80009508:	00013903          	ld	s2,0(sp)
    8000950c:	0000a517          	auipc	a0,0xa
    80009510:	d6c50513          	addi	a0,a0,-660 # 80013278 <cons>
    80009514:	02010113          	addi	sp,sp,32
    80009518:	fffff317          	auipc	t1,0xfffff
    8000951c:	3e830067          	jr	1000(t1) # 80008900 <release>
    80009520:	00a00493          	li	s1,10
    80009524:	fc1ff06f          	j	800094e4 <consoleintr+0x50>

0000000080009528 <consoleinit>:
    80009528:	fe010113          	addi	sp,sp,-32
    8000952c:	00113c23          	sd	ra,24(sp)
    80009530:	00813823          	sd	s0,16(sp)
    80009534:	00913423          	sd	s1,8(sp)
    80009538:	02010413          	addi	s0,sp,32
    8000953c:	0000a497          	auipc	s1,0xa
    80009540:	d3c48493          	addi	s1,s1,-708 # 80013278 <cons>
    80009544:	00048513          	mv	a0,s1
    80009548:	00001597          	auipc	a1,0x1
    8000954c:	2d058593          	addi	a1,a1,720 # 8000a818 <CONSOLE_STATUS+0x7f8>
    80009550:	fffff097          	auipc	ra,0xfffff
    80009554:	2c0080e7          	jalr	704(ra) # 80008810 <initlock>
    80009558:	00000097          	auipc	ra,0x0
    8000955c:	9c4080e7          	jalr	-1596(ra) # 80008f1c <uartinit>
    80009560:	01813083          	ld	ra,24(sp)
    80009564:	01013403          	ld	s0,16(sp)
    80009568:	00000797          	auipc	a5,0x0
    8000956c:	d9c78793          	addi	a5,a5,-612 # 80009304 <consoleread>
    80009570:	0af4bc23          	sd	a5,184(s1)
    80009574:	00000797          	auipc	a5,0x0
    80009578:	cec78793          	addi	a5,a5,-788 # 80009260 <consolewrite>
    8000957c:	0cf4b023          	sd	a5,192(s1)
    80009580:	00813483          	ld	s1,8(sp)
    80009584:	02010113          	addi	sp,sp,32
    80009588:	00008067          	ret

000000008000958c <console_read>:
    8000958c:	ff010113          	addi	sp,sp,-16
    80009590:	00813423          	sd	s0,8(sp)
    80009594:	01010413          	addi	s0,sp,16
    80009598:	00813403          	ld	s0,8(sp)
    8000959c:	0000a317          	auipc	t1,0xa
    800095a0:	d9433303          	ld	t1,-620(t1) # 80013330 <devsw+0x10>
    800095a4:	01010113          	addi	sp,sp,16
    800095a8:	00030067          	jr	t1

00000000800095ac <console_write>:
    800095ac:	ff010113          	addi	sp,sp,-16
    800095b0:	00813423          	sd	s0,8(sp)
    800095b4:	01010413          	addi	s0,sp,16
    800095b8:	00813403          	ld	s0,8(sp)
    800095bc:	0000a317          	auipc	t1,0xa
    800095c0:	d7c33303          	ld	t1,-644(t1) # 80013338 <devsw+0x18>
    800095c4:	01010113          	addi	sp,sp,16
    800095c8:	00030067          	jr	t1

00000000800095cc <kinit>:
    800095cc:	fc010113          	addi	sp,sp,-64
    800095d0:	02913423          	sd	s1,40(sp)
    800095d4:	fffff7b7          	lui	a5,0xfffff
    800095d8:	0000b497          	auipc	s1,0xb
    800095dc:	de748493          	addi	s1,s1,-537 # 800143bf <end+0xfff>
    800095e0:	02813823          	sd	s0,48(sp)
    800095e4:	01313c23          	sd	s3,24(sp)
    800095e8:	00f4f4b3          	and	s1,s1,a5
    800095ec:	02113c23          	sd	ra,56(sp)
    800095f0:	03213023          	sd	s2,32(sp)
    800095f4:	01413823          	sd	s4,16(sp)
    800095f8:	01513423          	sd	s5,8(sp)
    800095fc:	04010413          	addi	s0,sp,64
    80009600:	000017b7          	lui	a5,0x1
    80009604:	01100993          	li	s3,17
    80009608:	00f487b3          	add	a5,s1,a5
    8000960c:	01b99993          	slli	s3,s3,0x1b
    80009610:	06f9e063          	bltu	s3,a5,80009670 <kinit+0xa4>
    80009614:	0000aa97          	auipc	s5,0xa
    80009618:	daca8a93          	addi	s5,s5,-596 # 800133c0 <end>
    8000961c:	0754ec63          	bltu	s1,s5,80009694 <kinit+0xc8>
    80009620:	0734fa63          	bgeu	s1,s3,80009694 <kinit+0xc8>
    80009624:	00088a37          	lui	s4,0x88
    80009628:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    8000962c:	00004917          	auipc	s2,0x4
    80009630:	a4490913          	addi	s2,s2,-1468 # 8000d070 <kmem>
    80009634:	00ca1a13          	slli	s4,s4,0xc
    80009638:	0140006f          	j	8000964c <kinit+0x80>
    8000963c:	000017b7          	lui	a5,0x1
    80009640:	00f484b3          	add	s1,s1,a5
    80009644:	0554e863          	bltu	s1,s5,80009694 <kinit+0xc8>
    80009648:	0534f663          	bgeu	s1,s3,80009694 <kinit+0xc8>
    8000964c:	00001637          	lui	a2,0x1
    80009650:	00100593          	li	a1,1
    80009654:	00048513          	mv	a0,s1
    80009658:	ffffe097          	auipc	ra,0xffffe
    8000965c:	4ac080e7          	jalr	1196(ra) # 80007b04 <__memset>
    80009660:	00093783          	ld	a5,0(s2)
    80009664:	00f4b023          	sd	a5,0(s1)
    80009668:	00993023          	sd	s1,0(s2)
    8000966c:	fd4498e3          	bne	s1,s4,8000963c <kinit+0x70>
    80009670:	03813083          	ld	ra,56(sp)
    80009674:	03013403          	ld	s0,48(sp)
    80009678:	02813483          	ld	s1,40(sp)
    8000967c:	02013903          	ld	s2,32(sp)
    80009680:	01813983          	ld	s3,24(sp)
    80009684:	01013a03          	ld	s4,16(sp)
    80009688:	00813a83          	ld	s5,8(sp)
    8000968c:	04010113          	addi	sp,sp,64
    80009690:	00008067          	ret
    80009694:	00001517          	auipc	a0,0x1
    80009698:	18c50513          	addi	a0,a0,396 # 8000a820 <CONSOLE_STATUS+0x800>
    8000969c:	fffff097          	auipc	ra,0xfffff
    800096a0:	a3c080e7          	jalr	-1476(ra) # 800080d8 <panic>

00000000800096a4 <freerange>:
    800096a4:	fc010113          	addi	sp,sp,-64
    800096a8:	000017b7          	lui	a5,0x1
    800096ac:	02913423          	sd	s1,40(sp)
    800096b0:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800096b4:	009504b3          	add	s1,a0,s1
    800096b8:	fffff537          	lui	a0,0xfffff
    800096bc:	02813823          	sd	s0,48(sp)
    800096c0:	02113c23          	sd	ra,56(sp)
    800096c4:	03213023          	sd	s2,32(sp)
    800096c8:	01313c23          	sd	s3,24(sp)
    800096cc:	01413823          	sd	s4,16(sp)
    800096d0:	01513423          	sd	s5,8(sp)
    800096d4:	01613023          	sd	s6,0(sp)
    800096d8:	04010413          	addi	s0,sp,64
    800096dc:	00a4f4b3          	and	s1,s1,a0
    800096e0:	00f487b3          	add	a5,s1,a5
    800096e4:	06f5e463          	bltu	a1,a5,8000974c <freerange+0xa8>
    800096e8:	0000aa97          	auipc	s5,0xa
    800096ec:	cd8a8a93          	addi	s5,s5,-808 # 800133c0 <end>
    800096f0:	0954e263          	bltu	s1,s5,80009774 <freerange+0xd0>
    800096f4:	01100993          	li	s3,17
    800096f8:	01b99993          	slli	s3,s3,0x1b
    800096fc:	0734fc63          	bgeu	s1,s3,80009774 <freerange+0xd0>
    80009700:	00058a13          	mv	s4,a1
    80009704:	00004917          	auipc	s2,0x4
    80009708:	96c90913          	addi	s2,s2,-1684 # 8000d070 <kmem>
    8000970c:	00002b37          	lui	s6,0x2
    80009710:	0140006f          	j	80009724 <freerange+0x80>
    80009714:	000017b7          	lui	a5,0x1
    80009718:	00f484b3          	add	s1,s1,a5
    8000971c:	0554ec63          	bltu	s1,s5,80009774 <freerange+0xd0>
    80009720:	0534fa63          	bgeu	s1,s3,80009774 <freerange+0xd0>
    80009724:	00001637          	lui	a2,0x1
    80009728:	00100593          	li	a1,1
    8000972c:	00048513          	mv	a0,s1
    80009730:	ffffe097          	auipc	ra,0xffffe
    80009734:	3d4080e7          	jalr	980(ra) # 80007b04 <__memset>
    80009738:	00093703          	ld	a4,0(s2)
    8000973c:	016487b3          	add	a5,s1,s6
    80009740:	00e4b023          	sd	a4,0(s1)
    80009744:	00993023          	sd	s1,0(s2)
    80009748:	fcfa76e3          	bgeu	s4,a5,80009714 <freerange+0x70>
    8000974c:	03813083          	ld	ra,56(sp)
    80009750:	03013403          	ld	s0,48(sp)
    80009754:	02813483          	ld	s1,40(sp)
    80009758:	02013903          	ld	s2,32(sp)
    8000975c:	01813983          	ld	s3,24(sp)
    80009760:	01013a03          	ld	s4,16(sp)
    80009764:	00813a83          	ld	s5,8(sp)
    80009768:	00013b03          	ld	s6,0(sp)
    8000976c:	04010113          	addi	sp,sp,64
    80009770:	00008067          	ret
    80009774:	00001517          	auipc	a0,0x1
    80009778:	0ac50513          	addi	a0,a0,172 # 8000a820 <CONSOLE_STATUS+0x800>
    8000977c:	fffff097          	auipc	ra,0xfffff
    80009780:	95c080e7          	jalr	-1700(ra) # 800080d8 <panic>

0000000080009784 <kfree>:
    80009784:	fe010113          	addi	sp,sp,-32
    80009788:	00813823          	sd	s0,16(sp)
    8000978c:	00113c23          	sd	ra,24(sp)
    80009790:	00913423          	sd	s1,8(sp)
    80009794:	02010413          	addi	s0,sp,32
    80009798:	03451793          	slli	a5,a0,0x34
    8000979c:	04079c63          	bnez	a5,800097f4 <kfree+0x70>
    800097a0:	0000a797          	auipc	a5,0xa
    800097a4:	c2078793          	addi	a5,a5,-992 # 800133c0 <end>
    800097a8:	00050493          	mv	s1,a0
    800097ac:	04f56463          	bltu	a0,a5,800097f4 <kfree+0x70>
    800097b0:	01100793          	li	a5,17
    800097b4:	01b79793          	slli	a5,a5,0x1b
    800097b8:	02f57e63          	bgeu	a0,a5,800097f4 <kfree+0x70>
    800097bc:	00001637          	lui	a2,0x1
    800097c0:	00100593          	li	a1,1
    800097c4:	ffffe097          	auipc	ra,0xffffe
    800097c8:	340080e7          	jalr	832(ra) # 80007b04 <__memset>
    800097cc:	00004797          	auipc	a5,0x4
    800097d0:	8a478793          	addi	a5,a5,-1884 # 8000d070 <kmem>
    800097d4:	0007b703          	ld	a4,0(a5)
    800097d8:	01813083          	ld	ra,24(sp)
    800097dc:	01013403          	ld	s0,16(sp)
    800097e0:	00e4b023          	sd	a4,0(s1)
    800097e4:	0097b023          	sd	s1,0(a5)
    800097e8:	00813483          	ld	s1,8(sp)
    800097ec:	02010113          	addi	sp,sp,32
    800097f0:	00008067          	ret
    800097f4:	00001517          	auipc	a0,0x1
    800097f8:	02c50513          	addi	a0,a0,44 # 8000a820 <CONSOLE_STATUS+0x800>
    800097fc:	fffff097          	auipc	ra,0xfffff
    80009800:	8dc080e7          	jalr	-1828(ra) # 800080d8 <panic>

0000000080009804 <kalloc>:
    80009804:	fe010113          	addi	sp,sp,-32
    80009808:	00813823          	sd	s0,16(sp)
    8000980c:	00913423          	sd	s1,8(sp)
    80009810:	00113c23          	sd	ra,24(sp)
    80009814:	02010413          	addi	s0,sp,32
    80009818:	00004797          	auipc	a5,0x4
    8000981c:	85878793          	addi	a5,a5,-1960 # 8000d070 <kmem>
    80009820:	0007b483          	ld	s1,0(a5)
    80009824:	02048063          	beqz	s1,80009844 <kalloc+0x40>
    80009828:	0004b703          	ld	a4,0(s1)
    8000982c:	00001637          	lui	a2,0x1
    80009830:	00500593          	li	a1,5
    80009834:	00048513          	mv	a0,s1
    80009838:	00e7b023          	sd	a4,0(a5)
    8000983c:	ffffe097          	auipc	ra,0xffffe
    80009840:	2c8080e7          	jalr	712(ra) # 80007b04 <__memset>
    80009844:	01813083          	ld	ra,24(sp)
    80009848:	01013403          	ld	s0,16(sp)
    8000984c:	00048513          	mv	a0,s1
    80009850:	00813483          	ld	s1,8(sp)
    80009854:	02010113          	addi	sp,sp,32
    80009858:	00008067          	ret
	...
