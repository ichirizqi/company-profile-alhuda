<template>
  <div>
    <Meta/>
    <div class="z-50">
         <Navbar
         class="shadow-md"
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
    </div>

     <div class="md:mt-36 md:px-20 px-5 mt-10">
        <div class="w-10 md:w-24 bg-ternary-blue opacity-60 h-6px mt-1 md:mb-5 mb-2"></div>
        <h6 class="md:text-40px text-base font-bold font-montserrat text-secondary-blue">Visi dan Misi</h6>
       <div class="z-20">  
            <div class="flex flex-col md:flex-row md:my-14">
                <div class="flex flex-row justify-center  bg-primary-tosca md:-mt-5 rounded-t-full md:h-80 md:w-72 w-52 mx-auto mt-10">
                    <img src="../images/visi.png" alt="Kepala Sekolah" class="pt-5" >
                </div>
                <div class="md:mx-14 md:mt-0 mt-5 font-quicksand text-base font-normal md:w-750px md:h-48">
                    <p class="font-semibold">Visi</p>
                    <p v-for="v in visi" :key="v.id">{{ v.visi }}</p>
                    <p class="font-semibold mt-5">Misi</p>
                    <p v-for="(m, i) in misi" :key="m.id">{{i+1}}. {{ m.misi }}</p>
                </div>
            </div>
       </div>
        
      </div>

      <!-- ORNAMENT -->
      <div class="md:-mt-96 z-0 md:px-10 px-5 -mt-500">
          <div class="flex flex-row justify-between ">
            <div class="md:-mt-10 mt-20">
                <img src="../images/grup4.png" alt="Ornament" class="md:w-24 w-16">
            </div>
            <div class="md:-mt-28 -mt-10">
                <img src="../images/grup1.png" alt="Ornament" class="md:ml-40 md:w-24 w-16">
            </div>
            <div class="md:-mt-16 mt-60">
                <img src="../images/grup3.png" alt="Ornament" class="md:w-full w-16">
            </div>
          </div>
          <div class="flex flex-row justify-between pb-8 md:pt-60 pt-96 md:mt-0 mt-20">
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
      visi: [],
      misi: []
    }
  },
  mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/visi')
      .then(response => {      
        //assign response ke state "visi"
        this.visi = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      }),
    
    this.$axios.get('/api/user/misi')
      .then(response => {      
        //assign response ke state "misi"
        this.misi = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },
  
    
}
</script>