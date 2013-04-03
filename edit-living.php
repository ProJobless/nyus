<?php include("header.php"); ?>
        <section class="edit-profile living">
        
            <div class="profile-header clearfix">
                    <!-- takes up the left column on larger screens, stacks on smaller screens -->
                    <div class="user-img"></div> <!-- .profile-photo -->
                    <div class="name">
                        <h4 data-icon="👤">Juan Miguel Marin</h4>
                    </div> <!-- .name -->
                        <a href="edit-photo.php" class="edit-btn" id="edit-photo" data-icon="📷"><span class="visuallyhidden">Edit Photo</span></a>
    
            </div> <!-- .profile-header -->

            <section class="edit profile-details">
                <h4>Living</h4>
                <form>
                    <label for="hometown">Hometown</label>
                        <input type="text" placeholder="e.g. Tongli, Jiangsu" name="hometown" id="hometown">
                    
                    <label for="current-city">Current City</label>
                        <input type="text" placeholder="e.g. London, UK" name="current-city" id="current-city">
                    <button name="cancel" value="Cancel" id="cancel" class="cancel">Cancel</button>
                    <input type="submit" name="submit" id="submit" value="Save">
                </form>
            </section>

        </section>
<?php include("footer.php"); ?>