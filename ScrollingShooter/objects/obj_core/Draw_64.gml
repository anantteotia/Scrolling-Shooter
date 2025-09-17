/// obj_core : Draw GUI

// --- score ---
draw_set_color(c_white);
draw_text(20, 20, "Score: " + string(global.score));

// --- health bar rect ---
var bar_x1 = 20, bar_y1 = 40, bar_x2 = 220, bar_y2 = 60;

// --- read player health safely ---
var maxh = 100;
var hp   = 0;
if (instance_exists(obj_player)) {
    maxh = obj_player.max_health;
    hp   = clamp(obj_player.health, 0, maxh);
}

// --- background (empty) ---
draw_set_color(c_black);
draw_rectangle(bar_x1, bar_y1, bar_x2, bar_y2, false);

// --- filled amount (green → red) ---
var t      = (maxh > 0) ? (hp / maxh) : 0;                  // 1 = full, 0 = empty
var fill_x = bar_x1 + (bar_x2 - bar_x1) * t;
var col    = merge_color(c_red, c_green, t);
draw_set_color(col);
draw_rectangle(bar_x1, bar_y1, fill_x, bar_y2, false);

// --- border ---
draw_set_color(c_white);
draw_rectangle(bar_x1, bar_y1, bar_x2, bar_y2, true);

// --- game over overlay ---
if (global.game_over) {
    // dim screen
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);

    // centered text
    var cx = display_get_gui_width() * 0.5;
    var cy = 120;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);

    draw_text(cx, cy,      "GAME OVER");
    draw_text(cx, cy + 30, "Score: " + string(global.score));
    draw_text(cx, cy + 60, "Press R to Restart");

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
