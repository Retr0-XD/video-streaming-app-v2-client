const express = require('express');
const fs = require('fs');
const app = express();
//var matroska = require('matroska');

app.get('/video1', (req,res)=>{
    fs.readFile('./src/video1.mp4', function(err, data){
        res.writeHead(200, {'Content-Type': 'video/mp4'});
        res.write(data);
        res.end();
    });
});

app.get('/video1_img', (req,res)=>{
    fs.readFile('./src/video1_img.jpg',function(err,data){
        res.writeHead(200, {'Content-Type': 'image/jpg'});
        res.write(data);
        res.end();
    })
});


app.get('/video2', (req,res)=>{
    fs.readFile('./src/video2.mp4', function(err, data){
        res.writeHead(200, {'Content-Type': 'video/mp4'});
        res.write(data);
        res.end();
    });
});

app.get('/video2_img', (req,res)=>{
    fs.readFile('./src/video2_img.jpg',function(err,data){
        res.writeHead(200, {'Content-Type': 'image/jpg'});
        res.write(data);
        res.end();
    })
});



app.get('/video3', (req,res)=>{
    fs.readFile('./src/video3.mp4', function(err, data){
        res.writeHead(200, {'Content-Type': 'video/mp4'});
        res.write(data);
        res.end();
    });
});

app.get('/video3_img', (req,res)=>{
    fs.readFile('./src/video3_img.jpg',function(err,data){
        res.writeHead(200, {'Content-Type': 'image/jpg'});
        res.write(data);
        res.end();
    })
});


app.get('/video4', (req,res)=>{
    fs.readFile('./src/video4.mp4', function(err, data){
        res.writeHead(200, {'Content-Type': 'video/mp4'});
        res.write(data);
        res.end();
    });
});

app.get('/video4_img', (req,res)=>{
    fs.readFile('./src/video4_img.jpg',function(err,data){
        res.writeHead(200, {'Content-Type': 'image/jpg'});
        res.write(data);
        res.end();
    })
});


app.get('/video5', (req,res)=>{
    fs.readFile('./src/video5.mp4', function(err, data){
        res.writeHead(200, {'Content-Type': 'video/mp4'});
        res.write(data);
        res.end();
    });
});

app.get('/video5_img', (req,res)=>{
    fs.readFile('./src/video5_img.jpg',function(err,data){
        res.writeHead(200, {'Content-Type': 'image/jpg'});
        res.write(data);
        res.end();
    })
});


app.get('/video6', (req,res)=>{
    fs.readFile('./src/video6.mp4', function(err, data){
        res.writeHead(200, {'Content-Type': 'video/mp4'});
        res.write(data);
        res.end();
    });
});

app.get('/video6_img', (req,res)=>{
    fs.readFile('./src/video6_img.jpg',function(err,data){
        res.writeHead(200, {'Content-Type': 'image/jpg'});
        res.write(data);
        res.end();
    })
});

app.listen('9000',()=>{
    console.log('Server running at http://localhost:9000/');
});