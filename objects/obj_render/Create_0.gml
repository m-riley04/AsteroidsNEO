horrifi_enable(global.vfx);

horrifi_bloom_set(true, 32, 0.40, 0.5);
horrifi_chromaticab_set(true, global.vfxChromatic);
horrifi_scanlines_set(true, global.vfxScanlines);
horrifi_vhs_set(true, global.vfxVHS);
horrifi_vignette_set(true, global.vfxVignette, 0.87);
horrifi_crt_set(false, 2);
horrifi_noise_set(true, global.vfxNoise);

function applySettings()
{
	horrifi_enable(global.vfx);

	horrifi_bloom_set(true, 32, 0.40, 0.5);
	horrifi_chromaticab_set(true, global.vfxChromatic);
	horrifi_scanlines_set(true, global.vfxScanlines);
	horrifi_vhs_set(true, global.vfxVHS);
	horrifi_vignette_set(true, global.vfxVignette, 0.87);
	horrifi_crt_set(false, 2);
	horrifi_noise_set(true, global.vfxNoise);
	
	horrifi_enable(global.vfx);
}