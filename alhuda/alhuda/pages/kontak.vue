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

         <div class="flex flex-col md:flex-row md:px-20 px-5 -z-30 md:mt-10 mt-5 md:mb-20 mb-10">
            <!-- KONTAK -->
             <div class="w-96">
                 <h6 class="font-inter text-40px font-bold text-six-blue text-center md:text-left">Kontak</h6>
                 <p class="font-inter font-normal text-base text-primary-black opacity-40 mt-5 relative -z-30">Alamat : Sungairujing, Sangkapura, Kabupaten Gresik, Jawa Timur 61181</p>
                 <div class="mt-5"  v-for="k in kontak" :key="k.id">
                     <div class="flex flex-row mt-2">
                        <img :src="require(`../../public/kontak/${k.foto}`)" alt="Foto" class="w-5 h-5">
                        <p class="font-inter font-medium text-lg text-six-blue ml-5">{{k.keterangan}}</p>
                    </div>
                 </div>
                 <div class="mt-5 w-96 h-0.5 bg-gray-200"></div>
                    <p class="font-dm-sans font-medium text-six-blue text-xl my-5">Lokasi</p>
                   <div class="mapouter relative -z-30"><div class="gmap_canvas"><iframe width="400" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=sekolah%20dasar%20islam%20terpadu%20alhuda%20kabupaten%20gresik&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org">123 movies</a><br><style>.mapouter{position:relative;text-align:right;height:400px;width:400px;}</style><a href="https://www.embedgooglemap.net"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:400px;width:400px;}</style></div></div>
             </div>

             <!-- FORM-->
             <div class="md:ml-20 ml-0 md:mt-0 mt-10">
                  <h6 class="font-inter text-40px font-bold text-six-blue text-center md:text-left">Hubungi Kami</h6>
                  <p class="font-inter font-normal text-base text-primary-black opacity-40 mt-5 text-center md:text-left">Tinggalkan pesan jika anda memiliki pertanyaan</p>
                  <div class="w-80 md:w-635px h-3/5 md:h-3/5 bg-gray-100 mt-8 rounded-xl mc:ml-0 ml-4">
                    <form @submit="formSubmit" class="md:px-20 px-5 py-10 md:py-10" >
                        <!-- EMAIL -->
                        <p class="font-inter font-bold text-sm text-six-blue">E-MAIL</p>
                        <input type="email" v-model="email" class="form-control mt-3 shadow appearance-none bg-white border rounded-3xl w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        placeholder="Your Email" >

                        <!-- PESAN -->
                        <p class="font-inter font-bold text-sm text-six-blue mt-6">PESAN</p>
                        <textarea v-model="pesan" 
                        class="form-control mt-3 shadow appearance-none bg-white border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" rows="8" placeholder="Drop us a line"></textarea>

                        <!-- NAMA -->
                        <p class="font-inter font-bold text-sm text-six-blue mt-5">NAMA</p>
                        <div class="flex flex-row">
                            <input type="text" v-model="nama" class="form-control mt-3 shadow appearance-none bg-white border rounded-3xl w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           placeholder="Your Name" >

                            <button class="bg-primary-tosca text-white px-10 mt-2 ml-3 rounded-3xl">
                                Send
                            </button>
                        </div>
                    </form>
                  </div>
             </div>
         </div>

        <!-- ORNAMENT -->
        <div class="md:px-10 px-5 absolute md:mt-56 w-full top-0 mt-64 -z-50">
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
import axios from 'axios'

import Meta from '../components/Meta.vue'
import Navbar from '../components/Navbar.vue'
import Footer from '../components/Footer.vue'
export default {
  components: {
    Meta,
    Navbar,
    Footer
  },
  data() {
    return {
      email: '',
      pesan: '',
      nama: '',

      kontak:[]
    };
  },

  methods: {
    async formSubmit() {
      await this.$axios.post('/api/user/hubungi', {
        email: this.email, 
        pesan: this.pesan,
        nama: this.nama
      })
      .then(function(response) {
        this.$router.push({
          name: 'kontak'
        })
      })
      .catch(function(error) {
        console.log(error)
      });
    }
  },
  mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/kontak')
      .then(response => {      
        //assign response ke state "kontak"
        this.kontak = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },
}
</script>