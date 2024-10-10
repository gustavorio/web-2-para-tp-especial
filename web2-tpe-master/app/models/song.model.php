<?php

require_once './app/models/model.php';

class SongModel extends Model {

    public function getSongs() {
        $query = $this->db->prepare('SELECT * FROM songs WHERE genre_id=? ORDER BY title');
        
        $query->execute();
        $songs = $query->fetchAll(PDO::FETCH_OBJ);
        return $songs;
    }

    public function getSong($id) {
        $query = $this->db->prepare('SELECT * FROM songs WHERE id=?');
        $query->execute([$id]);
    
        $song = $query->fetch(PDO::FETCH_OBJ);
        return $song;
    }

    public function getGenreSongs($genre_id) {
        $query = $this->db->prepare('SELECT * FROM songs WHERE genre_id=? ORDER BY title');
        $query->execute([$genre_id]);

        $songs = $query->fetchAll(PDO::FETCH_OBJ);
        return $songs;
    }

    public function saveSong($song, $artist, $duration, $track, $id = null) {
        if (isset($id)) {
            $query = $this->db->prepare('UPDATE songs SET title=?, artist=?, duration=?, track=? WHERE id=?');
            $query->execute([$song, $artist, $duration, $track, $id]);
        } else {
            $query = $this->db->prepare('INSERT INTO songs (title, artist, duration, track) VALUES(?, ?, ?, ?)');
            $query->execute([$song, $artist, $duration, $track]);

            return $this->db->lastInsertId();
        }
    }

    public function deleteSong($id) {
        $query = $this->db->prepare('DELETE FROM songs WHERE id=?');
        $query->execute([$id]);
    }
}