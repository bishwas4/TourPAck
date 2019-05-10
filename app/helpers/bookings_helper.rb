module BookingsHelper
  def packages_options
    Package.all.map do |package|
      [
        package.title,
        package.id
      ]
    end
  end
end
