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
    


        <div class="md:mt-36 md:px-20 px-5 mt-10 -z-30">
            <div class="w-10 md:w-24 bg-ternary-blue opacity-60 h-6px mt-1 md:mb-5 mb-2"></div>
            <h6 class="md:text-40px text-base font-bold font-montserrat text-secondary-blue">Prestasi Siswa</h6>
            <div class="mt-5 md:mt-10 z-0">   
                                <div class="w-full pt-4">
                                    <div class="flex md:flex-row flex-col"  >
                                        <div>
                                            <div class="flex flex-row p-3 text-sm font-semibold font-worksans">
                                                <h6 class="md:w-44 w-20">Nama</h6>
                                                <h6 class="md:w-44 w-20">Nama Lomba</h6>
                                                <h6 class="md:w-32 w-24">Peringkat</h6>
                                                <h6 class="md:w-32 w-24">Tingkat Lomba</h6>
                                                <h6 class="md:w-10 w-10">Tahun</h6>
                                            </div>
                                            <div class="flex flex-row p-3 text-sm font-normal font-worksans border rounded-md" v-for="p in prestasi" :key="p.id">
                                                <h6 class="md:w-44 w-20">{{p.nama}}</h6>
                                                <h6 class="md:w-44 w-20">{{p.lomba}}</h6>
                                                <h6 class="md:w-32 w-24">Peringkat {{p.peringkat}}</h6>
                                                <h6 class="md:w-32 md:pr-0 w-24 pr-2">{{p.tingkat}}</h6>
                                                <h6 class="md:w-10 w-10">{{p.tahun}}</h6>
                                            </div>
                                        </div>

                                        <!-- GALERI -->
                                        <div class="md:ml-16 mt-5 md:mt-0 bg-fourth-blue md:px-6 px-3 py-5 rounded-md">
                                            <h6 class="font-montserrat font-bold text-2xl text-secondary-blue pb-5">Galeri Prestasi</h6>
                                            <div class="grid grid-cols-2 gap-3">
                                                <img src="../images/galeri1.png" alt="Galeri Prestasi" class="w-60 h-48">
                                                <img src="../images/galeri2.png" alt="Galeri Prestasi" class="w-60 h-48">
                                                <img src="../images/galeri3.png" alt="Galeri Prestasi" class="w-60 h-48">
                                                <img src="../images/galeri4.png" alt="Galeri Prestasi" class="w-60 h-48">
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>        
            </div>
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
          <div class="flex flex-row justify-between pb-8 md:pt-60 pt-80 md:mt-0 mt-20">
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
        prestasi:[]
      }
   },
   mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/prestasi')
      .then(response => {      
        //assign response ke state "prestasi"
        this.prestasi = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },
}
</script>