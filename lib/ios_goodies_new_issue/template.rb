# New issue template
module IosGoodiesNewIssue

TEMPLATE = %(
**Articles**

*


**Tools/Controls**

*

**Business**

*

**UI/UX**

*

**Videos**

*

**Credits**

*
)

  class << self
    def template_create(number)
      name = "Week#{number}.md"

      [name, TEMPLATE]
    end
  end
end
