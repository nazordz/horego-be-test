<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     */
    public function test_that_true_is_true(): void
    {

        # Bidding
        #
        # Tujuan dari bidding ini adalah untuk mencari harga terendah yang ditawarkan oleh setiap partner sebagai pemenang project.
        # Terdapat 2 items yang dibuka untuk bidding di bawah ini.
        # Setiap item mempunyai harga maximum yang boleh diajukan oleh peserta bidding.
        # Peserta bidding dapat memasukkan harga penawaran selama bidding masih aktif yaitu di antara waktu "start" dan "end".

        $items = array(
            array(
            'name'            => 'item-a',            # Nama Item
            'price'           => 70000,               # Harga Maximum
            'quantity'        => 1000,                # Jumlah item yang akan dikerjakan
            'production_time' => 8,                   # Lama pengerjaan dalam hari
            'start'           => '2017-11-14 10:00',  # Mulai bidding
            'end'             => '2017-11-14 12:00'   # Akhir bidding
            ),

            array(
            'name'            => 'item-b',
            'price'           => 50000,
            'quantity'        => 2000,
            'production_time' => 10,
            'start'           => '2017-11-14 12:00',
            'end'             => '2017-11-14 15:00'
            )
        );


        # Submissions
        #
        # Berikut adalah data harga yang ditawarkan oleh masing-masing peserta bidding untuk setiap item di atas.
        # Urutan tanggal submit sengaja diacak.
        # Harga yang diambil dari setiap user adalah harga yang terakhir di tawarkan.

        $submissions = array(
            array(
            'name' => 'Wili',                   # Nama Partner
            'bidding' => array(
                'item-a' => array(                # Submissions untuk item-a
                    '2017-11-14 10:00' => array(    # Tanggal submit
                        'price'           => 65000,   # Harga yang ditawarkan
                        'production_time' => 9        # Lama pengerjaan dalam hari
                    ),
                    '2017-11-14 12:00' => array(
                        'price'           => 68000,
                        'production_time' => 9
                    ),
                    '2017-11-14 10:30' => array(
                        'price'           => 71000,
                        'production_time' => 9
                    ),
                    '2017-11-14 12:30' => array(
                        'price'           => 10000,
                        'production_time' => 9
                    )
                ),

                'item-b' => array(
                    '2017-11-14 14:30' => array(
                        'price'           => 40000,
                        'production_time' => 9
                    ),
                    '2017-11-14 12:30' => array(
                        'price'           => 50000,
                        'production_time' => 9
                    )
                )
            )
            ),
            array(
            'name' => 'Lita',
            'bidding' => array(
                'item-b' => array(
                    '2017-11-14 13:30' => array(
                        'price'           => 45000,
                        'production_time' => 9
                    ),
                    '2017-11-14 15:01' => array(
                        'price'           => 35000,
                        'production_time' => 9
                    ),
                    '2017-11-14 12:30' => array(
                        'price'           => 48000,
                        'production_time' => 9
                    )
                )
            )
            ),
            array(
            'name' => 'Sabar',
            'bidding' => array(
                'item-a' => array(
                    '2017-11-14 11:50' => array(
                        'price'           => 65000,
                        'production_time' => 9
                    ),
                    '2017-11-14 11:30' => array(
                        'price'           => 68000,
                        'production_time' => 9
                    ),
                    '2017-11-14 11:00' => array(
                        'price'           => 69000,
                        'production_time' => 9
                    )
                )
            )
            ),
            array(
            'name' => 'Makmur',
            'bidding' => array(
                'item-a' => array(
                    '2017-11-14 12:00' => array(
                        'price'           => 50000,
                        'production_time' => 9
                    ),
                    '2017-11-14 11:00' => array(
                        'price'           => 5000,
                        'production_time' => 9
                    )
                )
            )
            )
        );
        # Buatlah sebuat code untuk mengolah data di atas, sehingga dapat menampilkan hasil seperti di bawah ini.
        #
        # # item-a - 1000 - 70000
        # Peserta (3):
        # 1. Makmur   2017-11-14 12:00  50000 50000000
        # 2. Sabar    2017-11-14 11:50  65000 65000000
        # 3. Wili     2017-11-14 12:00  68000 68000000

        # # item-b - 2000 - 50000
        # Peserta (2):
        # 1. Wili   2017-11-14 14:30  40000 80000000
        # 2. Lita   2017-11-14 13:30  45000 90000000
        #
        # Paste perkerjaan anda ke http://sandbox.onlinephpfunctions.com/
        # Click "Save or share your code" dan kirimkan link tersebut ke wawan@printerous.com
        # Subject: Printerous Challenge - YOUR NAME
        #
        # Your code down here


        $this->assertTrue(true);
    }
}
