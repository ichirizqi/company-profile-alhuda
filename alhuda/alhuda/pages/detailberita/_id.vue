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

    <div class=" md:my-20 my-10" >  
        <div class="flex flex-row">
            <!-- PENGUMUMAN -->
            <div class="md:mt-20 md:px-20 px-5 mt-10 -z-30 md:w-9/12 w-full">
                <h6 class="font-dm-sans font-bold text-40px text-six-blue" >{{post.judul}}</h6>
                <p class="font-dm-sans font-bold text-sm text-gray-300 uppercase">{{post.tanggal}}</p>
                <!-- <p class="font-dm-sans font-medium  text-lg text-six-blue mt-10">This sounded nonsense to Alice, so she said nothing, but set off at once toward the Red Queen. To her surprise, she lost sight of her in a moment, and found herself walking in at the front-door again.</p> -->
                <p class="font-dm-sans font-normal text-gray-400 text-base mt-7">{{post.keterangan}}</p>
            </div>

            <div class="md:mt-20 w-1/4 md:block hidden" >
                <h6 class="font-dm-sans font-bold text-sm text-gray-300 uppercase">Last Seen</h6>
                <div class="flex flex-row mt-5"  v-for="b in berita" :key="b.id">
                    <img :src="require(`../../../public/berita/${b.foto}`)" alt="Detail" class="w-32 h-16 rounded-lg">
                   <div class="mx-4">
                        <p class="font-dm-sans font-normal text-base">{{b.judul}}</p>
                        <p class="font-dm-sans font-normal text-base text-gray-400">19 December</p>
                   </div>
                </div>
            </div>
        </div>

        <!-- ORNAMENT -->
        <div class="-z-50 md:px-10 px-5 absolute md:mt-56 w-full top-0 mt-64">
            <div class="flex flex-row justify-between md:mb-96">
                <div class="md:-mt-10 mt-20">
                    <img src="../../images/grup4.png" alt="Ornament" class="md:w-24 w-16">
                </div>
                <div class="md:-mt-48 -mt-60">
                    <img src="../../images/grup1.png" alt="Ornament" class="md:ml-40 md:w-24 w-16">
                </div>
                <div class="md:-mt-16 mt-60">
                    <img src="../../images/grup3.png" alt="Ornament" class="md:w-full w-16">
                </div>
            </div>
            <div class="flex flex-row justify-between pb-20 md:pt-64 ">
                <img src="../../images/grup5.png" alt="Ornament" >
                <img src="../../images/grup2.png" alt="Ornament" >
            </div>
        </div>
        
    </div>

    <Footer/>
  </div>
</template>


<script>
import Meta from '../../components/Meta.vue'
import Navbar from '../../components/Navbar.vue'
import Footer from '../../components/Footer.vue'
export default {
  components: {
    Meta,
    Navbar,
    Footer
  },
  data() {
    return {
        berita: [],
        post: {
          judul: '',
          keterangan: ''
        },
    }
  },
  mounted() {

      //get data post by ID
      this.$axios.get(`/api/berita/${this.$route.params.id}`)
        .then(response => {
            this.post.judul   = response.data.data.judul,
            this.post.keterangan = response.data.data.keterangan
        }),

        //get data
         this.$axios.get('/api/user/berita')
            .then(response => {      
                //assign response ke state "berita"
                this.berita = response.data.data
            })
            .catch(error => {
                console.log(error.response.data)
            })
    }
}
</script>
