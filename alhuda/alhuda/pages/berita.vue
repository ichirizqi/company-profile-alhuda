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
            <h6 class="md:text-40px text-base font-bold font-montserrat text-secondary-blue">Berita</h6>
            <div class="z-20 grid md:grid-cols-3 grid-cols-2 gap-6 mt-10">
                <div class="rounded-xl border md:w-80 md:h-80 h-56" v-for="b in berita" :key="b.id" >
                    <img :src="require(`../../public/berita/${b.foto}`)" alt="Berita" class="rounded-xl md:w-80 w-40 md:h-44 h-32">
                    <p class="font-dm-sans font-medium md:text-xl text-sm text-six-blue md:py-3 py-2 md:px-4 px-2">{{b.judul}}</p>
                    <p class="font-dm-sans font-medium md:text-base text-xs text-primary-black opacity-60 md:px-4 px-2 md:mb-4 mb-2">{{b.keterangan  | truncate(100, '...')}}</p>
                    <template :cell(actions)="row">
                        <router-link :to="{name: 'detailberita-id', params: {id: b.id}}" variant="warning" size="sm" class="text-xs border-2 md:px-2 px-1 md:py-2 py-1 rounded-3xl md:mx-4 mx-1 hover:bg-ternary-blue hover:text-white">Baca Selengkapnya</router-link>
                    </template>
                </div>
            </div>
        </div>

        <!-- ONRAMENT -->
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
      berita: []
    }
  },
  mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/berita')
      .then(response => {      
        //assign response ke state "berita"
        this.berita = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },

  filters: {
        truncate: function (text, length, suffix) {
            if (text.length > length) {
                return text.substring(0, length) + suffix;
            } else {
                return text;
            }
        },
    }
}
</script>