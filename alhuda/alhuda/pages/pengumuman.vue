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
    

    
        <div class="md:mt-36 md:px-20 px-5 mt-10 -z-30 md:mb-40 mb-10">
            <div class="w-10 md:w-24 bg-ternary-blue opacity-60 h-6px mt-1 md:mb-5 mb-2"></div>
            <h6 class="md:text-40px text-base font-bold font-montserrat text-secondary-blue">Pengumuman</h6>

            <div class="md:block hidden">
              <div class="flex flex-row items-center"   v-for="p in pengumuman" :key="p.id">
                <div class="md:mt-0 mt-5 md:w-2/4 w-full mr-10">
                      <h6 class="font-dm-sans font-medium text-xl text-six-blue">{{p.judul}}</h6>
                      <p class="font-dm-sans font-normal text-base text-gray-400 my-3">{{p.isi  | truncate(150, '...')}}</p>
                    <div>
                      <template :cell(actions)="row">
                          <router-link :to="{name: 'detailpengumuman-id', params: {id: p.id}}" variant="warning" size="sm" class="border-2 px-2 py-2 rounded-2xl">Baca Selengkapnya</router-link>
                      </template>
                    </div>
                  </div>
                <div class="mt-5">
                  <img :src="require(`../../public/pengumuman/${p.foto}`)" alt="Pengumuman" class="md:w-500px w-full h-64">
                </div>
              </div>
            </div>
            
            <div class="inline w-full md:hidden block"  v-for="p in pengumuman" :key="p.id">
                <div class="md:float-right pt-10 md:px-20">
                    <div class="mt-5">
                        <img :src="require(`../../public/pengumuman/${p.foto}`)" alt="Pengumuman" class="md:w-500px w-full h-64">
                    </div>
                </div>
                <div class="md:mt-0 mt-5 md:w-3/5 w-full items-center">
                    <h6 class="font-dm-sans font-medium text-xl text-six-blue">{{p.judul}}</h6>
                    <p class="font-dm-sans font-normal text-base text-gray-400 my-3">{{p.isi  | truncate(150, '...')}}</p>
                  <div>
                    <template :cell(actions)="row">
                        <router-link :to="{name: 'detailpengumuman-id', params: {id: p.id}}" variant="warning" size="sm" class="border-2 px-2 py-2 rounded-2xl">Baca Selengkapnya</router-link>
                    </template>
                  </div>
                </div>
            </div>
        </div>

        <!-- ORNAMENT -->
        <div class="md:px-10 px-5 absolute md:mt-56 w-full top-0 mt-64 -z-50">
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
      pengumuman: []
    }
  },
  mounted() {    
    //fething ke Rest API 
    this.$axios.get('/api/user/pengumuman')
      .then(response => {      
        //assign response ke state "pengumuman"
        this.pengumuman = response.data.data
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