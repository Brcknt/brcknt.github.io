---
title: Caius Cosades
layout: post
author: Bryce Knight
image: mocherie.png
alttext: a creepy looking render of caius cosades
---

This slightly unnerving image was the result of an (as yet) unfinished project that I started as an exercise in asset creation, specifically video game assets.

I wanted to try going through the workflow of creating a single completed game-ready asset, meaning it had to have:

- A low polygon count
- Image textures, which need:
- Good UVs
- Clean topology
- A rigged skeleton

## References

I’m a big fan of The Elder Scrolls III: Morrowind, and like much of the game’s audience, have taken a liking to the character [Caius Cosades](https://en.uesp.net/wiki/Morrowind:Caius_Cosades). Some time back, as part of another project, I’d ripped assets from the game and reconstructed his model. This was difficult as Morrowind uses segmented body parts that all exist as their own individual models in the games file structure.

I decided to use Morrowind as a basis, aiming to replicate similar proportions and structure, in the hopes that I might eventually be able to use my work on this project in a mod for the game sometime in the future. I also just enjoy the style of the game. Texture resolution and polygon count weren’t a major concern as I would be able to easily downscale my work later to fit.

I also ripped the model for Altair from Assassin’s Creed as another reference point. I made notes on the polygon count for each, and the distribution across the different body parts.

## The Model

I box-modelled a basic human shape around my imported model, using a subdivision-surface modifier to non-destructively give me more geometry, then a shrinkwrap modifier to conform it to the original shape. I did the head on its own, first sculpting the shape I wanted, then retopologising manually after the fact. I used the multires modifier to keep my low-poly base mesh and still retain the high-poly sculpted version. Once I had the head done, I connected it to the main body.

### Sculpting

Now I had a low-poly base mesh, with the ability to work with as many levels of subdivision as I wanted, so I began to sculpt the details. The face was the most difficult part by far, and took a long time. I only got part-way through the rest of the body in the end, as I wasn’t happy with the topology around the groin, and fixing it would effectively mean restarting the entire project from scratch.

## The Result

For testing purposes, I had created a simple lighting setup and skin shader, which I used in the render. The hair is just a remeshed blob from the original model, and as a result, looks pretty bad, with various shading artefacts. I originally intended on using Blender’s new hair curve tools, but that proved to be too difficult and did not fit with the intended goal of the project.
