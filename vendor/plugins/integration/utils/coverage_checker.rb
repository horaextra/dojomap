%w(rubygems hpricot).each { |lib| require lib }

class CoverageChecker
  
  COVERAGE_FILE = "coverage/index.html"
  
  def initialize
    @doc = load_doc
    @coverage = load_coverage
  end
  
  def all_covered?
    @coverage == fully_covered
  end
  
  def fully_covered
    @fully_covered ||= @coverage.select { |line| line[:coverage] == '100.00%' }
  end
  
  def not_fully_covered
    @coverage - fully_covered
  end
  
  def load_doc
    Hpricot(File.read(COVERAGE_FILE))
  end
  
  def load_coverage
    (@doc/"//table[@id='report_table']/tbody/tr").map do |element|
      line = {
        :file => (element/"td[1]/a").inner_text,
        :coverage => (element/"td[4]/div/tt").inner_text
      }
    end
  end
  
end