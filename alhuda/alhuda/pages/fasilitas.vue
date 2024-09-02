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

    
   <div class="relative md:my-20 my-10" style="z-index:-50;">
        <div class="md:mt-36 md:px-20 px-5 mt-10 relative">
            <div class="w-10 md:w-24 bg-ternary-blue opacity-60 h-6px mt-1 md:mb-5 mb-2"></div>
            <h6 class="md:text-40px text-base font-bold font-montserrat text-secondary-blue">Fasilitas</h6>
            <div class="z-20 grid md:grid-cols-3 grid-cols-2 gap-6 mt-10">
                <div class="border-2 rounded-md" v-for="f in fasilitas" :key="f.id">
                    <img :src="require(`../../public/fasilitas/${f.foto}`)" alt="Fasilitas" class="w-full md:h-44 h-24">
                    <p class="font-inter font-normal md:text-xl text-sm text-five-blue md:py-3 py-4 text-center">{{ f.keterangan }}</p>
                </div>
            </div>
        </div>


        <!-- ORNAMENT -->
        <div class="z-0 md:px-10 px-5 absolute md:mt-56 w-full top-0 mt-64">
            <div class="flex flex-row justify-between md:mb-96">
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
  data() {
    return {
      fasilitas: []
    }
  },
  mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/fasilitas')
      .then(response => {      
        //assign response ke state "fasilitas"
        this.fasilitas = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },
}
</script>