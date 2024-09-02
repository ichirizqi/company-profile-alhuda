<template>
  <div>
    <Meta/>
         <Navbar
         class="shadow-md z-50"
         name="Logo Name"
      :navLinks="[
        {
          name: 'Beranda', link: '/', dropdown: false,
        },
        { 
            name: 'Tentang Kami', link: '/', dropdown: false 
        },
        {
          name: 'Profil',
          dropdown: true,
          dropdownLinks: [ 
            { name: 'Visi Misi', link: '/visimisi', dropdown: false },
            { name: 'Prestasi Siswa', link: '/prestasi', dropdown: false },
             { name: 'Fasilitas', link: '/fasilitas', dropdown: false },
              { name: 'Pengajar', link: '/pengajar', dropdown: false },
          ],
        },
        {
          name: 'Kegiatan',
          dropdown: true,
          dropdownLinks: [ 
            { name: 'Ekstrakulikuler', link: '/ekskul', dropdown: false },
            { name: 'Berita', link: '/berita', dropdown: false },
            { name: 'Pengumuman', link: '/pengumuman', dropdown: false },
          ],
        },
        { 
            name: 'Galeri', link: '/galeri', dropdown: false 
        },
        { 
            name: 'Kontak', link: '/kontak', dropdown: false 
        },
        { 
            name: 'Pendaftaran', link: '/pendaftaran', dropdown: false 
        },
      ]"
    />




          <div class="md:mt-36 md:px-20 px-5 mt-10 -z-30 md:mb-20 mb-10">
            <div class="w-10 md:w-24 bg-ternary-blue opacity-60 h-6px mt-1 md:mb-5 mb-2"></div>
            <h6 class="md:text-40px text-base font-bold font-montserrat text-secondary-blue mb-2">Galeri</h6>
            <!-- <v-app> -->
              <div class="z-20 grid md:grid-cols-2 grid-cols-2 gap-6 mt-10">
                <div class="border" v-for="g in galeri" :key="g.id">
                  <!-- <img src="https://www.instagram.com/p/CW-OjE2PqLjKfdeWJbwQRKXRV6kc690UPbnVCY0/?utm_medium=copy_link" alt="Galeri"> -->
                  <img :src="require(`../../public/galeri/${g.foto}`)" alt="Galeri">
                  <!-- <button class="font-dm-sans font-thin  m-3 text-blue-500  hover:bg-gray-500 hover:text-white py-2 px-4 rounded" @click.stop="dialog = true">
                    Lihat Disini
                  </button> -->
                  <div class="md:my-5 my-2">
                    <a v-bind:href="g.link" target="_blank" class="font-dm-sans font-thin  m-3 text-blue-500  hover:bg-gray-500 hover:text-white py-2 px-4 rounded">
                    Lihat Disini
                    </a>
                  </div>
                </div>
              </div>
              <!-- <v-dialog v-model="dialog" max-width="500">
                <v-card>
                  <v-card-title class="text-h5">
                   <img src="../images/galeri.png" alt="Galeri">
                  </v-card-title>
                  <v-card-text class="font-dm-sans font-medium text-xl">
                    Pelaksanaan Ujian CBT
                  </v-card-text>
                </v-card>
              </v-dialog>
            </v-app> -->
          </div>

        <!-- ORNAMENT -->
        <div class="-z-50 md:px-10 px-5 absolute md:mt-56 w-full top-0 mt-64">
            <div class="flex flex-row justify-between ">
                <div class="md:-mt-10 mt-20">
                    <img src="../images/grup4.png" alt="Ornament" class="md:w-24 w-16">
                </div>
                <div class="md:-mt-48 -mt-60">
                    <img src="../images/grup1.png" alt="Ornament" class="md:ml-40 md:w-24 w-16">
                </div>
                <div class="md:-mt-16 mt-60">
                    <img src="../images/grup3.png" alt="Ornament" class="md:w-full w-16">
                </div>
            </div>
            <div class="flex flex-row justify-between pb-20 md:pt-64 ">
                <img src="../images/grup5.png" alt="Ornament" >
                <img src="../images/grup2.png" alt="Ornament" >
            </div>
        </div>


    <Footer/>
  </div>
</template>


<script>
import Meta from '../components/Meta.vue'
import Navbar from '../components/Navbar.vue'
import Footer from '../components/Footer.vue'
export default {
  components: {
    Meta,
    Navbar,
    Footer
  },
  data () {
      return {
        dialog: false,
        galeri: []
      }
  },
  mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/galeri')
      .then(response => {      
        //assign response ke state "galeri"
        this.galeri = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },
}
</script>
