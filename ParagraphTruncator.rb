
# Class: ParagraphTruncator
#
# Cuts off a paragraph that is too long and adds "...Read More".
#
# Attributes:
# @para         - String: A paragraph of at least 30 characters.
# @format_para  - String: The formatted version of @para
#
# Public Methods:
# #truncate

class ParagraphTruncator

  # Public: #initialize
  #
  # Creates an instance of the ParagraphTruncator object.
  #
  # Parameters: 
  # paragraph - String: A paragraph of at least 30 characters.
  # 
  # Returns: 
  # A ParagraphTruncator object.
  #
  # State Changes: 
  # @para becomes the paragraph string.
  
  def initialize(paragraph)
    @para = paragraph
    @format_para = ""
  end

  # Public: #truncate
  #
  # Cuts off a paragraph that is too long and adds "...Read More".
  #
  # Parameters: None
  #
  # Returns: 
  # format_para; if @para is too short, it simply returns @para
  #
  # State Changes: 
  # @format_para becomes a much shorter version of @para, with "...Read More" appended.

  def truncate
    if @para.length > 30
      @format_para = @para.byteslice(0, 30) + "...Read More"
    else
      @para
    end
  end #method

end #class