import React from "react";
import "./HomeView.css";

export default function HomeView() {
  return (
  //<div>Your Weekly Resolutions</div>
<div className="HomeView">
  <div className="card">
  <img src="https://media.licdn.com/dms/image/C4E12AQEG3BGreIvU3A/article-cover_image-shrink_600_2000/0/1546290179083?e=2147483647&v=beta&t=L9qFm_-CzgLT1YKGv0WDOw1hxqOqgiGoa1rMooDLxuI" 
   class="card-img-top" className="object-fit-fill border rounded" alt="Take small steps to accomplish your goals"/>
  <div className="card-body">
    <h5 className="card-title">SMALL STEPS LEAD TO BIG CHANGES</h5>
    <p className="card-text">Accomplish your goals by planning all your daily resolutions for this week.</p>
    </div> 
  </div>
</div>
)
}