/*
 * @Author: your name
 * @Date: 2020-01-09 11:47:25
 * @LastEditTime: 2020-01-09 12:54:14
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \mysql-pool\Thread.h
 */
#ifndef __THREAD_H__
#define __THREAD_H__

#include <stdint.h>
#include <pthread.h>

class CThreadNotify
{
public:
    CThreadNotify()
    {
        //初始化互斥锁，并设置锁的属性为可重复上锁
        pthread_mutexattr_init(&m_mutexattr);
        //PTHREAD_MUTEX_RECURSIVE:如果一个线程对这种类型的互斥锁重复上锁，不会引起死锁，一个线程对这类互斥锁的多次重复上锁必须由这个线程来重复相同数量的解锁，这样才能解开这个互斥锁，别的线程才能得到这个互斥锁。
        pthread_mutexattr_settype(&m_mutexattr, PTHREAD_MUTEX_RECURSIVE);
        pthread_mutex_init(&m_mutex, &m_mutexattr);
        
        //初始化条件变量
        pthread_cond_init(&m_cond, NULL);
    }
    ~CThreadNotify()
    {
        pthread_mutexattr_destroy(&m_mutexattr);
        pthread_mutex_destroy(&m_mutex);
        pthread_cond_destroy(&m_cond);
    }
    void Lock()
    {
        pthread_mutex_lock(&m_mutex);
    }
    void Unlock()
    {
        pthread_mutex_unlock(&m_mutex);
    }
    void Wait()
    {
        pthread_cond_wait(&m_cond, &m_mutex);
    }
    // 返回0则正常，其他值为异常
    int WaitTime(int ms)
    {
        //获取时间
        struct timespec outtime;
        clock_gettime(CLOCK_MONOTONIC, &outtime);
        //ms为毫秒，换算成秒
        outtime.tv_sec += ms / 1000;

        //在outtime的基础上，增加ms毫秒
        //outtime.tv_nsec为纳秒，1微秒=1000纳秒
        //tv_nsec此值再加上剩余的毫秒数 ms%1000，有可能超过1秒。需要特殊处理
        uint64_t us = outtime.tv_nsec / 1000 + 1000 * (ms % 1000); //微秒
        //us的值有可能超过1秒，
        outtime.tv_sec += us / 1000000;

        us = us % 1000000;
        outtime.tv_nsec = us * 1000; //换算成纳秒
        return pthread_cond_timedwait(&m_cond, &m_mutex, &outtime);
    }
    void Signal()
    {
        pthread_cond_signal(&m_cond);
    }

private:
    pthread_mutex_t m_mutex;
    pthread_mutexattr_t m_mutexattr;

    pthread_cond_t m_cond;
};

#endif
