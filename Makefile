all: hserver hclient

hserver:
	gcc hello_server.c -o output/hserver

hserver_without_listen:
	gcc hello_server_without_listen.c -o output/$@

hserver_without_accept:
	gcc hello_server_without_accept.c -o output/$@

hclient:
	gcc hello_client.c -o output/hclient

tcpclient:
	gcc tcp_client.c -o output/tcpclient

lopen:
	gcc low_open.c -o output/lopen

lread:
	gcc low_read.c -o output/lread

fds:
	gcc fd_seri.c -o output/fds

endian_conv:
	gcc endian_conv.c -o output/endian_conv

inet_addr:
	gcc inet_addr.c -o output/inet_addr

inet_aton:
	gcc inet_aton.c -o output/inet_aton

inet_ntoa:
	gcc inet_ntoa.c -o output/inet_ntoa

echo_server:
	gcc echo_server.c -o output/echo_server

echo_client:
	gcc echo_client.c -o output/echo_client

echo_client2:
	gcc echo_client2.c -o output/echo_client2

uclient:
	gcc uecho_client.c -o output/uclient

userver:
	gcc uecho_server.c -o output/userver

uclient_conn:
	gcc uecho_con_client.c -o output/$@

host1:
	gcc bound_host1.c -o output/host1

host2:
	gcc bound_host2.c -o output/host2

file_server:
	gcc file_server.c -o output/file_server

file_client:
	gcc file_client.c -o output/file_client

gethostbyname:
	gcc gethostbyname.c -o output/gethostbyname

gethostbyaddr:
	gcc gethostbyaddr.c -o output/gethostbyaddr

socktype:
	gcc sock_type.c -o output/socktype

getbuf:
	gcc get_buf.c -o output/getbuf

setbuf:
	gcc set_buf.c -o output/setbuf

reuseadr_server:
	gcc reuseadr_server.c -o output/reuseadr_server

fork:
	gcc fork.c -o output/fork

zombie:
	gcc zombie.c -o output/zombie

wait:
	gcc wait.c -o output/wait

waitpid:
	gcc waitpid.c -o output/waitpid

signal:
	gcc signal.c -o output/signal

sigaction:
	gcc sigaction.c -o output/sigaction

remove_zombie:
	gcc remove_zombie.c -o output/remove_zombie

echo_mpserv:
	gcc echo_mpserv.c -o output/$@

echo_mpclient:
	gcc echo_mpclient.c -o output/$@

pipe1:
	gcc pipe1.c -o output/$@

pipe2:
	gcc pipe2.c -o output/$@

pipe3:
	gcc pipe3.c -o output/$@

echo_storeserv:
	gcc echo_storeserv.c -o output/$@

select:
	gcc select.c -o output/$@

selserv:
	gcc echo_selectserv.c -o output/$@

oob_send:
	gcc oob_send.c -o output/$@

oob_recv:
	gcc oob_recv.c -o output/$@

peek_recv:
	gcc peek_recv.c -o output/$@

peek_send:
	gcc peek_send.c -o output/$@

writev:
	gcc writev.c -o output/$@

readv:
	gcc readv.c -o output/$@

news_receiver:
	gcc news_receiver.c -o output/$@

news_sender:
	gcc news_sender.c -o output/$@

news_sender_brd:
	gcc news_sender_brd.c -o output/$@

news_receiver_brd:
	gcc news_receiver_brd.c -o output/$@

syscpy:
	gcc syscpy.c -o output/$@

stdcpy:
	gcc stdcpy.c -o output/$@

desto:
	gcc desto.c -o output/$@

todes:
	gcc todes.c -o output/$@

echo_stdserv:
	gcc echo_stdserv.c -o output/$@

echo_stdclnt:
	gcc echo_stdclnt.c -o output/$@

sep_serv:
	gcc sep_serv.c -o output/$@

sep_serv2:
	gcc sep_serv2.c -o output/$@

sep_clnt:
	gcc sep_clnt.c -o output/$@

dup:
	gcc dup.c -o output/$@

thread1:
	gcc thread1.c -o output/$@ -lpthread

thread2:
	gcc thread2.c -o output/$@ -lpthread

thread3:
	gcc thread3.c -D_REENTRANT -o output/$@ -lpthread

thread4:
	gcc thread4.c -D_REENTRANT -o output/$@ -lpthread

semaphore:
	gcc semaphore.c -D_REENTRANT -o output/$@ -lpthread

mutex:
	gcc mutex.c -D_REENTRANT -o output/$@ -lpthread

webserv:
	gcc webserv_linux.c -D_REENTRANT -o output/$@ -lpthread

clean:
	rm -rf output/*