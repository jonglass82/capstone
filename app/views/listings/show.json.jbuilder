json.address @listing.address
json.description @listing.description
json.user_id @listing.user_id
json.city @listing.city
json.state @listing.state
json.zip_code @listing.zip_code
json.image_url rails_blob_url(@listing.image) if @listing.image.attachment

# json.start_date @date_range.start_date
# json.end_date @date_range.end_date
# json.listingid @date_range.listing_id