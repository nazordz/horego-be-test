<?php

namespace Tests\Feature;

// use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     */
    public function test_the_application_returns_a_successful_response(): void
    {
        $response = $this->get('/');
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
        # 1. Makmur   2017-11-14 12:00  50_000 50_000_000
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
        # Your code down here.

        foreach ($items as $key => $value) {
            echo "{$value['name']} - {$value['quantity']} - {$value['price']} \n";


            $count_peserta = count_peserta($submissions, $value['name']);
            echo "Peserta ({$count_peserta}): \n";

            $peserta = filter_peserta($submissions, $value['name']);

            $peserta = get_peserta_latest_bidding($peserta, $value);

            // sort by lower prices
            usort($peserta, function($a, $b) {
                return $a['bidden'][$a['latest_bidding_date']]['price'] <=> $b['bidden'][$b['latest_bidding_date']]['price'];
            });

            $no = 1;
            foreach ($peserta as $kp => $vp) {
                $price = $vp['bidden'][$vp['latest_bidding_date']]['price'];
                $subtotal = $price * $value['quantity'];
                echo "{$no}. {$vp['name']} \t {$vp['latest_bidding_date']} \t {$price} \t {$subtotal} \n";

                $no++;
            }

            echo "\n";

        }

        function count_peserta($sbms, $name): int {
            $count_peserta = 0;
            foreach($sbms as $bk => $vb) {
                if (isset($vb['bidding'][$name])) {
                    $count_peserta += 1;
                }
            }
            return $count_peserta;
        }

        function filter_peserta($sbms, $name): array {
            return array_filter($sbms, function($v, $k) use ($name) {
                if (isset($v['bidding'][$name])) {
                    return true;
                }
                return false;
            }, ARRAY_FILTER_USE_BOTH);
        }

        function get_peserta_latest_bidding($peserta, $value) {
            foreach ($peserta as $kp => $vp) {
                if (isset($vp['bidding'][$value['name']])) {

                    $dates = ($vp['bidding'][$value['name']]);
                    krsort($dates);
                    $dates = array_filter($dates, function($v, $k) use($value) {
                        return $k <= $value['end'];
                    }, ARRAY_FILTER_USE_BOTH);

                    $peserta[$kp]['bidden'] = $dates;
                    $peserta[$kp]['latest_bidding_date'] = array_keys($dates)[0];
                }
            }
            return $peserta;
        }

        $response->assertStatus(200);
    }
}
