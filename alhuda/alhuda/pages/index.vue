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

    <!-- SWIPER -->
        <v-carousel cycle hide-delimiter-background :show-arrows="false" class="slider -mt-2 md:mt-0 absolute" style="z-index:-50;">
            <v-carousel-item v-for="s in slide" :key="s.id">
                <v-sheet>
                    <v-row  align="center" justify="center">
                        <div class="text-h2 ">
                            <img :src="require(`../../public/foto/${s.foto}`)" class="object-cover w-full md:h-full h-64 "/>
                        </div>
                    </v-row>
                </v-sheet>
            </v-carousel-item>
         </v-carousel>
         <div class="bg-secondary-green w-60 h-20 -mt-96 md:mb-14 mb-3 md:w-445px md:h-188px relative md:-mt-56  mx-5 md:mx-20 bg-opacity-70 font-poppins" style="z-index:-20;" >
          <p class="text-center text-xs md:text-2xl font-semibold px-2 pt-4 md:px-5 md:pt-10 text-white">"Pendidikan adalah bekal terbaik untuk perjalanan hidup." </p>
          <p class="text-center text-xs md:text-2xl font-semibold px-2 pb-4 md:px-5 md:pb-10 text-white">- Aristoteles</p>
        </div>
    
     <!-- SAMBUTAN -->
     <div class="bg-white z-20 md:z-0 pb-10">
     <div class="inline w-full " v-for="s in sambutan" :key="s.id" >
        <div class="md:float-right pt-10 md:px-20 md:pt-36">
            <img :src="require(`../../public/sambutan/${s.foto}`)" alt="Kepala Sekolah" class="pt-3" >
        </div>
        <div class="md:px-20 px-5">
          <h5 class="pt-10 md:pt-28 text-2xl text-center md:text-left md:text-44px font-extrabold font-inter text-primary-black ">Sambutan Kepala Sekolah</h5>
          <div class="w-full md:w-500px bg-primary-green h-6px mt-1 md:mt-8"></div>
          <div class="md:w-8/12 w-full">
            <p class="pt-4 md:pt-8 text-base font-normal text-primary-black ">
           {{s.sambutan}}
            </p>
          </div>
          <h6 class="pt-7 text-lg font-bold font-inter text-primary-green ">{{s.nama}}</h6>
          <p class="text-base font-inter text-primary-black font-normal">{{s.jabatan}}</p>
        </div>
      </div>
     </div>
      
      <!-- VIDEO --> 
      <div class="px-10 md:px-24 md:mt-28 mt-24" v-for="v in vedeo" :key="v.id" >
          <div class="bg-blue-opacity"  style="z-index: -10;" >
            <img class="absolute right-0 w-full h-72 md:h-633px md:-mt-16 -mt-24" style="z-index: -10;" 
            src="../images/bg-video.png" alt="bg-video">
          </div>
          <div class="flex flex-col md:flex-row md:py-20 py-5 ">
            <p class="font-inter text-white font-bold text-lg text-center md:text-left md:text-4xl z-0 w-full md:w-445px -mt-20 md:pt-16">Kenal Lebih Dekat dengan Sekolah Dasar Islam Terpadu Al-Huda</p>
            <iframe :src="v.vedeo" class="z-0 mx-auto md:ml-10 w-56 h-44 md:w-635px md:h-457px md:pt-0 pt-5"> </iframe>
          </div>
      </div>
      
      <!-- ALUMNI  -->
       <div class="bg-ternary-green -mt-0 md:-mt-12 pb-10 md:pb-20 ">
            <div class="flex flex-col md:flex-row items-center">
              <img src="../images/ornament.png" alt="Ornamnet" class="w-20 md:w-56 opacity-25 md:mt-10 md:pl-20 md:block hidden">
              <h6 class="font-inter text-xl text-center md:text-left md:text-5xl text-white font-extrabold md:pl-10 md:mt-5 md:py-0 py-5">Alumni</h6>
            </div>
        <div class="">
                <v-carousel cycle hide-delimiter-background :show-arrows="false">
                    <v-carousel-item v-for="a in alumni" :key="a.id">
                        <v-sheet  >
                            <v-row class="fill-height" align="center" justify="center">
                                <div class="swiper-slide flex md:flex-row flex-col bg-ternary-green items-center">
                                    <img :src="require(`../../public/alumni/${a.foto}`)"  alt="Foto Alumni" class="mt-5 md:w-60 md:h-60 w-32 h-32 md:ml-28 ml-0"/>
                                    <div class="md:ml-10 md:w-635px w-full px-5 md:px-0">
                                      <p class="font-dm-sans font-normal text-base text-white md:text-left text-center mt-5 md:mt-0">{{a.testimoni}}</p>
                                      <p class="font-dm-sans font-bold text-lg text-white md:mt-8 mt-4 md:text-left text-center">{{a.nama}}</p>
                                      <p class="font-dm-sans font-medium text-lg text-white md:mt-5 mt-2 md:text-left text-center">{{a.prestasi}}</p>
                                    </div>
                                </div>
                            </v-row>
                        </v-sheet>
                    </v-carousel-item>
                </v-carousel>
        </div>
      </div>
    <Footer/>
  </div>
</template>

<style>
          .slider::after{
              content: '';
              display: block;
              width: 100%;
              height: 100%;
              background-image: linear-gradient(to right, rgba(3, 34, 95, 0.3), rgba(3, 34, 95, 0.3));
              position: absolute;
              bottom: 0;
          }
          .bg-blue-opacity::after{
              content: '';
              display: block;
              width: 100%;
              height: 633px;
              background-image: linear-gradient(to right, rgba(3, 34, 95, 0.2), rgba(3, 34, 95, 0.2));
              position: absolute;
              bottom: 0;
              top: 1167px;
              right: 0;
              z-index: -10;
          }
          .dropdown:hover .dropdown-menu {
              display: block;
          }
          .swiper-slide{
              display: -webkit-flex;
              display: flex;
              -webkit-justify-content: center;
              justify-content: center;
              align-items: center;
          }
          .img{
              width: 200px;
              height:200px;
          }

          @media only screen and (min-width:100px) and (max-width:500px){
              .img{
                  width: 200px;
                  height:200px;
              }
          }
</style>
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
        slide: [],
        alumni: [
          // require("../images/alumni.png"),
          //  require("../images/alumni.png"),
        ],
        sambutan: [],
        vedeo: []
      }
  },
   mounted() {  
     //fething ke Rest API 
    this.$axios.get('/api/user/foto')
      .then(response => {      
        //assign response ke state "slide"
        this.slide = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      }),

      //fething ke Rest API 
    this.$axios.get('/api/user/alumni')
      .then(response => {      
        //assign response ke state "alumni"
        this.alumni = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      }),
     
    //fething ke Rest API 
    this.$axios.get('/api/user/sambutan')
      .then(response => {      
        //assign response ke state "sambutan"
        this.sambutan = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      }),
    
    this.$axios.get('/api/user/vedeo')
      .then(response => {      
        //assign response ke state "vedeo"
        this.vedeo = response.data.data
      })
      .catch(error => {
        console.log(error.response.data)
      })
  },
}
</script>