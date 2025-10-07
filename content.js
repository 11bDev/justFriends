// Content script that redirects to Facebook friends feed
(function() {
  'use strict';

  // The URL path for the friends feed
  const FRIENDS_FEED_PATH = '/?filter=friends&sk=h_chr';
  
  // Check if we're on facebook.com
  const isFacebook = window.location.hostname.includes('facebook.com');
  
  if (!isFacebook) {
    return;
  }

  // Get current path and search params
  const currentPath = window.location.pathname;
  const currentSearch = window.location.search;
  const currentUrl = currentPath + currentSearch;

  // Don't redirect if we're already on the friends feed
  if (currentSearch.includes('filter=friends') && currentSearch.includes('sk=h_chr')) {
    return;
  }

  // Redirect to friends feed if on main page or homepage
  // This includes /, /home.php, or similar landing pages
  if (currentPath === '/' || 
      currentPath === '/home.php' || 
      currentPath === '' ||
      (currentPath === '/' && !currentSearch)) {
    
    // Redirect to friends feed
    window.location.href = FRIENDS_FEED_PATH;
  }
})();
