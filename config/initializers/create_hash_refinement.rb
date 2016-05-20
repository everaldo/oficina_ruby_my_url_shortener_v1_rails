module CreateHashRefinement
  refine String do
    def create_hash
      Base64.encode64(Digest::SHA1.hexdigest(self))[0,6]
    end
  end
end
