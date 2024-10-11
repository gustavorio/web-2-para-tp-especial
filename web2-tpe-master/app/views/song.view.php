<?php

require_once './app/views/view.php';

class SongView extends View {

    public function showSongs($songs, $genres) {
        
        //pasamos la duration de segundos a mm:ss
        foreach ($songs as $song) {
            $song->duration;
        }

        //seteamos el form para agregar canciones
        $form = './app/templates/form.add.song.phtml';
        require './app/templates/list.songs.phtml';
    }

    public function showSong($song, $genre) {
        $song->duration;
        require './app/templates/detail.song.phtml';
    }

    public function editForm($song, $songs, $genres) {
        //seteamos el form para editar canciones
        $form = './app/templates/form.edit.song.phtml';
        require './app/templates/list.songs.phtml';
    }
}