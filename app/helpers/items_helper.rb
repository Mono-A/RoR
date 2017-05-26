module ItemsHelper
  def operations_on_item(item)
    links = []
    links << link_to('edit',[ :edit, item ])
    links << link_to('complete','#')
    links << link_to('delete',item, :method => :delete,:confirm => 'do u realy wanna delete this one?')
    links.join(' | ')
  end
end
